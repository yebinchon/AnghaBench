; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.vx_pipe*, %struct.TYPE_6__ }
%struct.vx_pipe = type { %struct.vx_pipe*, i32, %struct.snd_pcm_substream* }
%struct.vx_core = type { i32, i32, %struct.TYPE_5__, i64*, i32*, %struct.vx_pipe**, %struct.vx_pipe** }
%struct.TYPE_5__ = type { i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vx_pcm_capture_hw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @vx_pcm_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.vx_core* %14, %struct.vx_core** %5, align 8
  store %struct.vx_pipe* null, %struct.vx_pipe** %7, align 8
  %15 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %16 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %160

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %33 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @snd_BUG_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %160

42:                                               ; preds = %24
  %43 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @vx_alloc_pipe(%struct.vx_core* %43, i32 1, i32 %44, i32 2, %struct.vx_pipe** %6)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %160

50:                                               ; preds = %42
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %53 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %52, i32 0, i32 2
  store %struct.snd_pcm_substream* %51, %struct.snd_pcm_substream** %53, align 8
  %54 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %55 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %56 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %55, i32 0, i32 6
  %57 = load %struct.vx_pipe**, %struct.vx_pipe*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %57, i64 %59
  store %struct.vx_pipe* %54, %struct.vx_pipe** %60, align 8
  %61 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %62 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %137

69:                                               ; preds = %50
  %70 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %71 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %70, i32 0, i32 5
  %72 = load %struct.vx_pipe**, %struct.vx_pipe*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %72, i64 %74
  %76 = load %struct.vx_pipe*, %struct.vx_pipe** %75, align 8
  store %struct.vx_pipe* %76, %struct.vx_pipe** %7, align 8
  %77 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %78 = icmp ne %struct.vx_pipe* %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %69
  %80 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @vx_alloc_pipe(%struct.vx_core* %80, i32 0, i32 %81, i32 2, %struct.vx_pipe** %7)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %160

87:                                               ; preds = %79
  %88 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %89 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %90 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %89, i32 0, i32 5
  %91 = load %struct.vx_pipe**, %struct.vx_pipe*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %91, i64 %93
  store %struct.vx_pipe* %88, %struct.vx_pipe** %94, align 8
  br label %95

95:                                               ; preds = %87, %69
  %96 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %97 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %103 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %110 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @vx_set_monitor_level(%struct.vx_core* %100, i32 %101, i32 %108, i64 %115)
  %117 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  %120 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %121 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %129 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @vx_set_monitor_level(%struct.vx_core* %117, i32 %119, i32 %127, i64 %135)
  br label %137

137:                                              ; preds = %95, %50
  %138 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %139 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %140 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %139, i32 0, i32 0
  store %struct.vx_pipe* %138, %struct.vx_pipe** %140, align 8
  %141 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %141, i32 0, i32 1
  %143 = bitcast %struct.TYPE_6__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 4 bitcast (%struct.TYPE_6__* @vx_pcm_capture_hw to i8*), i64 4, i1 false)
  %144 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %145 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %152 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %153 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %152, i32 0, i32 0
  store %struct.vx_pipe* %151, %struct.vx_pipe** %153, align 8
  %154 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %155 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %156 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %154, i32 0, i32 %155, i32 4)
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %158 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %159 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %157, i32 0, i32 %158, i32 4)
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %137, %85, %48, %39, %21
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_alloc_pipe(%struct.vx_core*, i32, i32, i32, %struct.vx_pipe**) #1

declare dso_local i32 @vx_set_monitor_level(%struct.vx_core*, i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
