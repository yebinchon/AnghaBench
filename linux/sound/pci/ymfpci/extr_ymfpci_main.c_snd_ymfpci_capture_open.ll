; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.snd_ymfpci_pcm*, i32 }
%struct.snd_ymfpci_pcm = type { i64, %struct.snd_pcm_substream*, i64, %struct.snd_ymfpci* }
%struct.snd_ymfpci = type { %struct.snd_pcm_substream** }

@snd_ymfpci_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAPTURE_REC = common dso_local global i64 0, align 8
@snd_ymfpci_pcm_free_substream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i64)* @snd_ymfpci_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_capture_open(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_ymfpci*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_ymfpci_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_ymfpci* %11, %struct.snd_ymfpci** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %7, align 8
  %15 = load i32, i32* @snd_ymfpci_capture, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %20 = load i32, i32* @UINT_MAX, align 4
  %21 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %18, i32 %19, i32 5334, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %28 = call i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime* %27, i32 48000)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %26
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.snd_ymfpci_pcm* @kzalloc(i32 32, i32 %34)
  store %struct.snd_ymfpci_pcm* %35, %struct.snd_ymfpci_pcm** %8, align 8
  %36 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %37 = icmp eq %struct.snd_ymfpci_pcm* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %33
  %42 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %43 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %44 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %43, i32 0, i32 3
  store %struct.snd_ymfpci* %42, %struct.snd_ymfpci** %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @CAPTURE_REC, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %49 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %51 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %52 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %51, i32 0, i32 1
  store %struct.snd_pcm_substream* %50, %struct.snd_pcm_substream** %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %55 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %57 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %58 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %57, i32 0, i32 0
  %59 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %59, i64 %60
  store %struct.snd_pcm_substream* %56, %struct.snd_pcm_substream** %61, align 8
  %62 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 1
  store %struct.snd_ymfpci_pcm* %62, %struct.snd_ymfpci_pcm** %64, align 8
  %65 = load i32, i32* @snd_ymfpci_pcm_free_substream, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %69 = call i32 @snd_ymfpci_hw_start(%struct.snd_ymfpci* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %41, %38, %31, %24
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime*, i32) #1

declare dso_local %struct.snd_ymfpci_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_ymfpci_hw_start(%struct.snd_ymfpci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
