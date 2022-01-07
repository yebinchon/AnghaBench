; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_ak4117_change.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_ak4117_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i8, %struct.snd_pdacf* }
%struct.snd_pdacf = type { i32, i32* }

@AK4117_UNLCK = common dso_local global i8 0, align 1
@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@PDAUDIOCF_BLUE_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4117*, i8, i8)* @snd_pdacf_ak4117_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pdacf_ak4117_change(%struct.ak4117* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ak4117*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.snd_pdacf*, align 8
  %8 = alloca i32, align 4
  store %struct.ak4117* %0, %struct.ak4117** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.ak4117*, %struct.ak4117** %4, align 8
  %10 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %9, i32 0, i32 1
  %11 = load %struct.snd_pdacf*, %struct.snd_pdacf** %10, align 8
  store %struct.snd_pdacf* %11, %struct.snd_pdacf** %7, align 8
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @AK4117_UNLCK, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %21 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %27 = ashr i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ak4117*, %struct.ak4117** %4, align 8
  %32 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @AK4117_UNLCK, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %19
  %40 = load i32, i32* @PDAUDIOCF_BLUE_LED_OFF, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %19
  %44 = load i32, i32* @PDAUDIOCF_BLUE_LED_OFF, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %50 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %49, i32 %50, i32 %51)
  %53 = load %struct.snd_pdacf*, %struct.snd_pdacf** %7, align 8
  %54 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pdacf_reg_write(%struct.snd_pdacf*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
