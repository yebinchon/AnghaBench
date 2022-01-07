; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_gus_card_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_gus_card_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.device = type { i32 }
%struct.snd_gus_card = type { i32 }

@snd_gusextreme_gus_card_create.possible_irqs = internal global [8 x i32] [i32 11, i32 12, i32 15, i32 9, i32 5, i32 7, i32 3, i32 -1], align 16
@snd_gusextreme_gus_card_create.possible_dmas = internal global [6 x i32] [i32 5, i32 6, i32 7, i32 3, i32 1, i32 -1], align 16
@gf1_irq = common dso_local global i64* null, align 8
@SNDRV_AUTO_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"unable to find a free IRQ for GF1\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@dma1 = common dso_local global i64* null, align 8
@SNDRV_AUTO_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to find a free DMA for GF1\0A\00", align 1
@gf1_port = common dso_local global i32* null, align 8
@channels = common dso_local global i32* null, align 8
@pcm_channels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.device*, i32, %struct.snd_gus_card**)* @snd_gusextreme_gus_card_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusextreme_gus_card_create(%struct.snd_card* %0, %struct.device* %1, i32 %2, %struct.snd_gus_card** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_gus_card**, align 8
  store %struct.snd_card* %0, %struct.snd_card** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_gus_card** %3, %struct.snd_gus_card*** %9, align 8
  %10 = load i64*, i64** @gf1_irq, align 8
  %11 = load i32, i32* %8, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_AUTO_IRQ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = call i64 @snd_legacy_find_free_irq(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @snd_gusextreme_gus_card_create.possible_irqs, i64 0, i64 0))
  %19 = load i64*, i64** @gf1_irq, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 %18, i64* %22, align 8
  %23 = load i64*, i64** @gf1_irq, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %90

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i64*, i64** @dma1, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SNDRV_AUTO_DMA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = call i64 @snd_legacy_find_free_dma(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @snd_gusextreme_gus_card_create.possible_dmas, i64 0, i64 0))
  %45 = load i64*, i64** @dma1, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %44, i64* %48, align 8
  %49 = load i64*, i64** @dma1, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %90

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %63 = load i32*, i32** @gf1_port, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i64*, i64** @gf1_irq, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** @dma1, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i32*, i32** @channels, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @pcm_channels, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_gus_card**, %struct.snd_gus_card*** %9, align 8
  %89 = call i32 @snd_gus_create(%struct.snd_card* %62, i32 %67, i64 %72, i64 %77, i32 -1, i32 0, i32 %82, i32 %87, i32 0, %struct.snd_gus_card** %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %61, %55, %29
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @snd_legacy_find_free_irq(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @snd_legacy_find_free_dma(i32*) #1

declare dso_local i32 @snd_gus_create(%struct.snd_card*, i32, i64, i64, i32, i32, i32, i32, i32, %struct.snd_gus_card**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
