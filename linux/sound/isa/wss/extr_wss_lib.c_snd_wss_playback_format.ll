; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_playback_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_playback_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, i32*, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@WSS_HW_CS4231A = common dso_local global i32 0, align 4
@WSS_HW_CS4232_MASK = common dso_local global i32 0, align 4
@CS4231_PLAYBK_FORMAT = common dso_local global i64 0, align 8
@CS4231_ALT_FEATURE_1 = common dso_local global i64 0, align 8
@WSS_HW_AD1845 = common dso_local global i32 0, align 4
@AD1845_UPR_FREQ_SEL = common dso_local global i64 0, align 8
@AD1845_LWR_FREQ_SEL = common dso_local global i64 0, align 8
@WSS_HW_INTERWAVE = common dso_local global i64 0, align 8
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_RECORD_ENABLE = common dso_local global i32 0, align 4
@CS4231_REC_FORMAT = common dso_local global i64 0, align 8
@WSS_HW_OPL3SA2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wss*, %struct.snd_pcm_hw_params*, i8)* @snd_wss_playback_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wss_playback_format(%struct.snd_wss* %0, %struct.snd_pcm_hw_params* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_wss*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i8 %2, i8* %6, align 1
  store i32 1, i32* %8, align 4
  %10 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %11 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %14 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @WSS_HW_CS4231A, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %20 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WSS_HW_CS4232_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %18, %3
  %26 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %27 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %26, i32 0, i32 3
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %31 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %25
  %42 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %43 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %44 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %45 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 16
  %51 = trunc i32 %50 to i8
  %52 = call i32 @snd_wss_out(%struct.snd_wss* %42, i64 %43, i8 zeroext %51)
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %56 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %61 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %62 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %63 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = trunc i32 %67 to i8
  %69 = call i32 @snd_wss_out(%struct.snd_wss* %60, i64 %61, i8 zeroext %68)
  %70 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %71 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %72 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %73 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -17
  store i32 %78, i32* %76, align 4
  %79 = trunc i32 %78 to i8
  %80 = call i32 @snd_wss_out(%struct.snd_wss* %70, i64 %71, i8 zeroext %79)
  %81 = call i32 @udelay(i32 100)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %41, %25
  %83 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %84 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %83, i32 0, i32 3
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %125

87:                                               ; preds = %18
  %88 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %89 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @WSS_HW_AD1845, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %124

93:                                               ; preds = %87
  %94 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %95 = call i32 @params_rate(%struct.snd_pcm_hw_params* %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %97 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %96, i32 0, i32 3
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %101 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %102 = load i8, i8* %6, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 240
  %105 = trunc i32 %104 to i8
  %106 = call i32 @snd_wss_out(%struct.snd_wss* %100, i64 %101, i8 zeroext %105)
  %107 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %108 = load i64, i64* @AD1845_UPR_FREQ_SEL, align 8
  %109 = load i32, i32* %9, align 4
  %110 = lshr i32 %109, 8
  %111 = and i32 %110, 255
  %112 = trunc i32 %111 to i8
  %113 = call i32 @snd_wss_out(%struct.snd_wss* %107, i64 %108, i8 zeroext %112)
  %114 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %115 = load i64, i64* @AD1845_LWR_FREQ_SEL, align 8
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = call i32 @snd_wss_out(%struct.snd_wss* %114, i64 %115, i8 zeroext %118)
  store i32 0, i32* %8, align 4
  %120 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %121 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %120, i32 0, i32 3
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %93, %87
  br label %125

125:                                              ; preds = %124, %82
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %198

128:                                              ; preds = %125
  %129 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %130 = call i32 @snd_wss_mce_up(%struct.snd_wss* %129)
  %131 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %132 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %131, i32 0, i32 3
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @spin_lock_irqsave(i32* %132, i64 %133)
  %135 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %136 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @WSS_HW_INTERWAVE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %128
  %142 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %143 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %170, label %146

146:                                              ; preds = %141
  %147 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %148 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %146
  %157 = load i8, i8* %6, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 240
  %160 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %161 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 15
  %167 = or i32 %159, %166
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %6, align 1
  br label %169

169:                                              ; preds = %156, %146
  br label %178

170:                                              ; preds = %141, %128
  %171 = load i8, i8* %6, align 1
  %172 = zext i8 %171 to i32
  %173 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %174 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %170, %169
  %179 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %180 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %181 = load i8, i8* %6, align 1
  %182 = call i32 @snd_wss_out(%struct.snd_wss* %179, i64 %180, i8 zeroext %181)
  %183 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %184 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %183, i32 0, i32 3
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  %187 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %188 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @WSS_HW_OPL3SA2, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %178
  %194 = call i32 @udelay(i32 100)
  br label %195

195:                                              ; preds = %193, %178
  %196 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %197 = call i32 @snd_wss_mce_down(%struct.snd_wss* %196)
  br label %198

198:                                              ; preds = %195, %125
  %199 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %200 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %199, i32 0, i32 2
  %201 = call i32 @mutex_unlock(i32* %200)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_wss_mce_up(%struct.snd_wss*) #1

declare dso_local i32 @snd_wss_mce_down(%struct.snd_wss*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
