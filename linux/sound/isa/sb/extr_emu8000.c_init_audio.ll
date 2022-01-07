; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_init_audio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_init_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@EMU8000_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*)* @init_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_audio(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @EMU8000_CHANNELS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %9, i32 %10, i32 128)
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %75, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EMU8000_CHANNELS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @EMU8000_ENVVOL_WRITE(%struct.snd_emu8000* %21, i32 %22, i32 0)
  %24 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @EMU8000_ENVVAL_WRITE(%struct.snd_emu8000* %24, i32 %25, i32 0)
  %27 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000* %27, i32 %28, i32 0)
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @EMU8000_ATKHLDV_WRITE(%struct.snd_emu8000* %30, i32 %31, i32 0)
  %33 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @EMU8000_LFO1VAL_WRITE(%struct.snd_emu8000* %33, i32 %34, i32 0)
  %36 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @EMU8000_ATKHLD_WRITE(%struct.snd_emu8000* %36, i32 %37, i32 0)
  %39 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @EMU8000_LFO2VAL_WRITE(%struct.snd_emu8000* %39, i32 %40, i32 0)
  %42 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @EMU8000_IP_WRITE(%struct.snd_emu8000* %42, i32 %43, i32 0)
  %45 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @EMU8000_IFATN_WRITE(%struct.snd_emu8000* %45, i32 %46, i32 0)
  %48 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @EMU8000_PEFE_WRITE(%struct.snd_emu8000* %48, i32 %49, i32 0)
  %51 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @EMU8000_FMMOD_WRITE(%struct.snd_emu8000* %51, i32 %52, i32 0)
  %54 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @EMU8000_TREMFRQ_WRITE(%struct.snd_emu8000* %54, i32 %55, i32 0)
  %57 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @EMU8000_FM2FRQ2_WRITE(%struct.snd_emu8000* %57, i32 %58, i32 0)
  %60 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %60, i32 %61, i32 0)
  %63 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %63, i32 %64, i32 0)
  %66 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %66, i32 %67, i32 0)
  %69 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %69, i32 %70, i32 0)
  %72 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %20
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %16

78:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @EMU8000_CHANNELS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %84, i32 %85, i32 0)
  %87 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000* %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %79

93:                                               ; preds = %79
  ret void
}

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ENVVOL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ENVVAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ATKHLDV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_LFO1VAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ATKHLD_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_LFO2VAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_IP_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_IFATN_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PEFE_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_FMMOD_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_TREMFRQ_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_FM2FRQ2_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
