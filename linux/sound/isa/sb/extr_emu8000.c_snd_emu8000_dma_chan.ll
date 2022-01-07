; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_dma_chan.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_dma_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@EMU8000_RAM_RIGHT = common dso_local global i32 0, align 4
@EMU8000_RAM_MODE_MASK = common dso_local global i32 0, align 4
@EMU8000_RAM_CLOSE = common dso_local global i32 0, align 4
@EMU8000_RAM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu8000_dma_chan(%struct.snd_emu8000* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu8000*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @EMU8000_RAM_RIGHT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 16777216, i32 0
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @EMU8000_RAM_MODE_MASK, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EMU8000_RAM_CLOSE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %21, i32 %22, i32 0)
  %24 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %24, i32 %25, i32 32895)
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %28, i32 %29, i32 128)
  %31 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %31, i32 %32, i32 0)
  %34 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000* %34, i32 %35, i32 0)
  %37 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %37, i32 %38, i32 1073741824)
  %40 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %40, i32 %41, i32 1073741824)
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %43, i32 %44, i32 0)
  %46 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %46, i32 %47, i32 0)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EMU8000_RAM_WRITE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %27
  %53 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 100663296, %55
  %57 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %53, i32 %54, i32 %56)
  br label %64

58:                                               ; preds = %27
  %59 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 67108864, %61
  %63 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %20, %58, %52
  ret void
}

declare dso_local i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
