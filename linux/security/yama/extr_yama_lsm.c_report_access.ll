; ModuleID = '/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_report_access.c'
source_filename = "/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_report_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.task_struct = type { i32, i32, i32 }
%struct.access_report_info = type { i8*, i32, %struct.task_struct*, %struct.task_struct* }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ptrace %s of \22%s\22[%d] was attempted by \22%s\22[%d]\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__report_access = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"report_access called from exiting task\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.task_struct*, %struct.task_struct*)* @report_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_access(i8* %0, %struct.task_struct* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.access_report_info*, align 8
  %8 = alloca [4 x i8], align 1
  store i8* %0, i8** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 2
  %11 = call i32 @assert_spin_locked(i32* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PF_KTHREAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = call i32 @get_task_comm(i8* %26, %struct.task_struct* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_notice_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22, i32 %25, i32 %28, i32 %31)
  br label %71

33:                                               ; preds = %3
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.access_report_info* @kmalloc(i32 32, i32 %34)
  store %struct.access_report_info* %35, %struct.access_report_info** %7, align 8
  %36 = load %struct.access_report_info*, %struct.access_report_info** %7, align 8
  %37 = icmp ne %struct.access_report_info* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %71

39:                                               ; preds = %33
  %40 = load %struct.access_report_info*, %struct.access_report_info** %7, align 8
  %41 = getelementptr inbounds %struct.access_report_info, %struct.access_report_info* %40, i32 0, i32 1
  %42 = load i32, i32* @__report_access, align 4
  %43 = call i32 @init_task_work(i32* %41, i32 %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %45 = call i32 @get_task_struct(%struct.task_struct* %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %47 = call i32 @get_task_struct(%struct.task_struct* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.access_report_info*, %struct.access_report_info** %7, align 8
  %50 = getelementptr inbounds %struct.access_report_info, %struct.access_report_info* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %52 = load %struct.access_report_info*, %struct.access_report_info** %7, align 8
  %53 = getelementptr inbounds %struct.access_report_info, %struct.access_report_info* %52, i32 0, i32 3
  store %struct.task_struct* %51, %struct.task_struct** %53, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %55 = load %struct.access_report_info*, %struct.access_report_info** %7, align 8
  %56 = getelementptr inbounds %struct.access_report_info, %struct.access_report_info* %55, i32 0, i32 2
  store %struct.task_struct* %54, %struct.task_struct** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %58 = load %struct.access_report_info*, %struct.access_report_info** %7, align 8
  %59 = getelementptr inbounds %struct.access_report_info, %struct.access_report_info* %58, i32 0, i32 1
  %60 = call i64 @task_work_add(%struct.TYPE_3__* %57, i32* %59, i32 1)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %39
  br label %71

63:                                               ; preds = %39
  %64 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = call i32 @put_task_struct(%struct.task_struct* %65)
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = call i32 @put_task_struct(%struct.task_struct* %67)
  %69 = load %struct.access_report_info*, %struct.access_report_info** %7, align 8
  %70 = call i32 @kfree(%struct.access_report_info* %69)
  br label %71

71:                                               ; preds = %63, %62, %38, %18
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @pr_notice_ratelimited(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_task_comm(i8*, %struct.task_struct*) #1

declare dso_local %struct.access_report_info* @kmalloc(i32, i32) #1

declare dso_local i32 @init_task_work(i32*, i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i64 @task_work_add(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.access_report_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
