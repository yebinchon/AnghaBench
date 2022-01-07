; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_tick_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_tick_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_seq_timer*)* @snd_seq_timer_set_tick_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_seq_timer_set_tick_resolution(%struct.snd_seq_timer* %0) #0 {
  %2 = alloca %struct.snd_seq_timer*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %2, align 8
  %4 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %5 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 1000000
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %10 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 1000
  %13 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %14 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %12, %15
  %17 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %18 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %22 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %25 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %23, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul i32 %28, 1000
  %30 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %31 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = udiv i32 %29, %32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %35 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %38 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  %41 = mul nsw i32 %40, 1000
  %42 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %43 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %47 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %20, %8
  %52 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %53 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %59 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %2, align 8
  %63 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %62, i32 0, i32 2
  %64 = call i32 @snd_seq_timer_update_tick(%struct.TYPE_2__* %63, i32 0)
  ret void
}

declare dso_local i32 @snd_seq_timer_update_tick(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
