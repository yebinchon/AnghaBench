; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_timer.c_snd_seq_oss_timer_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_timer.c_snd_seq_oss_timer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_timer = type { i32, i32, i64, i64, i64, %struct.seq_oss_devinfo* }
%struct.seq_oss_devinfo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seq_oss_timer* @snd_seq_oss_timer_new(%struct.seq_oss_devinfo* %0) #0 {
  %2 = alloca %struct.seq_oss_timer*, align 8
  %3 = alloca %struct.seq_oss_devinfo*, align 8
  %4 = alloca %struct.seq_oss_timer*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.seq_oss_timer* @kzalloc(i32 40, i32 %5)
  store %struct.seq_oss_timer* %6, %struct.seq_oss_timer** %4, align 8
  %7 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %8 = icmp eq %struct.seq_oss_timer* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.seq_oss_timer* null, %struct.seq_oss_timer** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %12 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %13 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %12, i32 0, i32 5
  store %struct.seq_oss_devinfo* %11, %struct.seq_oss_devinfo** %13, align 8
  %14 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %15 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %17 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %19 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %21 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %20, i32 0, i32 0
  store i32 60, i32* %21, align 8
  %22 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %23 = getelementptr inbounds %struct.seq_oss_timer, %struct.seq_oss_timer* %22, i32 0, i32 1
  store i32 100, i32* %23, align 4
  %24 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  %25 = call i32 @calc_alsa_tempo(%struct.seq_oss_timer* %24)
  %26 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %4, align 8
  store %struct.seq_oss_timer* %26, %struct.seq_oss_timer** %2, align 8
  br label %27

27:                                               ; preds = %10, %9
  %28 = load %struct.seq_oss_timer*, %struct.seq_oss_timer** %2, align 8
  ret %struct.seq_oss_timer* %28
}

declare dso_local %struct.seq_oss_timer* @kzalloc(i32, i32) #1

declare dso_local i32 @calc_alsa_tempo(%struct.seq_oss_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
