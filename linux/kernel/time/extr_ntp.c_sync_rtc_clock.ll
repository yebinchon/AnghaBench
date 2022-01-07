; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_sync_rtc_clock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_ntp.c_sync_rtc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i32 }

@CONFIG_RTC_SYSTOHC = common dso_local global i32 0, align 4
@persistent_clock_is_local = common dso_local global i64 0, align 8
@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sync_rtc_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_rtc_clock() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timespec64, align 4
  %3 = alloca %struct.timespec64, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @CONFIG_RTC_SYSTOHC, align 4
  %6 = call i32 @IS_ENABLED(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %36

9:                                                ; preds = %0
  %10 = call i32 @ktime_get_real_ts64(%struct.timespec64* %3)
  %11 = bitcast %struct.timespec64* %2 to i8*
  %12 = bitcast %struct.timespec64* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load i64, i64* @persistent_clock_is_local, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %17 = mul nsw i32 %16, 60
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %9
  %22 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rtc_set_ntp_time(i32 %23, i64* %1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %36

30:                                               ; preds = %21
  %31 = load i64, i64* %1, align 8
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sched_sync_hw_clock(i32 %34, i64 %31, i32 %32)
  br label %36

36:                                               ; preds = %30, %29, %8
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtc_set_ntp_time(i32, i64*) #1

declare dso_local i32 @sched_sync_hw_clock(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
