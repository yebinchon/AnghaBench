; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_init_fm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_init_fm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu8000_init_fm(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  %4 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %5 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %4, i32 30, i32 128)
  %6 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %7 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %6, i32 30, i32 -32)
  %8 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %9 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %10 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 24
  %13 = or i32 16777192, %12
  %14 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %8, i32 30, i32 %13)
  %15 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %16 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %17 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %15, i32 30, i32 %19)
  %21 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %22 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %21, i32 30, i32 0)
  %23 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %24 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %23, i32 30, i32 16777187)
  %25 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %26 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %25, i32 31, i32 128)
  %27 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %28 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %27, i32 31, i32 16777200)
  %29 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %31 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = or i32 16777208, %33
  %35 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %29, i32 31, i32 %34)
  %36 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %37 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %38 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %36, i32 31, i32 %40)
  %42 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %43 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %42, i32 31, i32 32768)
  %44 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %45 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %44, i32 31, i32 16777203)
  %46 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %47 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %48 = call i32 @EMU8000_DATA0(%struct.snd_emu8000* %47)
  %49 = call i32 @EMU8000_CMD(i32 1, i32 30)
  %50 = call i32 @snd_emu8000_poke(%struct.snd_emu8000* %46, i32 %48, i32 %49, i32 0)
  %51 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %52 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %51, i32 0, i32 2
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %62, %1
  %56 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %57 = call i32 @EMU8000_PTR(%struct.snd_emu8000* %56)
  %58 = call i32 @inw(i32 %57)
  %59 = and i32 %58, 4096
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %55

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %70, %63
  %65 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %66 = call i32 @EMU8000_PTR(%struct.snd_emu8000* %65)
  %67 = call i32 @inw(i32 %66)
  %68 = and i32 %67, 4096
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %64

71:                                               ; preds = %64
  %72 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %73 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %72, i32 0, i32 2
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %77 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %78 = call i32 @EMU8000_DATA0(%struct.snd_emu8000* %77)
  %79 = call i32 @EMU8000_CMD(i32 1, i32 30)
  %80 = call i32 @snd_emu8000_poke(%struct.snd_emu8000* %76, i32 %78, i32 %79, i32 18472)
  %81 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %82 = call i32 @EMU8000_PTR(%struct.snd_emu8000* %81)
  %83 = call i32 @outb(i32 60, i32 %82)
  %84 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %85 = call i32 @EMU8000_DATA1(%struct.snd_emu8000* %84)
  %86 = call i32 @outb(i32 0, i32 %85)
  %87 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %88 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %87, i32 30, i32 -2147418113)
  %89 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %90 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %89, i32 31, i32 -2147418113)
  ret void
}

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @snd_emu8000_poke(%struct.snd_emu8000*, i32, i32, i32) #1

declare dso_local i32 @EMU8000_DATA0(%struct.snd_emu8000*) #1

declare dso_local i32 @EMU8000_CMD(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @EMU8000_PTR(%struct.snd_emu8000*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @EMU8000_DATA1(%struct.snd_emu8000*) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
