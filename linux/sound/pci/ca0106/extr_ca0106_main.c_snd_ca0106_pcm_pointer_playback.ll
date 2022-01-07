; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_pointer_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_pointer_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32, i32 }
%struct.snd_ca0106 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLAYBACK_LIST_PTR = common dso_local global i32 0, align 4
@PLAYBACK_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ca0106: unstable DMA pointer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ca0106_pcm_pointer_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_pointer_playback(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ca0106_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_ca0106* %12, %struct.snd_ca0106** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %5, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 2
  %18 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %17, align 8
  store %struct.snd_ca0106_pcm* %18, %struct.snd_ca0106_pcm** %6, align 8
  %19 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  store i32 10, i32* %10, align 4
  %22 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

27:                                               ; preds = %1
  store i32 -1, i32* %8, align 4
  br label %28

28:                                               ; preds = %68, %27
  %29 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %30 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = lshr i32 %33, 3
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul i32 %34, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %41 = load i32, i32* @PLAYBACK_POINTER, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %40, i32 %41, i32 %42)
  %44 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %39, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp uge i32 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %28
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %28
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %79

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %28, label %72

72:                                               ; preds = %68
  %73 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %74 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %64, %26
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
