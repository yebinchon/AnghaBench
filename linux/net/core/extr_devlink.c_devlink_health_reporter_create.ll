; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32, i32, i32, i32, i64, %struct.devlink*, %struct.devlink_health_reporter_ops*, i8* }
%struct.devlink = type { i32, i32 }
%struct.devlink_health_reporter_ops = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devlink_health_reporter* @devlink_health_reporter_create(%struct.devlink* %0, %struct.devlink_health_reporter_ops* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_health_reporter_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.devlink_health_reporter*, align 8
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store %struct.devlink_health_reporter_ops* %1, %struct.devlink_health_reporter_ops** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.devlink*, %struct.devlink** %6, align 8
  %13 = getelementptr inbounds %struct.devlink, %struct.devlink* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.devlink*, %struct.devlink** %6, align 8
  %16 = load %struct.devlink_health_reporter_ops*, %struct.devlink_health_reporter_ops** %7, align 8
  %17 = getelementptr inbounds %struct.devlink_health_reporter_ops, %struct.devlink_health_reporter_ops* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @devlink_health_reporter_find_by_name(%struct.devlink* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.devlink_health_reporter* @ERR_PTR(i32 %23)
  store %struct.devlink_health_reporter* %24, %struct.devlink_health_reporter** %11, align 8
  br label %93

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.devlink_health_reporter_ops*, %struct.devlink_health_reporter_ops** %7, align 8
  %30 = getelementptr inbounds %struct.devlink_health_reporter_ops, %struct.devlink_health_reporter_ops* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.devlink_health_reporter_ops*, %struct.devlink_health_reporter_ops** %7, align 8
  %44 = getelementptr inbounds %struct.devlink_health_reporter_ops, %struct.devlink_health_reporter_ops* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %39
  %49 = phi i1 [ false, %39 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %34
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.devlink_health_reporter* @ERR_PTR(i32 %55)
  store %struct.devlink_health_reporter* %56, %struct.devlink_health_reporter** %11, align 8
  br label %93

57:                                               ; preds = %48
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.devlink_health_reporter* @kzalloc(i32 48, i32 %58)
  store %struct.devlink_health_reporter* %59, %struct.devlink_health_reporter** %11, align 8
  %60 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %61 = icmp ne %struct.devlink_health_reporter* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.devlink_health_reporter* @ERR_PTR(i32 %64)
  store %struct.devlink_health_reporter* %65, %struct.devlink_health_reporter** %11, align 8
  br label %93

66:                                               ; preds = %57
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %69 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load %struct.devlink_health_reporter_ops*, %struct.devlink_health_reporter_ops** %7, align 8
  %71 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %72 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %71, i32 0, i32 6
  store %struct.devlink_health_reporter_ops* %70, %struct.devlink_health_reporter_ops** %72, align 8
  %73 = load %struct.devlink*, %struct.devlink** %6, align 8
  %74 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %75 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %74, i32 0, i32 5
  store %struct.devlink* %73, %struct.devlink** %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %78 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %81 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %83 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %82, i32 0, i32 3
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %86 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %85, i32 0, i32 2
  %87 = call i32 @refcount_set(i32* %86, i32 1)
  %88 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %89 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %88, i32 0, i32 1
  %90 = load %struct.devlink*, %struct.devlink** %6, align 8
  %91 = getelementptr inbounds %struct.devlink, %struct.devlink* %90, i32 0, i32 1
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  br label %93

93:                                               ; preds = %66, %62, %53, %21
  %94 = load %struct.devlink*, %struct.devlink** %6, align 8
  %95 = getelementptr inbounds %struct.devlink, %struct.devlink* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  ret %struct.devlink_health_reporter* %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @devlink_health_reporter_find_by_name(%struct.devlink*, i32) #1

declare dso_local %struct.devlink_health_reporter* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.devlink_health_reporter* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
