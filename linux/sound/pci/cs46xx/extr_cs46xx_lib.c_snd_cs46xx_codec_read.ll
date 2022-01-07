; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 (%struct.snd_cs46xx*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CS46XX_PRIMARY_CODEC_INDEX = common dso_local global i32 0, align 4
@CS46XX_SECONDARY_CODEC_INDEX = common dso_local global i32 0, align 4
@CS46XX_SECONDARY_CODEC_OFFSET = common dso_local global i64 0, align 8
@BA0_ACSDA = common dso_local global i64 0, align 8
@BA0_ACCTL = common dso_local global i64 0, align 8
@ACCTL_VFRM = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [25 x i8] c"ACCTL_VFRM not set 0x%x\0A\00", align 1
@ACCTL_ESYN = common dso_local global i16 0, align 2
@BA0_ACCAD = common dso_local global i64 0, align 8
@BA0_ACCDA = common dso_local global i64 0, align 8
@ACCTL_CRW = common dso_local global i16 0, align 2
@ACCTL_RSTN = common dso_local global i16 0, align 2
@ACCTL_DCV = common dso_local global i16 0, align 2
@ACCTL_TC = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [44 x i8] c"AC'97 read problem (ACCTL_DCV), reg = 0x%x\0A\00", align 1
@BA0_ACSTS = common dso_local global i64 0, align 8
@ACSTS_VSTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"AC'97 read problem (ACSTS_VSTS), codec_index %d, reg = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_cs46xx*, i16, i32)* @snd_cs46xx_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_cs46xx_codec_read(%struct.snd_cs46xx* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @CS46XX_PRIMARY_CODEC_INDEX, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CS46XX_SECONDARY_CODEC_INDEX, align 4
  %18 = icmp ne i32 %16, %17
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ false, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i16 -1, i16* %4, align 2
  br label %229

25:                                               ; preds = %19
  %26 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %27 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %26, i32 0, i32 0
  %28 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %27, align 8
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %30 = call i32 %28(%struct.snd_cs46xx* %29, i32 1)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CS46XX_SECONDARY_CODEC_INDEX, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @CS46XX_SECONDARY_CODEC_OFFSET, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %34, %25
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %38 = load i64, i64* @BA0_ACSDA, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %37, i64 %40)
  %42 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %43 = load i64, i64* @BA0_ACCTL, align 8
  %44 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %42, i64 %43)
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %10, align 2
  %46 = load i16, i16* %10, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @ACCTL_VFRM, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %36
  %53 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %54 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i16, i16* %10, align 2
  %59 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i16 zeroext %58)
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %61 = load i64, i64* @BA0_ACCTL, align 8
  %62 = load i16, i16* %10, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* @ACCTL_ESYN, align 2
  %65 = zext i16 %64 to i32
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  %68 = load i16, i16* @ACCTL_VFRM, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  %71 = trunc i32 %70 to i16
  %72 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %60, i64 %61, i16 zeroext %71)
  %73 = call i32 @msleep(i32 50)
  %74 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %75 = load i64, i64* @BA0_ACCTL, align 8
  %76 = load i64, i64* %11, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %74, i64 %77)
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %10, align 2
  %80 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %81 = load i64, i64* @BA0_ACCTL, align 8
  %82 = load i16, i16* %10, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* @ACCTL_ESYN, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %83, %85
  %87 = load i16, i16* @ACCTL_VFRM, align 2
  %88 = zext i16 %87 to i32
  %89 = or i32 %86, %88
  %90 = trunc i32 %89 to i16
  %91 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %80, i64 %81, i16 zeroext %90)
  br label %92

