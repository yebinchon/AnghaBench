; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 (%struct.snd_cs46xx*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CS46XX_PRIMARY_CODEC_INDEX = common dso_local global i32 0, align 4
@CS46XX_SECONDARY_CODEC_INDEX = common dso_local global i32 0, align 4
@BA0_ACCAD = common dso_local global i32 0, align 4
@BA0_ACCDA = common dso_local global i32 0, align 4
@BA0_ACCTL = common dso_local global i32 0, align 4
@ACCTL_VFRM = common dso_local global i16 0, align 2
@ACCTL_ESYN = common dso_local global i16 0, align 2
@ACCTL_RSTN = common dso_local global i16 0, align 2
@ACCTL_DCV = common dso_local global i16 0, align 2
@ACCTL_TC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [63 x i8] c"AC'97 write problem, codec_index = %d, reg = 0x%x, val = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*, i16, i16, i32)* @snd_cs46xx_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_codec_write(%struct.snd_cs46xx* %0, i16 zeroext %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @CS46XX_PRIMARY_CODEC_INDEX, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @CS46XX_SECONDARY_CODEC_INDEX, align 4
  %16 = icmp ne i32 %14, %15
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i1 [ false, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %125

23:                                               ; preds = %17
  %24 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %25 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %25, align 8
  %27 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %28 = call i32 %26(%struct.snd_cs46xx* %27, i32 1)
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %30 = load i32, i32* @BA0_ACCAD, align 4
  %31 = load i16, i16* %6, align 2
  %32 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %29, i32 %30, i16 zeroext %31)
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %34 = load i32, i32* @BA0_ACCDA, align 4
  %35 = load i16, i16* %7, align 2
  %36 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %33, i32 %34, i16 zeroext %35)
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %38 = load i32, i32* @BA0_ACCTL, align 4
  %39 = call zeroext i16 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CS46XX_PRIMARY_CODEC_INDEX, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %23
  %44 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %45 = load i32, i32* @BA0_ACCTL, align 4
  %46 = load i16, i16* @ACCTL_VFRM, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @ACCTL_ESYN, align 2
  %49 = zext i16 %48 to i32
  %50 = or i32 %47, %49
  %51 = load i16, i16* @ACCTL_RSTN, align 2
  %52 = zext i16 %51 to i32
  %53 = or i32 %50, %52
  %54 = trunc i32 %53 to i16
  %55 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %44, i32 %45, i16 zeroext %54)
  %56 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %57 = load i32, i32* @BA0_ACCTL, align 4
  %58 = load i16, i16* @ACCTL_DCV, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @ACCTL_VFRM, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %59, %61
  %63 = load i16, i16* @ACCTL_ESYN, align 2
  %64 = zext i16 %63 to i32
  %65 = or i32 %62, %64
  %66 = load i16, i16* @ACCTL_RSTN, align 2
  %67 = zext i16 %66 to i32
  %68 = or i32 %65, %67
  %69 = trunc i32 %68 to i16
  %70 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %56, i32 %57, i16 zeroext %69)
  br label %90

71:                                               ; preds = %23
  %72 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %73 = load i32, i32* @BA0_ACCTL, align 4
  %74 = load i16, i16* @ACCTL_DCV, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* @ACCTL_TC, align 2
  %77 = zext i16 %76 to i32
  %78 = or i32 %75, %77
  %79 = load i16, i16* @ACCTL_VFRM, align 2
  %80 = zext i16 %79 to i32
  %81 = or i32 %78, %80
  %82 = load i16, i16* @ACCTL_ESYN, align 2
  %83 = zext i16 %82 to i32
  %84 = or i32 %81, %83
  %85 = load i16, i16* @ACCTL_RSTN, align 2
  %86 = zext i16 %85 to i32
  %87 = or i32 %84, %86
  %88 = trunc i32 %87 to i16
  %89 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %72, i32 %73, i16 zeroext %88)
  br label %90

90:                                               ; preds = %71, %43
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %106, %90
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 4000
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = call i32 @udelay(i32 10)
  %96 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %97 = load i32, i32* @BA0_ACCTL, align 4
  %98 = call zeroext i16 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %96, i32 %97)
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* @ACCTL_DCV, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  br label %119

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %91

109:                                              ; preds = %91
  %110 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %111 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i16, i16* %6, align 2
  %117 = load i16, i16* %7, align 2
  %118 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %115, i16 zeroext %116, i16 zeroext %117)
  br label %119

119:                                              ; preds = %109, %104
  %120 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %121 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %120, i32 0, i32 0
  %122 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %121, align 8
  %123 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %124 = call i32 %122(%struct.snd_cs46xx* %123, i32 -1)
  br label %125

125:                                              ; preds = %119, %22
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
