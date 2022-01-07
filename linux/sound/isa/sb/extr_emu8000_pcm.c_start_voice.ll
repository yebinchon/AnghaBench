; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_start_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_start_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8k_pcm = type { i32*, i32, i32, i32, i32, %struct.snd_emu8000* }
%struct.snd_emu8000 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8k_pcm*, i32)* @start_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_voice(%struct.snd_emu8k_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu8k_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_emu8000*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_emu8k_pcm* %0, %struct.snd_emu8k_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %11 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %10, i32 0, i32 5
  %12 = load %struct.snd_emu8000*, %struct.snd_emu8000** %11, align 8
  store %struct.snd_emu8000* %12, %struct.snd_emu8000** %6, align 8
  %13 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %14 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @calc_pitch_target(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @EMU8000_IFATN_WRITE(%struct.snd_emu8000* %17, i32 %18, i32 65280)
  %20 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %20, i32 %21, i32 65535)
  %23 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000* %23, i32 %24, i32 65535)
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %26, i32 %27, i32 32639)
  store i32 0, i32* %7, align 4
  %29 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %30 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 255, i32* %8, align 4
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %40 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 0, %45
  %47 = and i32 %46, 255
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %38, %37
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %56, i32 %57, i32 %58)
  %60 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 16
  %64 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %60, i32 %61, i32 %63)
  %65 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %66 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %65, i32 0, i32 2
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %70 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %48
  %74 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %74, i32 0, i32 3
  %76 = load i64, i64* @jiffies, align 8
  %77 = add nsw i64 %76, 1
  %78 = call i32 @mod_timer(i32* %75, i64 %77)
  %79 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %80 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %73, %48
  %82 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %83 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %82, i32 0, i32 2
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local i32 @calc_pitch_target(i32) #1

declare dso_local i32 @EMU8000_IFATN_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
