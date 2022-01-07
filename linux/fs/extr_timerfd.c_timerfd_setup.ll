; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_timerfd.c_timerfd_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_timerfd.c_timerfd_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timerfd_ctx = type { i32, i32, %struct.TYPE_5__, i8*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.itimerspec64 = type { i32, i32 }

@TFD_TIMER_ABSTIME = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@CLOCK_REALTIME_ALARM = common dso_local global i32 0, align 4
@ALARM_REALTIME = common dso_local global i32 0, align 4
@ALARM_BOOTTIME = common dso_local global i32 0, align 4
@timerfd_alarmproc = common dso_local global i32 0, align 4
@timerfd_tmrproc = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@TFD_SETTIME_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timerfd_ctx*, i32, %struct.itimerspec64*)* @timerfd_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerfd_setup(%struct.timerfd_ctx* %0, i32 %1, %struct.itimerspec64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timerfd_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.itimerspec64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.timerfd_ctx* %0, %struct.timerfd_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.itimerspec64* %2, %struct.itimerspec64** %7, align 8
  %11 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TFD_TIMER_ABSTIME, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @HRTIMER_MODE_REL, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %8, align 4
  %24 = load %struct.itimerspec64*, %struct.itimerspec64** %7, align 8
  %25 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @timespec64_to_ktime(i32 %26)
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.itimerspec64*, %struct.itimerspec64** %7, align 8
  %34 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @timespec64_to_ktime(i32 %35)
  %37 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %40 = call i64 @isalarm(%struct.timerfd_ctx* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %22
  %43 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CLOCK_REALTIME_ALARM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ALARM_REALTIME, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @ALARM_BOOTTIME, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load i32, i32* @timerfd_alarmproc, align 4
  %58 = call i32 @alarm_init(i32* %45, i32 %56, i32 %57)
  br label %76

59:                                               ; preds = %22
  %60 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @hrtimer_init(%struct.TYPE_6__* %62, i32 %63, i32 %64)
  %66 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @hrtimer_set_expires(%struct.TYPE_6__* %68, i64 %69)
  %71 = load i32, i32* @timerfd_tmrproc, align 4
  %72 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  br label %76

76:                                               ; preds = %59, %55
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %81 = call i64 @isalarm(%struct.timerfd_ctx* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @TFD_TIMER_ABSTIME, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @alarm_start(i32* %91, i64 %92)
  br label %100

94:                                               ; preds = %83
  %95 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @alarm_start_relative(i32* %97, i64 %98)
  br label %100

100:                                              ; preds = %94, %88
  br label %108

101:                                              ; preds = %79
  %102 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @hrtimer_start(%struct.TYPE_6__* %104, i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %101, %100
  %109 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %110 = call i64 @timerfd_canceled(%struct.timerfd_ctx* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ECANCELED, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %122

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %76
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @TFD_SETTIME_FLAGS, align 4
  %119 = and i32 %117, %118
  %120 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %5, align 8
  %121 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %112
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i8* @timespec64_to_ktime(i32) #1

declare dso_local i64 @isalarm(%struct.timerfd_ctx*) #1

declare dso_local i32 @alarm_init(i32*, i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @alarm_start(i32*, i64) #1

declare dso_local i32 @alarm_start_relative(i32*, i64) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @timerfd_canceled(%struct.timerfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
