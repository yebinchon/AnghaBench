; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_hung_task.c_check_hung_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_hung_task.c_check_hung_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PF_FROZEN = common dso_local global i32 0, align 4
@PF_FREEZER_SKIP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@sysctl_hung_task_panic = common dso_local global i64 0, align 8
@hung_task_show_lock = common dso_local global i32 0, align 4
@hung_task_call_panic = common dso_local global i32 0, align 4
@sysctl_hung_task_warnings = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"INFO: task %s:%d blocked for more than %ld seconds.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"      %s %s %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"\22echo 0 > /proc/sys/kernel/hung_task_timeout_secs\22 disables this message.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64)* @check_hung_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_hung_task(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PF_FROZEN, align 4
  %17 = load i32, i32* @PF_FREEZER_SKIP, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %104

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %104

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @jiffies, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  br label %104

44:                                               ; preds = %31
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @HZ, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %47, %50
  %52 = call i64 @time_is_after_jiffies(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %104

55:                                               ; preds = %44
  %56 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %57 = call i32 @trace_sched_process_hang(%struct.task_struct* %56)
  %58 = load i64, i64* @sysctl_hung_task_panic, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (...) @console_verbose()
  store i32 1, i32* @hung_task_show_lock, align 4
  store i32 1, i32* @hung_task_call_panic, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i64, i64* @sysctl_hung_task_warnings, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = load i64, i64* @sysctl_hung_task_warnings, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* @sysctl_hung_task_warnings, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* @sysctl_hung_task_warnings, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* @jiffies, align 8
  %79 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 %78, %81
  %83 = load i64, i64* @HZ, align 8
  %84 = udiv i64 %82, %83
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77, i64 %84)
  %86 = call i32 (...) @print_tainted()
  %87 = call %struct.TYPE_2__* (...) @init_utsname()
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_2__* (...) @init_utsname()
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @strcspn(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %94 = trunc i64 %93 to i32
  %95 = call %struct.TYPE_2__* (...) @init_utsname()
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89, i32 %94, i32 %97)
  %99 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %101 = call i32 @sched_show_task(%struct.task_struct* %100)
  store i32 1, i32* @hung_task_show_lock, align 4
  br label %102

102:                                              ; preds = %71, %62
  %103 = call i32 (...) @touch_nmi_watchdog()
  br label %104

104:                                              ; preds = %102, %54, %37, %30, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @trace_sched_process_hang(%struct.task_struct*) #1

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

declare dso_local i64 @strcspn(i32, i8*) #1

declare dso_local i32 @sched_show_task(%struct.task_struct*) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
