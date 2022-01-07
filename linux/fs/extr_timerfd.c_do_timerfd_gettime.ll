; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_timerfd.c_do_timerfd_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_timerfd.c_do_timerfd_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec64 = type { i8*, i8* }
%struct.fd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.timerfd_ctx* }
%struct.timerfd_ctx = type { %struct.TYPE_6__, i64, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.itimerspec64*)* @do_timerfd_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_timerfd_gettime(i32 %0, %struct.itimerspec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.itimerspec64*, align 8
  %6 = alloca %struct.fd, align 8
  %7 = alloca %struct.timerfd_ctx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.itimerspec64* %1, %struct.itimerspec64** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @timerfd_fget(i32 %9, %struct.fd* %6)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %93

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %18, align 8
  store %struct.timerfd_ctx* %19, %struct.timerfd_ctx** %7, align 8
  %20 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %15
  %29 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %37 = call i64 @isalarm(%struct.timerfd_ctx* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @alarm_forward_now(i32* %42, i64 %45)
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @alarm_restart(i32* %54)
  br label %73

56:                                               ; preds = %33
  %57 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %58 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @hrtimer_forward_now(i32* %59, i64 %62)
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @hrtimer_restart(i32* %71)
  br label %73

73:                                               ; preds = %56, %39
  br label %74

74:                                               ; preds = %73, %28, %15
  %75 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %76 = call i64 @timerfd_get_remaining(%struct.timerfd_ctx* %75)
  %77 = call i8* @ktime_to_timespec64(i64 %76)
  %78 = load %struct.itimerspec64*, %struct.itimerspec64** %5, align 8
  %79 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @ktime_to_timespec64(i64 %82)
  %84 = load %struct.itimerspec64*, %struct.itimerspec64** %5, align 8
  %85 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %7, align 8
  %87 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_irq(i32* %88)
  %90 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @fdput(%struct.TYPE_4__* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %74, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @timerfd_fget(i32, %struct.fd*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @isalarm(%struct.timerfd_ctx*) #1

declare dso_local i32 @alarm_forward_now(i32*, i64) #1

declare dso_local i32 @alarm_restart(i32*) #1

declare dso_local i32 @hrtimer_forward_now(i32*, i64) #1

declare dso_local i32 @hrtimer_restart(i32*) #1

declare dso_local i8* @ktime_to_timespec64(i64) #1

declare dso_local i64 @timerfd_get_remaining(%struct.timerfd_ctx*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fdput(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
