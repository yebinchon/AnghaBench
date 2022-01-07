; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_init_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_init_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime*, i32, %struct.TYPE_3__ }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { i64, i64 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@AFMT_MU_LAW = common dso_local global i32 0, align 4
@snd_pcm_oss_release_substream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_pcm_oss_setup*, i32)* @snd_pcm_oss_init_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pcm_oss_init_substream(%struct.snd_pcm_substream* %0, %struct.snd_pcm_oss_setup* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_oss_setup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_oss_setup* %1, %struct.snd_pcm_oss_setup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %5, align 8
  %15 = bitcast %struct.snd_pcm_oss_setup* %13 to i8*
  %16 = bitcast %struct.snd_pcm_oss_setup* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @O_NONBLOCK, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @O_NONBLOCK, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 1
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %42, align 8
  store %struct.snd_pcm_runtime* %43, %struct.snd_pcm_runtime** %7, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 8000, i32* %52, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 9
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @SNDRV_MINOR_OSS_DEVICE(i32 %57)
  switch i32 %58, label %69 [
    i32 128, label %59
    i32 129, label %64
  ]

59:                                               ; preds = %40
  %60 = load i32, i32* @AFMT_U8, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 8
  store i32 %60, i32* %63, align 8
  br label %74

64:                                               ; preds = %40
  %65 = load i32, i32* @AFMT_S16_LE, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 8
  store i32 %65, i32* %68, align 8
  br label %74

69:                                               ; preds = %40
  %70 = load i32, i32* @AFMT_MU_LAW, align 4
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %64, %59
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @snd_pcm_oss_release_substream, align 4
  %88 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = call i32 @atomic_set(i32* %92, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @SNDRV_MINOR_OSS_DEVICE(i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
