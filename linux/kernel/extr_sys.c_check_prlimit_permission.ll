; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_check_prlimit_permission.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_check_prlimit_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i32, i32, i32, i32, i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @check_prlimit_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_prlimit_permission(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %9, %struct.cred** %6, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = icmp eq %struct.task_struct* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = call %struct.cred* @__task_cred(%struct.task_struct* %15)
  store %struct.cred* %16, %struct.cred** %7, align 8
  %17 = load %struct.cred*, %struct.cred** %6, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cred*, %struct.cred** %7, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @uid_eq(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %14
  %26 = load %struct.cred*, %struct.cred** %6, align 8
  %27 = getelementptr inbounds %struct.cred, %struct.cred* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cred*, %struct.cred** %7, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @uid_eq(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %25
  %35 = load %struct.cred*, %struct.cred** %6, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cred*, %struct.cred** %7, align 8
  %39 = getelementptr inbounds %struct.cred, %struct.cred* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @uid_eq(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %34
  %44 = load %struct.cred*, %struct.cred** %6, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cred*, %struct.cred** %7, align 8
  %48 = getelementptr inbounds %struct.cred, %struct.cred* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @gid_eq(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %43
  %53 = load %struct.cred*, %struct.cred** %6, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cred*, %struct.cred** %7, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @gid_eq(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.cred*, %struct.cred** %6, align 8
  %63 = getelementptr inbounds %struct.cred, %struct.cred* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cred*, %struct.cred** %7, align 8
  %66 = getelementptr inbounds %struct.cred, %struct.cred* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @gid_eq(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %61, %52, %43, %34, %25, %14
  %71 = phi i1 [ false, %52 ], [ false, %43 ], [ false, %34 ], [ false, %25 ], [ false, %14 ], [ %69, %61 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.cred*, %struct.cred** %7, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %80 = call i32 @ns_capable(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %90

85:                                               ; preds = %75, %70
  %86 = load %struct.cred*, %struct.cred** %6, align 8
  %87 = load %struct.cred*, %struct.cred** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @security_task_prlimit(%struct.cred* %86, %struct.cred* %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %82, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @security_task_prlimit(%struct.cred*, %struct.cred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
