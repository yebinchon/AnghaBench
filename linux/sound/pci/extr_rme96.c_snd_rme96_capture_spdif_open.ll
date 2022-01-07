; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_capture_spdif_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_capture_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.rme96 = type { i32, %struct.snd_pcm_substream* }

@snd_rme96_capture_spdif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_capture_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_capture_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme96*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme96* %9, %struct.rme96** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %13)
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = bitcast %struct.TYPE_2__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_2__* @snd_rme96_capture_spdif_info to i8*), i64 12, i1 false)
  %18 = load %struct.rme96*, %struct.rme96** %6, align 8
  %19 = call i64 @snd_rme96_getinputtype(%struct.rme96* %18)
  %20 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %1
  %23 = load %struct.rme96*, %struct.rme96** %6, align 8
  %24 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %23, i32* %4)
  store i32 %24, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %70

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @snd_pcm_rate_to_rate_bit(i32 %33)
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %32, %22, %1
  %47 = load %struct.rme96*, %struct.rme96** %6, align 8
  %48 = getelementptr inbounds %struct.rme96, %struct.rme96* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load %struct.rme96*, %struct.rme96** %6, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 1
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %51, align 8
  %53 = icmp ne %struct.snd_pcm_substream* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.rme96*, %struct.rme96** %6, align 8
  %56 = getelementptr inbounds %struct.rme96, %struct.rme96* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %46
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %62 = load %struct.rme96*, %struct.rme96** %6, align 8
  %63 = getelementptr inbounds %struct.rme96, %struct.rme96* %62, i32 0, i32 1
  store %struct.snd_pcm_substream* %61, %struct.snd_pcm_substream** %63, align 8
  %64 = load %struct.rme96*, %struct.rme96** %6, align 8
  %65 = getelementptr inbounds %struct.rme96, %struct.rme96* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load %struct.rme96*, %struct.rme96** %6, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %69 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %67, %struct.snd_pcm_runtime* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %60, %54, %29
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_capture_getrate(%struct.rme96*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rme96_set_buffer_size_constraint(%struct.rme96*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
