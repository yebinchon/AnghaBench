; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i32, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@chip = common dso_local global %struct.ak4117* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @snd_ak4117_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ak4117_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ak4117*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %5 = ptrtoint %struct.ak4117* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.ak4117* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.ak4117* %8, %struct.ak4117** %3, align 8
  %9 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %10 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %16 = call i32 @snd_ak4117_check_rate_and_errors(%struct.ak4117* %15, i32 0)
  %17 = load %struct.ak4117*, %struct.ak4117** %3, align 8
  %18 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %17, i32 0, i32 0
  %19 = load i64, i64* @jiffies, align 8
  %20 = add nsw i64 1, %19
  %21 = call i32 @mod_timer(i32* %18, i64 %20)
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.ak4117* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @snd_ak4117_check_rate_and_errors(%struct.ak4117*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
