; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_output_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_output_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i32, i32, %struct.mtpav_port*, i32 }
%struct.mtpav_port = type { i32, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MTPAV_PIDX_BROADCAST = common dso_local global i32 0, align 4
@MTPAV_MODE_OUTPUT_TRIGGERED = common dso_local global i32 0, align 4
@chip = common dso_local global %struct.mtpav* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @snd_mtpav_output_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_output_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mtpav*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtpav_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %8 = ptrtoint %struct.mtpav* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.mtpav* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.mtpav* %11, %struct.mtpav** %4, align 8
  %12 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %13 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %12, i32 0, i32 1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %17 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %16, i32 0, i32 3
  %18 = load i64, i64* @jiffies, align 8
  %19 = add nsw i64 1, %18
  %20 = call i32 @mod_timer(i32* %17, i64 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %56, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %24 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  %27 = load i32, i32* @MTPAV_PIDX_BROADCAST, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp sle i32 %22, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %21
  %31 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %32 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %31, i32 0, i32 2
  %33 = load %struct.mtpav_port*, %struct.mtpav_port** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %33, i64 %35
  store %struct.mtpav_port* %36, %struct.mtpav_port** %6, align 8
  %37 = load %struct.mtpav_port*, %struct.mtpav_port** %6, align 8
  %38 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MTPAV_MODE_OUTPUT_TRIGGERED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  %44 = load %struct.mtpav_port*, %struct.mtpav_port** %6, align 8
  %45 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %50 = load %struct.mtpav_port*, %struct.mtpav_port** %6, align 8
  %51 = load %struct.mtpav_port*, %struct.mtpav_port** %6, align 8
  %52 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @snd_mtpav_output_port_write(%struct.mtpav* %49, %struct.mtpav_port* %50, i64 %53)
  br label %55

55:                                               ; preds = %48, %43, %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %21

59:                                               ; preds = %21
  %60 = load %struct.mtpav*, %struct.mtpav** %4, align 8
  %61 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %60, i32 0, i32 1
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local %struct.mtpav* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @snd_mtpav_output_port_write(%struct.mtpav*, %struct.mtpav_port*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
