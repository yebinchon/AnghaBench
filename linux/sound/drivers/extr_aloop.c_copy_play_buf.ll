; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_copy_play_buf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_copy_play_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_pcm = type { i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@SNDRV_PCM_STATE_DRAINING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loopback_pcm*, %struct.loopback_pcm*, i32)* @copy_play_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_play_buf(%struct.loopback_pcm* %0, %struct.loopback_pcm* %1, i32 %2) #0 {
  %4 = alloca %struct.loopback_pcm*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.loopback_pcm* %0, %struct.loopback_pcm** %4, align 8
  store %struct.loopback_pcm* %1, %struct.loopback_pcm** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %18 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %7, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %26 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %28, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %33 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNDRV_PCM_STATE_DRAINING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %105

45:                                               ; preds = %3
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %47 = call i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime* %46)
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %45
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = srem i64 %59, %62
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %69 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %72 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = udiv i32 %70, %73
  %75 = load i32, i32* %14, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %52
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %80, %52
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = sub i32 %89, %90
  %92 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %93 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul i32 %91, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %15, align 4
  %102 = sub i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %99, %88
  br label %105

105:                                              ; preds = %104, %45, %3
  br label %106

106:                                              ; preds = %154, %105
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add i32 %108, %109
  %111 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %112 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ugt i32 %110, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %117 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sub i32 %118, %119
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %115, %106
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add i32 %122, %123
  %125 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %126 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ugt i32 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %131 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sub i32 %132, %133
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %129, %121
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @memcpy(i8* %139, i8* %143, i32 %144)
  %146 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %147 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sub i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %135
  br label %169

154:                                              ; preds = %135
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %16, align 4
  %157 = add i32 %155, %156
  %158 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %159 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = urem i32 %157, %160
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %16, align 4
  %164 = add i32 %162, %163
  %165 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %166 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = urem i32 %164, %167
  store i32 %168, i32* %11, align 4
  br label %106

169:                                              ; preds = %153
  %170 = load i32, i32* %12, align 4
  %171 = icmp ugt i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @clear_capture_buf(%struct.loopback_pcm* %173, i32 %174)
  %176 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %177 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %169
  ret void
}

declare dso_local i64 @snd_pcm_playback_hw_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @clear_capture_buf(%struct.loopback_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
