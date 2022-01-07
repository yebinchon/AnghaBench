; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_free_cable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_free_cable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i64, %struct.loopback* }
%struct.loopback = type { %struct.loopback_cable*** }
%struct.loopback_cable = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @free_cable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cable(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.loopback*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loopback_cable*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 2
  %8 = load %struct.loopback*, %struct.loopback** %7, align 8
  store %struct.loopback* %8, %struct.loopback** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call i32 @get_cable_index(%struct.snd_pcm_substream* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.loopback*, %struct.loopback** %3, align 8
  %12 = getelementptr inbounds %struct.loopback, %struct.loopback* %11, i32 0, i32 0
  %13 = load %struct.loopback_cable***, %struct.loopback_cable**** %12, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %13, i64 %16
  %18 = load %struct.loopback_cable**, %struct.loopback_cable*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %18, i64 %20
  %22 = load %struct.loopback_cable*, %struct.loopback_cable** %21, align 8
  store %struct.loopback_cable* %22, %struct.loopback_cable** %5, align 8
  %23 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %24 = icmp ne %struct.loopback_cable* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %68

26:                                               ; preds = %1
  %27 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %28 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %29, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %26
  %41 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %42 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %45 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  store i32* null, i32** %50, align 8
  %51 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %52 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_irq(i32* %52)
  br label %68

54:                                               ; preds = %26
  %55 = load %struct.loopback*, %struct.loopback** %3, align 8
  %56 = getelementptr inbounds %struct.loopback, %struct.loopback* %55, i32 0, i32 0
  %57 = load %struct.loopback_cable***, %struct.loopback_cable**** %56, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %57, i64 %60
  %62 = load %struct.loopback_cable**, %struct.loopback_cable*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %62, i64 %64
  store %struct.loopback_cable* null, %struct.loopback_cable** %65, align 8
  %66 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %67 = call i32 @kfree(%struct.loopback_cable* %66)
  br label %68

68:                                               ; preds = %25, %54, %40
  ret void
}

declare dso_local i32 @get_cable_index(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.loopback_cable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
