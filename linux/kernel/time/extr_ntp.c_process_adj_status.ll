; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_process_adj_status.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_process_adj_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kernel_timex = type { i32 }

@time_status = common dso_local global i32 0, align 4
@STA_PLL = common dso_local global i32 0, align 4
@TIME_OK = common dso_local global i32 0, align 4
@time_state = common dso_local global i32 0, align 4
@STA_UNSYNC = common dso_local global i32 0, align 4
@TIME64_MAX = common dso_local global i32 0, align 4
@ntp_next_leap_sec = common dso_local global i32 0, align 4
@time_reftime = common dso_local global i32 0, align 4
@STA_RONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__kernel_timex*)* @process_adj_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_adj_status(%struct.__kernel_timex* %0) #0 {
  %2 = alloca %struct.__kernel_timex*, align 8
  store %struct.__kernel_timex* %0, %struct.__kernel_timex** %2, align 8
  %3 = load i32, i32* @time_status, align 4
  %4 = load i32, i32* @STA_PLL, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.__kernel_timex*, %struct.__kernel_timex** %2, align 8
  %9 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @STA_PLL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = load i32, i32* @TIME_OK, align 4
  store i32 %15, i32* @time_state, align 4
  %16 = load i32, i32* @STA_UNSYNC, align 4
  store i32 %16, i32* @time_status, align 4
  %17 = load i32, i32* @TIME64_MAX, align 4
  store i32 %17, i32* @ntp_next_leap_sec, align 4
  %18 = call i32 (...) @pps_reset_freq_interval()
  br label %19

19:                                               ; preds = %14, %7, %1
  %20 = load i32, i32* @time_status, align 4
  %21 = load i32, i32* @STA_PLL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.__kernel_timex*, %struct.__kernel_timex** %2, align 8
  %26 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STA_PLL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (...) @__ktime_get_real_seconds()
  store i32 %32, i32* @time_reftime, align 4
  br label %33

33:                                               ; preds = %31, %24, %19
  %34 = load i32, i32* @STA_RONLY, align 4
  %35 = load i32, i32* @time_status, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* @time_status, align 4
  %37 = load %struct.__kernel_timex*, %struct.__kernel_timex** %2, align 8
  %38 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STA_RONLY, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* @time_status, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @time_status, align 4
  ret void
}

declare dso_local i32 @pps_reset_freq_interval(...) #1

declare dso_local i32 @__ktime_get_real_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
