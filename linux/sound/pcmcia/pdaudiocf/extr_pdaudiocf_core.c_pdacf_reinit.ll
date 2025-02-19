; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_pdacf_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_pdacf_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { i32*, i32, i32 }

@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_TCR = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_IER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdacf_reinit(%struct.snd_pdacf* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pdacf*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pdacf* %0, %struct.snd_pdacf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %6 = call i32 @pdacf_reset(%struct.snd_pdacf* %5, i32 0)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %11 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %12 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %10, i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_ak4117_reinit(i32 %19)
  %21 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %22 = load i32, i32* @PDAUDIOCF_REG_TCR, align 4
  %23 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @PDAUDIOCF_REG_TCR, align 4
  %27 = ashr i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %21, i32 %22, i32 %30)
  %32 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %33 = load i32, i32* @PDAUDIOCF_REG_IER, align 4
  %34 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @PDAUDIOCF_REG_IER, align 4
  %38 = ashr i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %32, i32 %33, i32 %41)
  ret void
}

declare dso_local i32 @pdacf_reset(%struct.snd_pdacf*, i32) #1

declare dso_local i32 @pdacf_reg_write(%struct.snd_pdacf*, i32, i32) #1

declare dso_local i32 @snd_ak4117_reinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
