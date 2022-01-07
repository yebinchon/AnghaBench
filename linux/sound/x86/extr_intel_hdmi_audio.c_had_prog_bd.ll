; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_prog_bd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_prog_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_intelhad = type { i32, i32, i32, i32 }

@AUD_BUF_VALID = common dso_local global i32 0, align 4
@AUD_BUF_INTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_intelhad*)* @had_prog_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @had_prog_bd(%struct.snd_pcm_substream* %0, %struct.snd_intelhad* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_intelhad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_intelhad* %1, %struct.snd_intelhad** %4, align 8
  %8 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %9 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %12 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %15 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @AUD_BUF_VALID, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @AUD_BUF_INTR_EN, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %2
  %39 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @AUD_BUF_ADDR(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @had_write_register(%struct.snd_intelhad* %39, i32 %41, i32 %42)
  %44 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @AUD_BUF_LEN(i32 %45)
  %47 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %48 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @had_write_register(%struct.snd_intelhad* %44, i32 %46, i32 %49)
  %51 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %52 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %56 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %59 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %63 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %72 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %73, %70
  store i32 %74, i32* %72, align 4
  ret void
}

declare dso_local i32 @had_write_register(%struct.snd_intelhad*, i32, i32) #1

declare dso_local i32 @AUD_BUF_ADDR(i32) #1

declare dso_local i32 @AUD_BUF_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
