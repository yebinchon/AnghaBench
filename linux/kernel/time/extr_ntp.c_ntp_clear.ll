; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_clear.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_adjust = common dso_local global i64 0, align 8
@STA_UNSYNC = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@NTP_PHASE_LIMIT = common dso_local global i8* null, align 8
@time_maxerror = common dso_local global i8* null, align 8
@time_esterror = common dso_local global i8* null, align 8
@tick_length_base = common dso_local global i32 0, align 4
@tick_length = common dso_local global i32 0, align 4
@time_offset = common dso_local global i64 0, align 8
@TIME64_MAX = common dso_local global i32 0, align 4
@ntp_next_leap_sec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntp_clear() #0 {
  store i64 0, i64* @time_adjust, align 8
  %1 = load i32, i32* @STA_UNSYNC, align 4
  %2 = load i32, i32* @time_status, align 4
  %3 = or i32 %2, %1
  store i32 %3, i32* @time_status, align 4
  %4 = load i8*, i8** @NTP_PHASE_LIMIT, align 8
  store i8* %4, i8** @time_maxerror, align 8
  %5 = load i8*, i8** @NTP_PHASE_LIMIT, align 8
  store i8* %5, i8** @time_esterror, align 8
  %6 = call i32 (...) @ntp_update_frequency()
  %7 = load i32, i32* @tick_length_base, align 4
  store i32 %7, i32* @tick_length, align 4
  store i64 0, i64* @time_offset, align 8
  %8 = load i32, i32* @TIME64_MAX, align 4
  store i32 %8, i32* @ntp_next_leap_sec, align 4
  %9 = call i32 (...) @pps_clear()
  ret void
}

declare dso_local i32 @ntp_update_frequency(...) #1

declare dso_local i32 @pps_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
