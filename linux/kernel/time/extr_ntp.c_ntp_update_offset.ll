; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_update_offset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_ntp_update_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_status = common dso_local global i32 0, align 4
@STA_PLL = common dso_local global i32 0, align 4
@STA_NANO = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@MAXPHASE = common dso_local global i32 0, align 4
@time_reftime = common dso_local global i64 0, align 8
@STA_FREQHOLD = common dso_local global i32 0, align 4
@SHIFT_PLL = common dso_local global i32 0, align 4
@time_constant = common dso_local global i32 0, align 4
@NTP_SCALE_SHIFT = common dso_local global i32 0, align 4
@time_freq = common dso_local global i64 0, align 8
@MAXFREQ_SCALED = common dso_local global i32 0, align 4
@NTP_INTERVAL_FREQ = common dso_local global i32 0, align 4
@time_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ntp_update_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntp_update_offset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @time_status, align 4
  %7 = load i32, i32* @STA_PLL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %94

11:                                               ; preds = %1
  %12 = load i32, i32* @time_status, align 4
  %13 = load i32, i32* @STA_NANO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = load i32, i32* @USEC_PER_SEC, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i32, i32* @USEC_PER_SEC, align 4
  %21 = call i64 @clamp(i64 %17, i32 %19, i32 %20)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* @NSEC_PER_USEC, align 8
  %23 = load i64, i64* %2, align 8
  %24 = mul nsw i64 %23, %22
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i64, i64* %2, align 8
  %27 = load i32, i32* @MAXPHASE, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32, i32* @MAXPHASE, align 4
  %30 = call i64 @clamp(i64 %26, i32 %28, i32 %29)
  store i64 %30, i64* %2, align 8
  %31 = call i64 (...) @__ktime_get_real_seconds()
  %32 = load i64, i64* @time_reftime, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %5, align 8
  %34 = load i32, i32* @time_status, align 4
  %35 = load i32, i32* @STA_FREQHOLD, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %39, %25
  %41 = call i64 (...) @__ktime_get_real_seconds()
  store i64 %41, i64* @time_reftime, align 8
  %42 = load i64, i64* %2, align 8
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @ntp_update_offset_fll(i64 %43, i64 %44)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @SHIFT_PLL, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @time_constant, align 4
  %50 = add nsw i32 %48, %49
  %51 = shl i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = icmp sgt i64 %46, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %40
  %58 = load i32, i32* @SHIFT_PLL, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @time_constant, align 4
  %61 = add nsw i32 %59, %60
  %62 = shl i32 1, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %57, %40
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = mul nsw i64 %65, %66
  %68 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %69 = load i32, i32* @SHIFT_PLL, align 4
  %70 = add nsw i32 %69, 2
  %71 = load i32, i32* @time_constant, align 4
  %72 = add nsw i32 %70, %71
  %73 = mul nsw i32 2, %72
  %74 = sub nsw i32 %68, %73
  %75 = zext i32 %74 to i64
  %76 = shl i64 %67, %75
  %77 = load i64, i64* %3, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @time_freq, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* @MAXFREQ_SCALED, align 4
  %83 = call i64 @min(i64 %81, i32 %82)
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %3, align 8
  %85 = load i32, i32* @MAXFREQ_SCALED, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i64 @max(i64 %84, i32 %86)
  store i64 %87, i64* @time_freq, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %90 = zext i32 %89 to i64
  %91 = shl i64 %88, %90
  %92 = load i32, i32* @NTP_INTERVAL_FREQ, align 4
  %93 = call i32 @div_s64(i64 %91, i32 %92)
  store i32 %93, i32* @time_offset, align 4
  br label %94

94:                                               ; preds = %64, %10
  ret void
}

declare dso_local i64 @clamp(i64, i32, i32) #1

declare dso_local i64 @__ktime_get_real_seconds(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ntp_update_offset_fll(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @div_s64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
