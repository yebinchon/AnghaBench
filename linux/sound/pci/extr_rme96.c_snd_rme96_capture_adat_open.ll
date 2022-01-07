; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_capture_adat_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_capture_adat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.rme96 = type { i32, %struct.snd_pcm_substream* }

@snd_rme96_capture_adat_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_capture_adat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_capture_adat_open(%struct.snd_pcm_substream* %0) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_2__* @snd_rme96_capture_adat_info to i8*), i64 12, i1 false)
  %18 = load %struct.rme96*, %struct.rme96** %6, align 8
  %19 = call i64 @snd_rme96_getinputtype(%struct.rme96* %18)
  %20 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %73

25:                                               ; preds = %1
  %26 = load %struct.rme96*, %struct.rme96** %6, align 8
  %27 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %26, i32* %4)
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
  br label %73

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @snd_pcm_rate_to_rate_bit(i32 %36)
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %35, %25
  %50 = load %struct.rme96*, %struct.rme96** %6, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_irq(i32* %51)
  %53 = load %struct.rme96*, %struct.rme96** %6, align 8
  %54 = getelementptr inbounds %struct.rme96, %struct.rme96* %53, i32 0, i32 1
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %54, align 8
  %56 = icmp ne %struct.snd_pcm_substream* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.rme96*, %struct.rme96** %6, align 8
  %59 = getelementptr inbounds %struct.rme96, %struct.rme96* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %49
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %65 = load %struct.rme96*, %struct.rme96** %6, align 8
  %66 = getelementptr inbounds %struct.rme96, %struct.rme96* %65, i32 0, i32 1
  store %struct.snd_pcm_substream* %64, %struct.snd_pcm_substream** %66, align 8
  %67 = load %struct.rme96*, %struct.rme96** %6, align 8
  %68 = getelementptr inbounds %struct.rme96, %struct.rme96* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load %struct.rme96*, %struct.rme96** %6, align 8
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %72 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %70, %struct.snd_pcm_runtime* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %63, %57, %32, %22
  %74 = load i32, i32* %2, align 4
  ret i32 %74
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
