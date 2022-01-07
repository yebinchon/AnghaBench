; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cmipci_pcm = type { i32, i32, i64, i64, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CM_REG_CH1_FRAME2 = common dso_local global i32 0, align 4
@CM_REG_CH0_FRAME2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid PCM pointer: %#x\0A\00", align 1
@SNDRV_PCM_POS_XRUN = common dso_local global i64 0, align 8
@CM_REG_CH0_FRAME1 = common dso_local global i32 0, align 4
@CM_REG_CH1_FRAME1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cmipci*, %struct.cmipci_pcm*, %struct.snd_pcm_substream*)* @snd_cmipci_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_cmipci_pcm_pointer(%struct.cmipci* %0, %struct.cmipci_pcm* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %5, align 8
  store %struct.cmipci_pcm* %1, %struct.cmipci_pcm** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %12 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %13 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %84

17:                                               ; preds = %3
  %18 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %19 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @CM_REG_CH1_FRAME2, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @CM_REG_CH0_FRAME2, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %42, %26
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @snd_cmipci_read_w(%struct.cmipci* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %54

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %47 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @SNDRV_PCM_POS_XRUN, align 8
  store i64 %53, i64* %4, align 8
  br label %84

54:                                               ; preds = %40
  %55 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %56 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  %60 = sub i32 %57, %59
  %61 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %62 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = lshr i32 %60, %63
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %8, align 8
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %82

72:                                               ; preds = %54
  %73 = load i64, i64* %8, align 8
  %74 = mul i64 %73, 2
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %74, %80
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %72, %54
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %45, %16
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i32 @snd_cmipci_read_w(%struct.cmipci*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
