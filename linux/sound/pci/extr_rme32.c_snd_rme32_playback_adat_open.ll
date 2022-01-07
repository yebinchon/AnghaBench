; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_adat_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_playback_adat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__ }
%struct.rme32 = type { i32, i64, i32, %struct.snd_pcm_substream*, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@RME32_WCR_ADAT = common dso_local global i32 0, align 4
@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@snd_rme32_adat_fd_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@snd_rme32_adat_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@RME32_RCR_KMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_playback_adat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_playback_adat_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme32*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme32* %9, %struct.rme32** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %13)
  %15 = load %struct.rme32*, %struct.rme32** %6, align 8
  %16 = getelementptr inbounds %struct.rme32, %struct.rme32* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.rme32*, %struct.rme32** %6, align 8
  %19 = getelementptr inbounds %struct.rme32, %struct.rme32* %18, i32 0, i32 3
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp ne %struct.snd_pcm_substream* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.rme32*, %struct.rme32** %6, align 8
  %24 = getelementptr inbounds %struct.rme32, %struct.rme32* %23, i32 0, i32 2
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %90

28:                                               ; preds = %1
  %29 = load i32, i32* @RME32_WCR_ADAT, align 4
  %30 = load %struct.rme32*, %struct.rme32** %6, align 8
  %31 = getelementptr inbounds %struct.rme32, %struct.rme32* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.rme32*, %struct.rme32** %6, align 8
  %35 = getelementptr inbounds %struct.rme32, %struct.rme32* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rme32*, %struct.rme32** %6, align 8
  %38 = getelementptr inbounds %struct.rme32, %struct.rme32* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = load %struct.rme32*, %struct.rme32** %6, align 8
  %45 = getelementptr inbounds %struct.rme32, %struct.rme32* %44, i32 0, i32 3
  store %struct.snd_pcm_substream* %43, %struct.snd_pcm_substream** %45, align 8
  %46 = load %struct.rme32*, %struct.rme32** %6, align 8
  %47 = getelementptr inbounds %struct.rme32, %struct.rme32* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.rme32*, %struct.rme32** %6, align 8
  %50 = getelementptr inbounds %struct.rme32, %struct.rme32* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %28
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_3__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 bitcast (%struct.TYPE_3__* @snd_rme32_adat_fd_info to i8*), i64 12, i1 false)
  br label %61

57:                                               ; preds = %28
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 0
  %60 = bitcast %struct.TYPE_3__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 bitcast (%struct.TYPE_3__* @snd_rme32_adat_info to i8*), i64 12, i1 false)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.rme32*, %struct.rme32** %6, align 8
  %63 = getelementptr inbounds %struct.rme32, %struct.rme32* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RME32_RCR_KMODE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load %struct.rme32*, %struct.rme32** %6, align 8
  %70 = call i32 @snd_rme32_capture_getrate(%struct.rme32* %69, i32* %5)
  store i32 %70, i32* %4, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @snd_pcm_rate_to_rate_bit(i32 %73)
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %72, %68, %61
  %87 = load %struct.rme32*, %struct.rme32** %6, align 8
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %89 = call i32 @snd_rme32_set_buffer_constraint(%struct.rme32* %87, %struct.snd_pcm_runtime* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %22
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_rme32_capture_getrate(%struct.rme32*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @snd_rme32_set_buffer_constraint(%struct.rme32*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