92:                                               ; preds = %52, %36
  %93 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %94 = load i64, i64* @BA0_ACCAD, align 8
  %95 = load i16, i16* %6, align 2
  %96 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %93, i64 %94, i16 zeroext %95)
  %97 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %98 = load i64, i64* @BA0_ACCDA, align 8
  %99 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %97, i64 %98, i16 zeroext 0)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @CS46XX_PRIMARY_CODEC_INDEX, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %92
  %104 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %105 = load i64, i64* @BA0_ACCTL, align 8
  %106 = load i16, i16* @ACCTL_CRW, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @ACCTL_VFRM, align 2
  %109 = zext i16 %108 to i32
  %110 = or i32 %107, %109
  %111 = load i16, i16* @ACCTL_ESYN, align 2
  %112 = zext i16 %111 to i32
  %113 = or i32 %110, %112
  %114 = load i16, i16* @ACCTL_RSTN, align 2
  %115 = zext i16 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i16
  %118 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %104, i64 %105, i16 zeroext %117)
  %119 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %120 = load i64, i64* @BA0_ACCTL, align 8
  %121 = load i16, i16* @ACCTL_DCV, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, i16* @ACCTL_CRW, align 2
  %124 = zext i16 %123 to i32
  %125 = or i32 %122, %124
  %126 = load i16, i16* @ACCTL_VFRM, align 2
  %127 = zext i16 %126 to i32
  %128 = or i32 %125, %127
  %129 = load i16, i16* @ACCTL_ESYN, align 2
  %130 = zext i16 %129 to i32
  %131 = or i32 %128, %130
  %132 = load i16, i16* @ACCTL_RSTN, align 2
  %133 = zext i16 %132 to i32
  %134 = or i32 %131, %133
  %135 = trunc i32 %134 to i16
  %136 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %119, i64 %120, i16 zeroext %135)
  br label %159

137:                                              ; preds = %92
  %138 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %139 = load i64, i64* @BA0_ACCTL, align 8
  %140 = load i16, i16* @ACCTL_DCV, align 2
  %141 = zext i16 %140 to i32
  %142 = load i16, i16* @ACCTL_TC, align 2
  %143 = zext i16 %142 to i32
  %144 = or i32 %141, %143
  %145 = load i16, i16* @ACCTL_CRW, align 2
  %146 = zext i16 %145 to i32
  %147 = or i32 %144, %146
  %148 = load i16, i16* @ACCTL_VFRM, align 2
  %149 = zext i16 %148 to i32
  %150 = or i32 %147, %149
  %151 = load i16, i16* @ACCTL_ESYN, align 2
  %152 = zext i16 %151 to i32
  %153 = or i32 %150, %152
  %154 = load i16, i16* @ACCTL_RSTN, align 2
  %155 = zext i16 %154 to i32
  %156 = or i32 %153, %155
  %157 = trunc i32 %156 to i16
  %158 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %138, i64 %139, i16 zeroext %157)
  br label %159

159:                                              ; preds = %137, %103
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %174, %159
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 1000
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = call i32 @udelay(i32 10)
  %165 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %166 = load i64, i64* @BA0_ACCTL, align 8
  %167 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %165, i64 %166)
  %168 = load i16, i16* @ACCTL_DCV, align 2
  %169 = zext i16 %168 to i32
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %163
  br label %186

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %160

177:                                              ; preds = %160
  %178 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %179 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i16, i16* %6, align 2
  %184 = zext i16 %183 to i32
  %185 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  store i16 -1, i16* %9, align 2
  br label %222

186:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %202, %186
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %188, 100
  br i1 %189, label %190, label %205

190:                                              ; preds = %187
  %191 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %192 = load i64, i64* @BA0_ACSTS, align 8
  %193 = load i64, i64* %11, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %191, i64 %194)
  %196 = load i32, i32* @ACSTS_VSTS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %215

200:                                              ; preds = %190
  %201 = call i32 @udelay(i32 10)
  br label %202

202:                                              ; preds = %200
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %187

205:                                              ; preds = %187
  %206 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %207 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %206, i32 0, i32 1
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i16, i16* %6, align 2
  %213 = zext i16 %212 to i32
  %214 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %210, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %211, i32 %213)
  store i16 -1, i16* %9, align 2
  br label %222

215:                                              ; preds = %199
  %216 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %217 = load i64, i64* @BA0_ACSDA, align 8
  %218 = load i64, i64* %11, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %216, i64 %219)
  %221 = trunc i32 %220 to i16
  store i16 %221, i16* %9, align 2
  br label %222

222:                                              ; preds = %215, %205, %177
  %223 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %224 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %223, i32 0, i32 0
  %225 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %224, align 8
  %226 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %227 = call i32 %225(%struct.snd_cs46xx* %226, i32 -1)
  %228 = load i16, i16* %9, align 2
  store i16 %228, i16* %4, align 2
  br label %229

229:                                              ; preds = %222, %24
  %230 = load i16, i16* %4, align 2
  ret i16 %230
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i16 zeroext) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i64, i16 zeroext) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
