; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32, %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i32, i32, i32, i64, i64, i32 }
%struct.snd_ymfpci = type { %struct.snd_ymfpci_capture_bank*** }
%struct.snd_ymfpci_capture_bank = type { i64, i64, i8*, i8* }

@YDSXGR_RECFORMAT = common dso_local global i32 0, align 4
@YDSXGR_RECSLOTSR = common dso_local global i32 0, align 4
@YDSXGR_ADCFORMAT = common dso_local global i32 0, align 4
@YDSXGR_ADCSLOTSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ymfpci_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ymfpci_pcm*, align 8
  %6 = alloca %struct.snd_ymfpci_capture_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_ymfpci* %11, %struct.snd_ymfpci** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %4, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 6
  %17 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %16, align 8
  store %struct.snd_ymfpci_pcm* %17, %struct.snd_ymfpci_pcm** %5, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 196608000, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, 2
  store i32 %45, i32* %9, align 4
  %46 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %1
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_pcm_format_width(i32 %53)
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %61 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %86 [
    i32 0, label %68
    i32 1, label %77
  ]

68:                                               ; preds = %64
  %69 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %70 = load i32, i32* @YDSXGR_RECFORMAT, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %69, i32 %70, i32 %71)
  %73 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %74 = load i32, i32* @YDSXGR_RECSLOTSR, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %73, i32 %74, i32 %75)
  br label %86

77:                                               ; preds = %64
  %78 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %79 = load i32, i32* @YDSXGR_ADCFORMAT, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %78, i32 %79, i32 %80)
  %82 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %83 = load i32, i32* @YDSXGR_ADCSLOTSR, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %64, %77, %68
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %124, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %127

90:                                               ; preds = %87
  %91 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %92 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %91, i32 0, i32 0
  %93 = load %struct.snd_ymfpci_capture_bank***, %struct.snd_ymfpci_capture_bank**** %92, align 8
  %94 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %95 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.snd_ymfpci_capture_bank**, %struct.snd_ymfpci_capture_bank*** %93, i64 %97
  %99 = load %struct.snd_ymfpci_capture_bank**, %struct.snd_ymfpci_capture_bank*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.snd_ymfpci_capture_bank*, %struct.snd_ymfpci_capture_bank** %99, i64 %101
  %103 = load %struct.snd_ymfpci_capture_bank*, %struct.snd_ymfpci_capture_bank** %102, align 8
  store %struct.snd_ymfpci_capture_bank* %103, %struct.snd_ymfpci_capture_bank** %6, align 8
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.snd_ymfpci_capture_bank*, %struct.snd_ymfpci_capture_bank** %6, align 8
  %109 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, %struct.snd_ymfpci_capture_bank* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %111 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %114 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %112, %115
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.snd_ymfpci_capture_bank*, %struct.snd_ymfpci_capture_bank** %6, align 8
  %119 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, %struct.snd_ymfpci_capture_bank* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.snd_ymfpci_capture_bank*, %struct.snd_ymfpci_capture_bank** %6, align 8
  %121 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, %struct.snd_ymfpci_capture_bank* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.snd_ymfpci_capture_bank*, %struct.snd_ymfpci_capture_bank** %6, align 8
  %123 = getelementptr inbounds %struct.snd_ymfpci_capture_bank, %struct.snd_ymfpci_capture_bank* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %90
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %87

127:                                              ; preds = %87
  ret i32 0
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
