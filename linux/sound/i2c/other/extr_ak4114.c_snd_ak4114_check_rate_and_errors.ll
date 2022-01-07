; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4114.c_snd_ak4114_check_rate_and_errors.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4114.c_snd_ak4114_check_rate_and_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { i8, i32, %struct.TYPE_5__*, i32 (%struct.ak4114*, i8, i8)*, i32, i32* }
%struct.TYPE_5__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@AK4114_REG_RCS1 = common dso_local global i32 0, align 4
@AK4114_CHECK_NO_STAT = common dso_local global i32 0, align 4
@AK4114_REG_RCS0 = common dso_local global i32 0, align 4
@AK4114_PAR = common dso_local global i8 0, align 1
@AK4114_PARITY_ERRORS = common dso_local global i64 0, align 8
@AK4114_V = common dso_local global i8 0, align 1
@AK4114_V_BIT_ERRORS = common dso_local global i64 0, align 8
@AK4114_CCRC = common dso_local global i8 0, align 1
@AK4114_CCRC_ERRORS = common dso_local global i64 0, align 8
@AK4114_QCRC = common dso_local global i8 0, align 1
@AK4114_QCRC_ERRORS = common dso_local global i64 0, align 8
@AK4114_QINT = common dso_local global i8 0, align 1
@AK4114_CINT = common dso_local global i8 0, align 1
@AK4114_PEM = common dso_local global i8 0, align 1
@AK4114_AUDION = common dso_local global i8 0, align 1
@AK4114_AUTO = common dso_local global i8 0, align 1
@AK4114_UNLCK = common dso_local global i8 0, align 1
@AK4114_CHECK_NO_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4114_check_rate_and_errors(%struct.ak4114* %0, i32 %1) #0 {
  %3 = alloca %struct.ak4114*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.ak4114* %0, %struct.ak4114** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %13 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %18 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi %struct.snd_pcm_runtime* [ %21, %16 ], [ null, %22 ]
  store %struct.snd_pcm_runtime* %24, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %7, align 4
  %25 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %26 = load i32, i32* @AK4114_REG_RCS1, align 4
  %27 = call zeroext i8 @reg_read(%struct.ak4114* %25, i32 %26)
  store i8 %27, i8* %9, align 1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AK4114_CHECK_NO_STAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %200

33:                                               ; preds = %23
  %34 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %35 = load i32, i32* @AK4114_REG_RCS0, align 4
  %36 = call zeroext i8 @reg_read(%struct.ak4114* %34, i32 %35)
  store i8 %36, i8* %8, align 1
  %37 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %38 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %37, i32 0, i32 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @AK4114_PAR, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %33
  %48 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %49 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @AK4114_PARITY_ERRORS, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %33
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @AK4114_V, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %64 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @AK4114_V_BIT_ERRORS, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %62, %55
  %71 = load i8, i8* %9, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @AK4114_CCRC, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %79 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @AK4114_CCRC_ERRORS, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %77, %70
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @AK4114_QCRC, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %94 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @AK4114_QCRC_ERRORS, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %85
  %101 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %102 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 8
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @AK4114_QINT, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @AK4114_CINT, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %106, %108
  %110 = load i8, i8* @AK4114_PEM, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %109, %111
  %113 = load i8, i8* @AK4114_AUDION, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %112, %114
  %116 = load i8, i8* @AK4114_AUTO, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %115, %117
  %119 = load i8, i8* @AK4114_UNLCK, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %118, %120
  %122 = and i32 %104, %121
  %123 = load i8, i8* %8, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @AK4114_QINT, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @AK4114_CINT, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %126, %128
  %130 = load i8, i8* @AK4114_PEM, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  %133 = load i8, i8* @AK4114_AUDION, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %132, %134
  %136 = load i8, i8* @AK4114_AUTO, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %135, %137
  %139 = load i8, i8* @AK4114_UNLCK, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %138, %140
  %142 = and i32 %124, %141
  %143 = xor i32 %122, %142
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %10, align 1
  %145 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %146 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 240
  %149 = load i8, i8* %9, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 240
  %152 = xor i32 %148, %151
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %11, align 1
  %154 = load i8, i8* %8, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* @AK4114_QINT, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* @AK4114_CINT, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %157, %159
  %161 = xor i32 %160, -1
  %162 = and i32 %155, %161
  %163 = trunc i32 %162 to i8
  %164 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %165 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %164, i32 0, i32 0
  store i8 %163, i8* %165, align 8
  %166 = load i8, i8* %9, align 1
  %167 = zext i8 %166 to i32
  %168 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %169 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %171 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %170, i32 0, i32 4
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %175 = load i8, i8* %8, align 1
  %176 = load i8, i8* %9, align 1
  %177 = load i8, i8* %10, align 1
  %178 = load i8, i8* %11, align 1
  %179 = call i32 @ak4114_notify(%struct.ak4114* %174, i8 zeroext %175, i8 zeroext %176, i8 zeroext %177, i8 zeroext %178)
  %180 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %181 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %180, i32 0, i32 3
  %182 = load i32 (%struct.ak4114*, i8, i8)*, i32 (%struct.ak4114*, i8, i8)** %181, align 8
  %183 = icmp ne i32 (%struct.ak4114*, i8, i8)* %182, null
  br i1 %183, label %184, label %199

