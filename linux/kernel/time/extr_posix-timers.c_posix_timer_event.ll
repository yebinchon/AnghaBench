; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posix_timer_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posix_timer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SIGEV_THREAD_ID = common dso_local global i32 0, align 4
@PIDTYPE_TGID = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_timer_event(%struct.k_itimer* %0, i32 %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %9 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %7, i32* %12, align 4
  %13 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %14 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @PIDTYPE_TGID, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @PIDTYPE_PID, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %5, align 4
  %25 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %26 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %29 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @send_sigqueue(%struct.TYPE_4__* %27, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @send_sigqueue(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
