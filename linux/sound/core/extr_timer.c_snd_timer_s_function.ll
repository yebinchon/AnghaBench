; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_s_function.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_s_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_system_private = type { i64, i64, i64, %struct.snd_timer* }
%struct.snd_timer = type { i32 }
%struct.timer_list = type { i32 }

@tlist = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@priv = common dso_local global %struct.snd_timer_system_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @snd_timer_s_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_timer_s_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.snd_timer_system_private*, align 8
  %4 = alloca %struct.snd_timer*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %7 = ptrtoint %struct.snd_timer_system_private* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tlist, align 4
  %10 = call %struct.snd_timer_system_private* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.snd_timer_system_private* %10, %struct.snd_timer_system_private** %3, align 8
  %11 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %12 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %11, i32 0, i32 3
  %13 = load %struct.snd_timer*, %struct.snd_timer** %12, align 8
  store %struct.snd_timer* %13, %struct.snd_timer** %4, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %17 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @time_after(i64 %15, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %24 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %28 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %21, %1
  %32 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %35 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = call i32 @snd_timer_interrupt(%struct.snd_timer* %32, i64 %37)
  ret void
}

declare dso_local %struct.snd_timer_system_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @snd_timer_interrupt(%struct.snd_timer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
