; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_update_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_update_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick_usec = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@USER_HZ = common dso_local global i32 0, align 4
@NTP_SCALE_SHIFT = common dso_local global i32 0, align 4
@ntp_tick_adj = common dso_local global i64 0, align 8
@time_freq = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@tick_nsec = common dso_local global i32 0, align 4
@NTP_INTERVAL_FREQ = common dso_local global i32 0, align 4
@tick_length_base = common dso_local global i32 0, align 4
@tick_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ntp_update_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntp_update_frequency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @tick_usec, align 4
  %4 = load i32, i32* @NSEC_PER_USEC, align 4
  %5 = mul nsw i32 %3, %4
  %6 = load i32, i32* @USER_HZ, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %1, align 4
  %10 = load i64, i64* @ntp_tick_adj, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %1, align 4
  %15 = load i64, i64* @time_freq, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = call i32 @div_u64(i32 %20, i32 %21)
  %23 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* @tick_nsec, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @NTP_INTERVAL_FREQ, align 4
  %27 = call i32 @div_u64(i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @tick_length_base, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* @tick_length, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* @tick_length, align 4
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* @tick_length_base, align 4
  ret void
}

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
