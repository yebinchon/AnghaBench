; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RESET = common dso_local global i32 0, align 4
@RESET_LOOP_TIMEOUT = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@READDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ESS Solo-1 reset failed\0A\00", align 1
@ESS_CMD_ENABLEEXT = common dso_local global i32 0, align 4
@ESS_CMD_DMATYPE = common dso_local global i32 0, align 4
@ESSSB_IREG_AUDIO2MODE = common dso_local global i32 0, align 4
@ESS_CMD_IRQCONTROL = common dso_local global i32 0, align 4
@ESS_CMD_DRQCONTROL = common dso_local global i32 0, align 4
@ESS_CMD_ENABLEAUDIO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1938*)* @snd_es1938_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1938_reset(%struct.es1938* %0) #0 {
  %2 = alloca %struct.es1938*, align 8
  %3 = alloca i32, align 4
  store %struct.es1938* %0, %struct.es1938** %2, align 8
  %4 = load %struct.es1938*, %struct.es1938** %2, align 8
  %5 = load i32, i32* @RESET, align 4
  %6 = call i32 @SLSB_REG(%struct.es1938* %4, i32 %5)
  %7 = call i32 @outb(i32 3, i32 %6)
  %8 = load %struct.es1938*, %struct.es1938** %2, align 8
  %9 = load i32, i32* @RESET, align 4
  %10 = call i32 @SLSB_REG(%struct.es1938* %8, i32 %9)
  %11 = call i32 @inb(i32 %10)
  %12 = load %struct.es1938*, %struct.es1938** %2, align 8
  %13 = load i32, i32* @RESET, align 4
  %14 = call i32 @SLSB_REG(%struct.es1938* %12, i32 %13)
  %15 = call i32 @outb(i32 0, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %36, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @RESET_LOOP_TIMEOUT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.es1938*, %struct.es1938** %2, align 8
  %22 = load i32, i32* @STATUS, align 4
  %23 = call i32 @SLSB_REG(%struct.es1938* %21, i32 %22)
  %24 = call i32 @inb(i32 %23)
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.es1938*, %struct.es1938** %2, align 8
  %29 = load i32, i32* @READDATA, align 4
  %30 = call i32 @SLSB_REG(%struct.es1938* %28, i32 %29)
  %31 = call i32 @inb(i32 %30)
  %32 = icmp eq i32 %31, 170
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %46

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.es1938*, %struct.es1938** %2, align 8
  %41 = getelementptr inbounds %struct.es1938, %struct.es1938* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.es1938*, %struct.es1938** %2, align 8
  %48 = load i32, i32* @ESS_CMD_ENABLEEXT, align 4
  %49 = call i32 @snd_es1938_write_cmd(%struct.es1938* %47, i32 %48)
  %50 = load %struct.es1938*, %struct.es1938** %2, align 8
  %51 = load i32, i32* @ESS_CMD_DMATYPE, align 4
  %52 = call i32 @snd_es1938_write(%struct.es1938* %50, i32 %51, i32 2)
  %53 = load %struct.es1938*, %struct.es1938** %2, align 8
  %54 = load i32, i32* @ESSSB_IREG_AUDIO2MODE, align 4
  %55 = call i32 @snd_es1938_mixer_write(%struct.es1938* %53, i32 %54, i32 50)
  %56 = load %struct.es1938*, %struct.es1938** %2, align 8
  %57 = load i32, i32* @ESS_CMD_IRQCONTROL, align 4
  %58 = call i32 @snd_es1938_bits(%struct.es1938* %56, i32 %57, i32 240, i32 80)
  %59 = load %struct.es1938*, %struct.es1938** %2, align 8
  %60 = load i32, i32* @ESS_CMD_DRQCONTROL, align 4
  %61 = call i32 @snd_es1938_bits(%struct.es1938* %59, i32 %60, i32 240, i32 80)
  %62 = load %struct.es1938*, %struct.es1938** %2, align 8
  %63 = load i32, i32* @ESS_CMD_ENABLEAUDIO1, align 4
  %64 = call i32 @snd_es1938_write_cmd(%struct.es1938* %62, i32 %63)
  %65 = load %struct.es1938*, %struct.es1938** %2, align 8
  %66 = call i32 @snd_es1938_mixer_write(%struct.es1938* %65, i32 84, i32 143)
  %67 = load %struct.es1938*, %struct.es1938** %2, align 8
  %68 = call i32 @snd_es1938_mixer_write(%struct.es1938* %67, i32 86, i32 149)
  %69 = load %struct.es1938*, %struct.es1938** %2, align 8
  %70 = call i32 @snd_es1938_mixer_write(%struct.es1938* %69, i32 88, i32 148)
  %71 = load %struct.es1938*, %struct.es1938** %2, align 8
  %72 = call i32 @snd_es1938_mixer_write(%struct.es1938* %71, i32 90, i32 128)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @SLSB_REG(%struct.es1938*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_es1938_write_cmd(%struct.es1938*, i32) #1

declare dso_local i32 @snd_es1938_write(%struct.es1938*, i32, i32) #1

declare dso_local i32 @snd_es1938_mixer_write(%struct.es1938*, i32, i32) #1

declare dso_local i32 @snd_es1938_bits(%struct.es1938*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
