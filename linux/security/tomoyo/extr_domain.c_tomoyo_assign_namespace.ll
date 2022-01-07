; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_assign_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_assign_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_policy_namespace = type { i8* }

@TOMOYO_EXEC_TMPSIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@tomoyo_policy_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tomoyo_policy_namespace* @tomoyo_assign_namespace(i8* %0) #0 {
  %2 = alloca %struct.tomoyo_policy_namespace*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tomoyo_policy_namespace*, align 8
  %5 = alloca %struct.tomoyo_policy_namespace*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %6, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 32
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ false, %10 ], [ %20, %15 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %10

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.tomoyo_policy_namespace* @tomoyo_find_namespace(i8* %27, i32 %28)
  store %struct.tomoyo_policy_namespace* %29, %struct.tomoyo_policy_namespace** %4, align 8
  %30 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %4, align 8
  %31 = icmp ne %struct.tomoyo_policy_namespace* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %4, align 8
  store %struct.tomoyo_policy_namespace* %33, %struct.tomoyo_policy_namespace** %2, align 8
  br label %93

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TOMOYO_EXEC_TMPSIZE, align 4
  %37 = sub nsw i32 %36, 10
  %38 = icmp uge i32 %35, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @tomoyo_domain_def(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %34
  store %struct.tomoyo_policy_namespace* null, %struct.tomoyo_policy_namespace** %2, align 8
  br label %93

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = add i64 8, %46
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call %struct.tomoyo_policy_namespace* @kzalloc(i32 %49, i32 %50)
  store %struct.tomoyo_policy_namespace* %51, %struct.tomoyo_policy_namespace** %5, align 8
  %52 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %53 = icmp ne %struct.tomoyo_policy_namespace* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store %struct.tomoyo_policy_namespace* null, %struct.tomoyo_policy_namespace** %2, align 8
  br label %93

55:                                               ; preds = %44
  %56 = call i64 @mutex_lock_interruptible(i32* @tomoyo_policy_lock)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %89

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.tomoyo_policy_namespace* @tomoyo_find_namespace(i8* %60, i32 %61)
  store %struct.tomoyo_policy_namespace* %62, %struct.tomoyo_policy_namespace** %4, align 8
  %63 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %4, align 8
  %64 = icmp ne %struct.tomoyo_policy_namespace* %63, null
  br i1 %64, label %87, label %65

65:                                               ; preds = %59
  %66 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %67 = call i64 @tomoyo_memory_ok(%struct.tomoyo_policy_namespace* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %71 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %70, i64 1
  %72 = bitcast %struct.tomoyo_policy_namespace* %71 to i8*
  store i8* %72, i8** %8, align 8
  %73 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  store %struct.tomoyo_policy_namespace* %73, %struct.tomoyo_policy_namespace** %4, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @memmove(i8* %74, i8* %75, i32 %76)
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %84 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %86 = call i32 @tomoyo_init_policy_namespace(%struct.tomoyo_policy_namespace* %85)
  store %struct.tomoyo_policy_namespace* null, %struct.tomoyo_policy_namespace** %5, align 8
  br label %87

87:                                               ; preds = %69, %65, %59
  %88 = call i32 @mutex_unlock(i32* @tomoyo_policy_lock)
  br label %89

89:                                               ; preds = %87, %58
  %90 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %91 = call i32 @kfree(%struct.tomoyo_policy_namespace* %90)
  %92 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %4, align 8
  store %struct.tomoyo_policy_namespace* %92, %struct.tomoyo_policy_namespace** %2, align 8
  br label %93

93:                                               ; preds = %89, %54, %43, %32
  %94 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %2, align 8
  ret %struct.tomoyo_policy_namespace* %94
}

declare dso_local %struct.tomoyo_policy_namespace* @tomoyo_find_namespace(i8*, i32) #1

declare dso_local i32 @tomoyo_domain_def(i8*) #1

declare dso_local %struct.tomoyo_policy_namespace* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @tomoyo_memory_ok(%struct.tomoyo_policy_namespace*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @tomoyo_init_policy_namespace(%struct.tomoyo_policy_namespace*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.tomoyo_policy_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
