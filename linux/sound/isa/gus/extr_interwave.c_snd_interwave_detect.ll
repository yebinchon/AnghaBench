; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interwave = type { i32 }
%struct.snd_gus_card = type { i32, i8, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_GF1_GB_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[0x%lx] check 1 failed - 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[0x%lx] check 2 failed - 0x%x\0A\00", align 1
@SNDRV_GF1_GB_VERSION_NUMBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"[0x%lx] InterWave check - rev1=0x%x, rev2=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"[0x%lx] InterWave check - passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"AMD InterWave\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"[0x%lx] InterWave check - failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_interwave*, %struct.snd_gus_card*, i32)* @snd_interwave_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interwave_detect(%struct.snd_interwave* %0, %struct.snd_gus_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_interwave*, align 8
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.snd_interwave* %0, %struct.snd_interwave** %5, align 8
  store %struct.snd_gus_card* %1, %struct.snd_gus_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %13 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %14 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %12, i32 %13, i32 0)
  %15 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %16 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %17 = call i32 @snd_gf1_i_look8(%struct.snd_gus_card* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = and i32 %17, 7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %22 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %127

29:                                               ; preds = %3
  %30 = call i32 @udelay(i32 160)
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %32 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %33 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %31, i32 %32, i32 1)
  %34 = call i32 @udelay(i32 160)
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %36 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %37 = call i32 @snd_gf1_i_look8(%struct.snd_gus_card* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = and i32 %37, 7
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %42 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %127

49:                                               ; preds = %29
  %50 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %51 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %50, i32 0, i32 4
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %55 = load i32, i32* @SNDRV_GF1_GB_VERSION_NUMBER, align 4
  %56 = call zeroext i8 @snd_gf1_look8(%struct.snd_gus_card* %54, i32 %55)
  store i8 %56, i8* %9, align 1
  %57 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %58 = load i32, i32* @SNDRV_GF1_GB_VERSION_NUMBER, align 4
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %60, -1
  %62 = trunc i32 %61 to i8
  %63 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %57, i32 %58, i8 zeroext %62)
  %64 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %65 = load i32, i32* @SNDRV_GF1_GB_VERSION_NUMBER, align 4
  %66 = call zeroext i8 @snd_gf1_look8(%struct.snd_gus_card* %64, i32 %65)
  store i8 %66, i8* %10, align 1
  %67 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %68 = load i32, i32* @SNDRV_GF1_GB_VERSION_NUMBER, align 4
  %69 = load i8, i8* %9, align 1
  %70 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %67, i32 %68, i8 zeroext %69)
  %71 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %72 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %71, i32 0, i32 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %76 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i8, i8* %9, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %10, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %80, i32 %82)
  %84 = load i8, i8* %9, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 240
  %87 = load i8, i8* %10, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 240
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %49
  %92 = load i8, i8* %9, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 15
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 15
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %91
  %100 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %101 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %106 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %108 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strcpy(i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i8, i8* %9, align 1
  %114 = zext i8 %113 to i32
  %115 = ashr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %118 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %117, i32 0, i32 1
  store i8 %116, i8* %118, align 4
  store i32 0, i32* %4, align 4
  br label %127

119:                                              ; preds = %91, %49
  %120 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %121 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %119, %99, %40, %20
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @snd_gf1_i_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_i_look8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_gf1_look8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
