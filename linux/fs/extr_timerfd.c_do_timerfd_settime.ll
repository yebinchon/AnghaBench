; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_timerfd.c_do_timerfd_settime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_timerfd.c_do_timerfd_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec64 = type { i8*, i8* }
%struct.fd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.timerfd_ctx* }
%struct.timerfd_ctx = type { %struct.TYPE_8__, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@TFD_SETTIME_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_WAKE_ALARM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @do_timerfd_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_timerfd_settime(i32 %0, i32 %1, %struct.itimerspec64* %2, %struct.itimerspec64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerspec64*, align 8
  %9 = alloca %struct.itimerspec64*, align 8
  %10 = alloca %struct.fd, align 8
  %11 = alloca %struct.timerfd_ctx*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.itimerspec64* %2, %struct.itimerspec64** %8, align 8
  store %struct.itimerspec64* %3, %struct.itimerspec64** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @TFD_SETTIME_FLAGS, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %20 = call i32 @itimerspec64_valid(%struct.itimerspec64* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %153

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @timerfd_fget(i32 %26, %struct.fd* %10)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %153

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %35, align 8
  store %struct.timerfd_ctx* %36, %struct.timerfd_ctx** %11, align 8
  %37 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %38 = call i64 @isalarm(%struct.timerfd_ctx* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i32, i32* @CAP_WAKE_ALARM, align 4
  %42 = call i32 @capable(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @fdput(%struct.TYPE_6__* %46)
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %153

50:                                               ; preds = %40, %32
  %51 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @timerfd_setup_cancel(%struct.timerfd_ctx* %51, i32 %52)
  br label %54

54:                                               ; preds = %97, %50
  %55 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %56 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_irq(i32* %57)
  %59 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %60 = call i64 @isalarm(%struct.timerfd_ctx* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %64 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i64 @alarm_try_to_cancel(%struct.TYPE_9__* %65)
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %98

69:                                               ; preds = %62
  br label %78

70:                                               ; preds = %54
  %71 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %72 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i64 @hrtimer_try_to_cancel(i32* %73)
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %98

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %69
  %79 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %80 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %84 = call i64 @isalarm(%struct.timerfd_ctx* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %88 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i32 @hrtimer_cancel_wait_running(i32* %90)
  br label %97

92:                                               ; preds = %78
  %93 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %94 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = call i32 @hrtimer_cancel_wait_running(i32* %95)
  br label %97

97:                                               ; preds = %92, %86
  br label %54

98:                                               ; preds = %76, %68
  %99 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %100 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %98
  %104 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %105 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %110 = call i64 @isalarm(%struct.timerfd_ctx* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %114 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %117 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @alarm_forward_now(%struct.TYPE_9__* %115, i64 %118)
  br label %128

120:                                              ; preds = %108
  %121 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %122 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %125 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @hrtimer_forward_now(i32* %123, i64 %126)
  br label %128

128:                                              ; preds = %120, %112
  br label %129

129:                                              ; preds = %128, %103, %98
  %130 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %131 = call i64 @timerfd_get_remaining(%struct.timerfd_ctx* %130)
  %132 = call i8* @ktime_to_timespec64(i64 %131)
  %133 = load %struct.itimerspec64*, %struct.itimerspec64** %9, align 8
  %134 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %136 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @ktime_to_timespec64(i64 %137)
  %139 = load %struct.itimerspec64*, %struct.itimerspec64** %9, align 8
  %140 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.itimerspec64*, %struct.itimerspec64** %8, align 8
  %144 = call i32 @timerfd_setup(%struct.timerfd_ctx* %141, i32 %142, %struct.itimerspec64* %143)
  store i32 %144, i32* %12, align 4
  %145 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %11, align 8
  %146 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_irq(i32* %147)
  %149 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = call i32 @fdput(%struct.TYPE_6__* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %129, %44, %30, %22
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @itimerspec64_valid(%struct.itimerspec64*) #1

declare dso_local i32 @timerfd_fget(i32, %struct.fd*) #1

declare dso_local i64 @isalarm(%struct.timerfd_ctx*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_6__*) #1

declare dso_local i32 @timerfd_setup_cancel(%struct.timerfd_ctx*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @alarm_try_to_cancel(%struct.TYPE_9__*) #1

declare dso_local i64 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hrtimer_cancel_wait_running(i32*) #1

declare dso_local i32 @alarm_forward_now(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @hrtimer_forward_now(i32*, i64) #1

declare dso_local i8* @ktime_to_timespec64(i64) #1

declare dso_local i64 @timerfd_get_remaining(%struct.timerfd_ctx*) #1

declare dso_local i32 @timerfd_setup(%struct.timerfd_ctx*, i32, %struct.itimerspec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