184:                                              ; preds = %100
  %185 = load i8, i8* %10, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* %11, align 1
  %188 = zext i8 %187 to i32
  %189 = or i32 %186, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %184
  %192 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %193 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %192, i32 0, i32 3
  %194 = load i32 (%struct.ak4114*, i8, i8)*, i32 (%struct.ak4114*, i8, i8)** %193, align 8
  %195 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %196 = load i8, i8* %10, align 1
  %197 = load i8, i8* %11, align 1
  %198 = call i32 %194(%struct.ak4114* %195, i8 zeroext %196, i8 zeroext %197)
  br label %199

199:                                              ; preds = %191, %184, %100
  br label %200

200:                                              ; preds = %199, %32
  %201 = load i8, i8* %9, align 1
  %202 = call i32 @external_rate(i8 zeroext %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @AK4114_CHECK_NO_RATE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %239, label %207

207:                                              ; preds = %200
  %208 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %209 = icmp ne %struct.snd_pcm_runtime* %208, null
  br i1 %209, label %210, label %239

210:                                              ; preds = %207
  %211 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %212 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %239

216:                                              ; preds = %210
  %217 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %218 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %217, i32 0, i32 2
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = load i64, i64* %6, align 8
  %221 = call i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_5__* %219, i64 %220)
  %222 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %223 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %222, i32 0, i32 2
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = call i64 @snd_pcm_running(%struct.TYPE_5__* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %216
  %228 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %229 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %228, i32 0, i32 2
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = load i32, i32* @SNDRV_PCM_STATE_DRAINING, align 4
  %232 = call i32 @snd_pcm_stop(%struct.TYPE_5__* %230, i32 %231)
  store i32 1, i32* %7, align 4
  br label %233

233:                                              ; preds = %227, %216
  %234 = load %struct.ak4114*, %struct.ak4114** %3, align 8
  %235 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %234, i32 0, i32 2
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = load i64, i64* %6, align 8
  %238 = call i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_5__* %236, i64 %237)
  br label %239

239:                                              ; preds = %233, %210, %207, %200
  %240 = load i32, i32* %7, align 4
  ret i32 %240
}

declare dso_local zeroext i8 @reg_read(%struct.ak4114*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ak4114_notify(%struct.ak4114*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @external_rate(i8 zeroext) #1

declare dso_local i32 @snd_pcm_stream_lock_irqsave(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @snd_pcm_running(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_pcm_stop(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @snd_pcm_stream_unlock_irqrestore(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
