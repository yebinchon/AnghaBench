; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_capture_adat_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_capture_adat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__ }
%struct.rme32 = type { i32, %struct.snd_pcm_substream*, i64 }

@snd_rme32_adat_fd_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@snd_rme32_adat_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_capture_adat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_capture_adat_open(%struct.snd_pcm_substream* %0) #0 {
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
  %13 = load %struct.rme32*, %struct.rme32** %6, align 8
  %14 = getelementptr inbounds %struct.rme32, %struct.rme32* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_3__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_3__* @snd_rme32_adat_fd_info to i8*), i64 12, i1 false)
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_3__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.TYPE_3__* @snd_rme32_adat_info to i8*), i64 12, i1 false)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.rme32*, %struct.rme32** %6, align 8
  %27 = call i32 @snd_rme32_capture_getrate(%struct.rme32* %26, i32* %4)
  store i32 %27, i32* %5, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %75

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @snd_pcm_rate_to_rate_bit(i32 %36)
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %35, %25
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %51 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %50)
  %52 = load %struct.rme32*, %struct.rme32** %6, align 8
  %53 = getelementptr inbounds %struct.rme32, %struct.rme32* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_irq(i32* %53)
  %55 = load %struct.rme32*, %struct.rme32** %6, align 8
  %56 = getelementptr inbounds %struct.rme32, %struct.rme32* %55, i32 0, i32 1
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %56, align 8
  %58 = icmp ne %struct.snd_pcm_substream* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.rme32*, %struct.rme32** %6, align 8
  %61 = getelementptr inbounds %struct.rme32, %struct.rme32* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %49
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %67 = load %struct.rme32*, %struct.rme32** %6, align 8
  %68 = getelementptr inbounds %struct.rme32, %struct.rme32* %67, i32 0, i32 1
  store %struct.snd_pcm_substream* %66, %struct.snd_pcm_substream** %68, align 8
  %69 = load %struct.rme32*, %struct.rme32** %6, align 8
  %70 = getelementptr inbounds %struct.rme32, %struct.rme32* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load %struct.rme32*, %struct.rme32** %6, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %74 = call i32 @snd_rme32_set_buffer_constraint(%struct.rme32* %72, %struct.snd_pcm_runtime* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %65, %59, %32
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_rme32_capture_getrate(%struct.rme32*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_rme32_set_buffer_constraint(%struct.rme32*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
