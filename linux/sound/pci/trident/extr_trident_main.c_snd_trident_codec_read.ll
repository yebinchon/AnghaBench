; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, %struct.snd_trident* }
%struct.snd_trident = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TRIDENT_DEVICE_ID_DX = common dso_local global i64 0, align 8
@DX_AC97_BUSY_READ = common dso_local global i16 0, align 2
@DX_ACR1_AC97_R = common dso_local global i32 0, align 4
@TRIDENT_DEVICE_ID_NX = common dso_local global i64 0, align 8
@NX_AC97_BUSY_READ = common dso_local global i16 0, align 2
@NX_ACR2_AC97_R_PRIMARY = common dso_local global i32 0, align 4
@NX_ACR3_AC97_R_SECONDARY = common dso_local global i32 0, align 4
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@SI_AC97_BUSY_READ = common dso_local global i16 0, align 2
@SI_AC97_AUDIO_BUSY = common dso_local global i16 0, align 2
@SI_AC97_SECONDARY = common dso_local global i32 0, align 4
@SI_AC97_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ac97 codec read TIMEOUT [0x%x/0x%x]!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_trident_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_trident_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca %struct.snd_trident*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %5, align 4
  store i16 -1, i16* %7, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = load %struct.snd_trident*, %struct.snd_trident** %11, align 8
  store %struct.snd_trident* %12, %struct.snd_trident** %9, align 8
  %13 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %14 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %18 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRIDENT_DEVICE_ID_DX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %2
  %23 = load i16, i16* @DX_AC97_BUSY_READ, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %4, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 255
  %28 = or i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %31 = load i32, i32* @DX_ACR1_AC97_R, align 4
  %32 = call i32 @TRID_REG(%struct.snd_trident* %30, i32 %31)
  %33 = call i32 @outl(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %46, %22
  %35 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %36 = load i32, i32* @DX_ACR1_AC97_R, align 4
  %37 = call i32 @TRID_REG(%struct.snd_trident* %35, i32 %36)
  %38 = call i32 @inl(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i16, i16* @DX_AC97_BUSY_READ, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %50

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i16, i16* %7, align 2
  %48 = add i16 %47, -1
  store i16 %48, i16* %7, align 2
  %49 = icmp ne i16 %48, 0
  br i1 %49, label %34, label %50

50:                                               ; preds = %46, %44
  br label %143

51:                                               ; preds = %2
  %52 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %53 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TRIDENT_DEVICE_ID_NX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %51
  %58 = load i16, i16* @NX_AC97_BUSY_READ, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* %4, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 255
  %63 = or i32 %59, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %65 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @NX_ACR2_AC97_R_PRIMARY, align 4
  br label %72

70:                                               ; preds = %57
  %71 = load i32, i32* @NX_ACR3_AC97_R_SECONDARY, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @TRID_REG(%struct.snd_trident* %75, i32 %76)
  %78 = call i32 @outl(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %89, %72
  %80 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @TRID_REG(%struct.snd_trident* %80, i32 %81)
  %83 = call i32 @inl(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 3072
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %93

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88
  %90 = load i16, i16* %7, align 2
  %91 = add i16 %90, -1
  store i16 %91, i16* %7, align 2
  %92 = icmp ne i16 %91, 0
  br i1 %92, label %79, label %93

93:                                               ; preds = %89, %87
  br label %142

94:                                               ; preds = %51
  %95 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %96 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %141

100:                                              ; preds = %94
  %101 = load i16, i16* @SI_AC97_BUSY_READ, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* @SI_AC97_AUDIO_BUSY, align 2
  %104 = zext i16 %103 to i32
  %105 = or i32 %102, %104
  %106 = load i16, i16* %4, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %107, 255
  %109 = or i32 %105, %108
  store i32 %109, i32* %5, align 4
  %110 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %111 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load i32, i32* @SI_AC97_SECONDARY, align 4
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %100
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %121 = load i32, i32* @SI_AC97_READ, align 4
  %122 = call i32 @TRID_REG(%struct.snd_trident* %120, i32 %121)
  %123 = call i32 @outl(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %136, %118
  %125 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %126 = load i32, i32* @SI_AC97_READ, align 4
  %127 = call i32 @TRID_REG(%struct.snd_trident* %125, i32 %126)
  %128 = call i32 @inl(i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i16, i16* @SI_AC97_BUSY_READ, align 2
  %131 = zext i16 %130 to i32
  %132 = and i32 %129, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %140

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135
  %137 = load i16, i16* %7, align 2
  %138 = add i16 %137, -1
  store i16 %138, i16* %7, align 2
  %139 = icmp ne i16 %138, 0
  br i1 %139, label %124, label %140

140:                                              ; preds = %136, %134
  br label %141

141:                                              ; preds = %140, %94
  br label %142

142:                                              ; preds = %141, %93
  br label %143

143:                                              ; preds = %142, %50
  %144 = load i16, i16* %7, align 2
  %145 = zext i16 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %143
  %148 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %149 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %147
  %153 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %154 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i16, i16* %4, align 2
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @dev_err(i32 %157, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i16 zeroext %158, i32 %159)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %152, %147, %143
  %162 = load %struct.snd_trident*, %struct.snd_trident** %9, align 8
  %163 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %162, i32 0, i32 1
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  %166 = load i32, i32* %5, align 4
  %167 = lshr i32 %166, 16
  %168 = trunc i32 %167 to i16
  ret i16 %168
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
