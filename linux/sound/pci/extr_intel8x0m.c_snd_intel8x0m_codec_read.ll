; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.intel8x0m* }
%struct.intel8x0m = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"codec_read %d: semaphore is not ready for register 0x%x\0A\00", align 1
@GLOB_STA = common dso_local global i32 0, align 4
@ICH_RCS = common dso_local global i32 0, align 4
@ICH_SRI = common dso_local global i32 0, align 4
@ICH_PRI = common dso_local global i32 0, align 4
@ICH_TRI = common dso_local global i32 0, align 4
@ICH_GSCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"codec_read %d: read timeout for register 0x%x\0A\00", align 1
@AC97_GPIO_STATUS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_intel8x0m_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_intel8x0m_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.intel8x0m*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 1
  %10 = load %struct.intel8x0m*, %struct.intel8x0m** %9, align 8
  store %struct.intel8x0m* %10, %struct.intel8x0m** %5, align 8
  %11 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @snd_intel8x0m_codec_semaphore(%struct.intel8x0m* %11, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %19 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %24 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i16, i16* %4, align 2
  %32 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %30, i16 zeroext %31)
  br label %33

33:                                               ; preds = %22, %17
  store i16 -1, i16* %6, align 2
  br label %84

34:                                               ; preds = %2
  %35 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %36 = load i16, i16* %4, align 2
  %37 = zext i16 %36 to i32
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %39 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 128
  %42 = add nsw i32 %37, %41
  %43 = trunc i32 %42 to i16
  %44 = call zeroext i16 @iagetword(%struct.intel8x0m* %35, i16 zeroext %43)
  store i16 %44, i16* %6, align 2
  %45 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %46 = load i32, i32* @GLOB_STA, align 4
  %47 = call i32 @ICHREG(i32 %46)
  %48 = call i32 @igetdword(%struct.intel8x0m* %45, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @ICH_RCS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %34
  %53 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %54 = load i32, i32* @GLOB_STA, align 4
  %55 = call i32 @ICHREG(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ICH_SRI, align 4
  %58 = load i32, i32* @ICH_PRI, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ICH_TRI, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ICH_GSCI, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %56, %64
  %66 = call i32 @iputdword(%struct.intel8x0m* %53, i32 %55, i32 %65)
  %67 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %68 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %52
  %72 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %73 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %78 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i16, i16* %4, align 2
  %81 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %79, i16 zeroext %80)
  br label %82

82:                                               ; preds = %71, %52
  store i16 -1, i16* %6, align 2
  br label %83

83:                                               ; preds = %82, %34
  br label %84

84:                                               ; preds = %83, %33
  %85 = load i16, i16* %4, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* @AC97_GPIO_STATUS, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.intel8x0m*, %struct.intel8x0m** %5, align 8
  %92 = call zeroext i16 @iagetword(%struct.intel8x0m* %91, i16 zeroext 0)
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i16, i16* %6, align 2
  ret i16 %94
}

declare dso_local i64 @snd_intel8x0m_codec_semaphore(%struct.intel8x0m*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @iagetword(%struct.intel8x0m*, i16 zeroext) #1

declare dso_local i32 @igetdword(%struct.intel8x0m*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0m*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
