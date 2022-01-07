; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_downloadDSPCode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_downloadDSPCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"K1212_DEBUG: DSP download is starting... [%s]\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@K1212_STATE_DSP_IN_PROCESS = common dso_local global i64 0, align 8
@K1212_DB_StartDSPDownload = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"K1212_DEBUG: Start DSP Download RC = %d [%s]\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@CARD_BOOT_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_korg1212*)* @snd_korg1212_downloadDSPCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_downloadDSPCode(%struct.snd_korg1212* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_korg1212*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_korg1212* %0, %struct.snd_korg1212** %3, align 8
  %5 = load i32*, i32** @stateName, align 8
  %6 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %7 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, i32, ...) @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %13 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @K1212_STATE_DSP_IN_PROCESS, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %20 = load i64, i64* @K1212_STATE_DSP_IN_PROCESS, align 8
  %21 = call i32 @snd_korg1212_setCardState(%struct.snd_korg1212* %19, i64 %20)
  %22 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %23 = load i32, i32* @K1212_DB_StartDSPDownload, align 4
  %24 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %25 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @UpperWordSwap(i32 %27)
  %29 = call i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212* %22, i32 %23, i32 %28, i32 0, i32 0, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** @stateName, align 8
  %35 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %36 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %32, %18
  %42 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %43 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %45 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %48 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @HZ, align 4
  %51 = load i32, i32* @CARD_BOOT_TIMEOUT, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 @wait_event_timeout(i32 %46, i64 %49, i32 %52)
  %54 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %55 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %64

61:                                               ; preds = %41
  %62 = load %struct.snd_korg1212*, %struct.snd_korg1212** %3, align 8
  %63 = call i32 @snd_korg1212_OnDSPDownloadComplete(%struct.snd_korg1212* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %58, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32, ...) #1

declare dso_local i32 @snd_korg1212_setCardState(%struct.snd_korg1212*, i64) #1

declare dso_local i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UpperWordSwap(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @snd_korg1212_OnDSPDownloadComplete(%struct.snd_korg1212*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
