; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_amp_hercules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_amp_hercules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BA0_EGPIODR = common dso_local global i32 0, align 4
@BA0_EGPIOPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Hercules amplifier ON\0A\00", align 1
@EGPIODR_GPOE2 = common dso_local global i32 0, align 4
@EGPIOPTR_GPPT2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Hercules amplifier OFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*, i32)* @amp_hercules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amp_hercules(%struct.snd_cs46xx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %12 = load i32, i32* @BA0_EGPIODR, align 4
  %13 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %15 = load i32, i32* @BA0_EGPIOPTR, align 4
  %16 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %19 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %23 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  %30 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %31 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %37 = load i32, i32* @BA0_EGPIODR, align 4
  %38 = load i32, i32* @EGPIODR_GPOE2, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %36, i32 %37, i32 %40)
  %42 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %43 = load i32, i32* @BA0_EGPIOPTR, align 4
  %44 = load i32, i32* @EGPIOPTR_GPPT2, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %42, i32 %43, i32 %46)
  br label %78

48:                                               ; preds = %26, %2
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %53 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %51
  %57 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %58 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %64 = load i32, i32* @BA0_EGPIODR, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @EGPIODR_GPOE2, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %63, i32 %64, i32 %68)
  %70 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %71 = load i32, i32* @BA0_EGPIOPTR, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EGPIOPTR_GPPT2, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %70, i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %56, %51, %48
  br label %78

78:                                               ; preds = %77, %29
  ret void
}

declare dso_local i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
