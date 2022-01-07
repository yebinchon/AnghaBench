; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_capture_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_capture_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, i32*, i32, i32, i64 }
%struct.snd_pcm_hw_params = type { i32 }

@WSS_HW_CS4231A = common dso_local global i32 0, align 4
@WSS_HW_CS4232_MASK = common dso_local global i32 0, align 4
@CS4231_PLAYBK_FORMAT = common dso_local global i64 0, align 8
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_ALT_FEATURE_1 = common dso_local global i64 0, align 8
@CS4231_REC_FORMAT = common dso_local global i64 0, align 8
@WSS_HW_AD1845 = common dso_local global i32 0, align 4
@AD1845_UPR_FREQ_SEL = common dso_local global i64 0, align 8
@AD1845_LWR_FREQ_SEL = common dso_local global i64 0, align 8
@WSS_HW_INTERWAVE = common dso_local global i32 0, align 4
@WSS_HW_AD1848_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wss*, %struct.snd_pcm_hw_params*, i8)* @snd_wss_capture_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wss_capture_format(%struct.snd_wss* %0, %struct.snd_pcm_hw_params* %1, i8 zeroext %2) #0 {
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
  br i1 %24, label %25, label %90

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
  br i1 %40, label %51, label %41

41:                                               ; preds = %25
  %42 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %43 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %41, %25
  %52 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %53 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %54 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %55 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, 32
  %61 = trunc i32 %60 to i8
  %62 = call i32 @snd_wss_out(%struct.snd_wss* %52, i64 %53, i8 zeroext %61)
  %63 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %64 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %65 = load i8, i8* %6, align 1
  %66 = zext i8 %65 to i32
  %67 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %68 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = trunc i32 %66 to i8
  %73 = call i32 @snd_wss_out(%struct.snd_wss* %63, i64 %64, i8 zeroext %72)
  %74 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %75 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %76 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %77 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -33
  store i32 %82, i32* %80, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i32 @snd_wss_out(%struct.snd_wss* %74, i64 %75, i8 zeroext %83)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %51, %41
  %86 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %87 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %86, i32 0, i32 3
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %128

90:                                               ; preds = %18
  %91 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %92 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @WSS_HW_AD1845, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %90
  %97 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %98 = call i32 @params_rate(%struct.snd_pcm_hw_params* %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %100 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %99, i32 0, i32 3
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %104 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %105 = load i8, i8* %6, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 240
  %108 = trunc i32 %107 to i8
  %109 = call i32 @snd_wss_out(%struct.snd_wss* %103, i64 %104, i8 zeroext %108)
  %110 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %111 = load i64, i64* @AD1845_UPR_FREQ_SEL, align 8
  %112 = load i32, i32* %9, align 4
  %113 = lshr i32 %112, 8
  %114 = and i32 %113, 255
  %115 = trunc i32 %114 to i8
  %116 = call i32 @snd_wss_out(%struct.snd_wss* %110, i64 %111, i8 zeroext %115)
  %117 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %118 = load i64, i64* @AD1845_LWR_FREQ_SEL, align 8
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 255
  %121 = trunc i32 %120 to i8
  %122 = call i32 @snd_wss_out(%struct.snd_wss* %117, i64 %118, i8 zeroext %121)
  store i32 0, i32* %8, align 4
  %123 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %124 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %123, i32 0, i32 3
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  br label %127

127:                                              ; preds = %96, %90
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %216

131:                                              ; preds = %128
  %132 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %133 = call i32 @snd_wss_mce_up(%struct.snd_wss* %132)
  %134 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %135 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %134, i32 0, i32 3
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %139 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @WSS_HW_INTERWAVE, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %192

143:                                              ; preds = %131
  %144 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %145 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %192, label %153

153:                                              ; preds = %143
  %154 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %155 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %160 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %161 = load i8, i8* %6, align 1
  %162 = call i32 @snd_wss_out(%struct.snd_wss* %159, i64 %160, i8 zeroext %161)
  br label %179

163:                                              ; preds = %153
  %164 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %165 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %166 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %167 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 240
  %173 = load i8, i8* %6, align 1
  %174 = zext i8 %173 to i32
  %175 = and i32 %174, 15
  %176 = or i32 %172, %175
  %177 = trunc i32 %176 to i8
  %178 = call i32 @snd_wss_out(%struct.snd_wss* %164, i64 %165, i8 zeroext %177)
  br label %179

179:                                              ; preds = %163, %158
  %180 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %181 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %180, i32 0, i32 3
  %182 = load i64, i64* %7, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  %184 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %185 = call i32 @snd_wss_mce_down(%struct.snd_wss* %184)
  %186 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %187 = call i32 @snd_wss_mce_up(%struct.snd_wss* %186)
  %188 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %189 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %188, i32 0, i32 3
  %190 = load i64, i64* %7, align 8
  %191 = call i32 @spin_lock_irqsave(i32* %189, i64 %190)
  br label %192

192:                                              ; preds = %179, %143, %131
  %193 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %194 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %201 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %202 = load i8, i8* %6, align 1
  %203 = call i32 @snd_wss_out(%struct.snd_wss* %200, i64 %201, i8 zeroext %202)
  br label %209

204:                                              ; preds = %192
  %205 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %206 = load i64, i64* @CS4231_REC_FORMAT, align 8
  %207 = load i8, i8* %6, align 1
  %208 = call i32 @snd_wss_out(%struct.snd_wss* %205, i64 %206, i8 zeroext %207)
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %211 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %210, i32 0, i32 3
  %212 = load i64, i64* %7, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  %214 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %215 = call i32 @snd_wss_mce_down(%struct.snd_wss* %214)
  br label %216

216:                                              ; preds = %209, %128
  %217 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %218 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %217, i32 0, i32 2
  %219 = call i32 @mutex_unlock(i32* %218)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i8 zeroext) #1

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
