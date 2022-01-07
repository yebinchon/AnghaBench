; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_permission.c_key_task_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_permission.c_key_task_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32, i32 }
%struct.key = type { i32, i32, i32 }

@KEY_GRP_ALL = common dso_local global i32 0, align 4
@KEY_NEED_ALL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_task_permission(i32 %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.key* @key_ref_to_ptr(i32 %11)
  store %struct.key* %12, %struct.key** %8, align 8
  %13 = load %struct.key*, %struct.key** %8, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cred*, %struct.cred** %6, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @uid_eq(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.key*, %struct.key** %8, align 8
  %23 = getelementptr inbounds %struct.key, %struct.key* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 16
  store i32 %25, i32* %9, align 4
  br label %73

26:                                               ; preds = %3
  %27 = load %struct.key*, %struct.key** %8, align 8
  %28 = getelementptr inbounds %struct.key, %struct.key* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @gid_valid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %26
  %33 = load %struct.key*, %struct.key** %8, align 8
  %34 = getelementptr inbounds %struct.key, %struct.key* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KEY_GRP_ALL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %32
  %40 = load %struct.key*, %struct.key** %8, align 8
  %41 = getelementptr inbounds %struct.key, %struct.key* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cred*, %struct.cred** %6, align 8
  %44 = getelementptr inbounds %struct.cred, %struct.cred* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @gid_eq(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.key*, %struct.key** %8, align 8
  %50 = getelementptr inbounds %struct.key, %struct.key* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  store i32 %52, i32* %9, align 4
  br label %73

53:                                               ; preds = %39
  %54 = load %struct.cred*, %struct.cred** %6, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.key*, %struct.key** %8, align 8
  %58 = getelementptr inbounds %struct.key, %struct.key* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @groups_search(i32 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.key*, %struct.key** %8, align 8
  %65 = getelementptr inbounds %struct.key, %struct.key* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  store i32 %67, i32* %9, align 4
  br label %73

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %32, %26
  %70 = load %struct.key*, %struct.key** %8, align 8
  %71 = getelementptr inbounds %struct.key, %struct.key* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %63, %48, %21
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @is_key_possessed(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.key*, %struct.key** %8, align 8
  %79 = getelementptr inbounds %struct.key, %struct.key* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 24
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %77, %73
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @KEY_NEED_ALL, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @EACCES, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %101

96:                                               ; preds = %84
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.cred*, %struct.cred** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @security_key_permission(i32 %97, %struct.cred* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_valid(i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @groups_search(i32, i32) #1

declare dso_local i64 @is_key_possessed(i32) #1

declare dso_local i32 @security_key_permission(i32, %struct.cred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
