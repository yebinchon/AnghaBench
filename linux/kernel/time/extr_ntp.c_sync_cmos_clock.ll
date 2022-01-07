; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_sync_cmos_clock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_sync_cmos_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i32 }

@sync_cmos_clock.no_cmos = internal global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@CONFIG_GENERIC_CMOS_UPDATE = common dso_local global i32 0, align 4
@persistent_clock_is_local = common dso_local global i64 0, align 8
@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sync_cmos_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_cmos_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec64, align 4
  %3 = alloca %struct.timespec64, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @EPROTO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @NSEC_PER_SEC, align 4
  %9 = sdiv i32 %8, 2
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @CONFIG_GENERIC_CMOS_UPDATE, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %51

15:                                               ; preds = %0
  %16 = load i32, i32* @sync_cmos_clock.no_cmos, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %51

19:                                               ; preds = %15
  %20 = call i32 @ktime_get_real_ts64(%struct.timespec64* %2)
  %21 = load i64, i64* %5, align 8
  %22 = mul nsw i64 -1, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @rtc_tv_nsec_ok(i32 %23, %struct.timespec64* %3, %struct.timespec64* %2)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load i64, i64* @persistent_clock_is_local, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %31 = mul nsw i32 %30, 60
  %32 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @update_persistent_clock64(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* @sync_cmos_clock.no_cmos, align 4
  store i32 0, i32* %1, align 4
  br label %51

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sched_sync_hw_clock(i32 %49, i64 %46, i32 %47)
  store i32 1, i32* %1, align 4
  br label %51

51:                                               ; preds = %45, %43, %18, %14
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i64 @rtc_tv_nsec_ok(i32, %struct.timespec64*, %struct.timespec64*) #1

declare dso_local i32 @update_persistent_clock64(i32) #1

declare dso_local i32 @sched_sync_hw_clock(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
