; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_set_channel_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_set_channel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniperif = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pcm_runtime = type { i32 }

@IEC958_AES3_CON_FS_22050 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_88200 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_176400 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_24000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_96000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_192000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_NOTID = common dso_local global i32 0, align 4
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@UNIPERIF_IEC958_ENCODING_MODE_ENCODED = common dso_local global i64 0, align 8
@UNIPERIF_IEC958_ENCODING_MODE_PCM = common dso_local global i64 0, align 8
@SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniperif*, %struct.snd_pcm_runtime*)* @uni_player_set_channel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_player_set_channel_status(%struct.uniperif* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca %struct.uniperif*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uniperif* %0, %struct.uniperif** %3, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %4, align 8
  %7 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %8 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %11 = icmp ne %struct.snd_pcm_runtime* %10, null
  br i1 %11, label %12, label %97

12:                                               ; preds = %2
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %88 [
    i32 22050, label %16
    i32 44100, label %24
    i32 88200, label %32
    i32 176400, label %40
    i32 24000, label %48
    i32 48000, label %56
    i32 96000, label %64
    i32 192000, label %72
    i32 32000, label %80
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @IEC958_AES3_CON_FS_22050, align 4
  %18 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %19 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %17, i32* %23, align 4
  br label %96

24:                                               ; preds = %12
  %25 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %26 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %27 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %25, i32* %31, align 4
  br label %96

32:                                               ; preds = %12
  %33 = load i32, i32* @IEC958_AES3_CON_FS_88200, align 4
  %34 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %35 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %33, i32* %39, align 4
  br label %96

40:                                               ; preds = %12
  %41 = load i32, i32* @IEC958_AES3_CON_FS_176400, align 4
  %42 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %43 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 %41, i32* %47, align 4
  br label %96

48:                                               ; preds = %12
  %49 = load i32, i32* @IEC958_AES3_CON_FS_24000, align 4
  %50 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %51 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %49, i32* %55, align 4
  br label %96

56:                                               ; preds = %12
  %57 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %58 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %59 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %57, i32* %63, align 4
  br label %96

64:                                               ; preds = %12
  %65 = load i32, i32* @IEC958_AES3_CON_FS_96000, align 4
  %66 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %67 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %65, i32* %71, align 4
  br label %96

72:                                               ; preds = %12
  %73 = load i32, i32* @IEC958_AES3_CON_FS_192000, align 4
  %74 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %75 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %73, i32* %79, align 4
  br label %96

80:                                               ; preds = %12
  %81 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  %82 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %83 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %81, i32* %87, align 4
  br label %96

88:                                               ; preds = %12
  %89 = load i32, i32* @IEC958_AES3_CON_FS_NOTID, align 4
  %90 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %91 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %80, %72, %64, %56, %48, %40, %32, %24, %16
  br label %97

97:                                               ; preds = %96, %2
  %98 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %99 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load i64, i64* @UNIPERIF_IEC958_ENCODING_MODE_ENCODED, align 8
  %110 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %111 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  br label %118

113:                                              ; preds = %97
  %114 = load i64, i64* @UNIPERIF_IEC958_ENCODING_MODE_PCM, align 8
  %115 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %116 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %120 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @UNIPERIF_IEC958_ENCODING_MODE_PCM, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %127 = call i32 @SET_UNIPERIF_USER_VALIDITY_VALIDITY_LR(%struct.uniperif* %126, i32 0)
  br label %131

128:                                              ; preds = %118
  %129 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %130 = call i32 @SET_UNIPERIF_USER_VALIDITY_VALIDITY_LR(%struct.uniperif* %129, i32 1)
  br label %131

131:                                              ; preds = %128, %125
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %194, %131
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %133, 6
  br i1 %134, label %135, label %197

135:                                              ; preds = %132
  %136 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %137 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = mul nsw i32 %141, 4
  %143 = add nsw i32 0, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 15
  store i32 %147, i32* %6, align 4
  %148 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %149 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 %153, 4
  %155 = add nsw i32 1, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 8
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %163 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = mul nsw i32 %167, 4
  %169 = add nsw i32 2, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 16
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %177 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = mul nsw i32 %181, 4
  %183 = add nsw i32 3, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 24
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @SET_UNIPERIF_CHANNEL_STA_REGN(%struct.uniperif* %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %135
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %132

197:                                              ; preds = %132
  %198 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %199 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %198, i32 0, i32 1
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %202 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %208 = call i32 @SET_UNIPERIF_CONFIG_CHL_STS_UPDATE(%struct.uniperif* %207)
  br label %212

209:                                              ; preds = %197
  %210 = load %struct.uniperif*, %struct.uniperif** %3, align 8
  %211 = call i32 @SET_UNIPERIF_BIT_CONTROL_CHL_STS_UPDATE(%struct.uniperif* %210)
  br label %212

212:                                              ; preds = %209, %206
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SET_UNIPERIF_USER_VALIDITY_VALIDITY_LR(%struct.uniperif*, i32) #1

declare dso_local i32 @SET_UNIPERIF_CHANNEL_STA_REGN(%struct.uniperif*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @SET_UNIPERIF_CONFIG_CHL_STS_UPDATE(%struct.uniperif*) #1

declare dso_local i32 @SET_UNIPERIF_BIT_CONTROL_CHL_STS_UPDATE(%struct.uniperif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
