; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688.c_snd_es1688_legacy_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688.c_snd_es1688_legacy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_es1688* }
%struct.snd_es1688 = type { i32 }
%struct.device = type { i32 }

@snd_es1688_legacy_create.possible_ports = internal global [3 x i64] [i64 544, i64 576, i64 608], align 16
@snd_es1688_legacy_create.possible_irqs = internal global [5 x i32] [i32 5, i32 9, i32 10, i32 7, i32 -1], align 16
@snd_es1688_legacy_create.possible_dmas = internal global [4 x i32] [i32 1, i32 3, i32 0, i32 -1], align 16
@irq = common dso_local global i64* null, align 8
@SNDRV_AUTO_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unable to find a free IRQ\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@dma8 = common dso_local global i64* null, align 8
@SNDRV_AUTO_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to find a free DMA\0A\00", align 1
@port = common dso_local global i64* null, align 8
@SNDRV_AUTO_PORT = common dso_local global i64 0, align 8
@mpu_port = common dso_local global i32* null, align 8
@mpu_irq = common dso_local global i32* null, align 8
@ES1688_HW_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.device*, i32)* @snd_es1688_legacy_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_legacy_create(%struct.snd_card* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_es1688*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %12 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %11, i32 0, i32 0
  %13 = load %struct.snd_es1688*, %struct.snd_es1688** %12, align 8
  store %struct.snd_es1688* %13, %struct.snd_es1688** %8, align 8
  %14 = load i64*, i64** @irq, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNDRV_AUTO_IRQ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = call i64 @snd_legacy_find_free_irq(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @snd_es1688_legacy_create.possible_irqs, i64 0, i64 0))
  %23 = load i64*, i64** @irq, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 %22, i64* %26, align 8
  %27 = load i64*, i64** @irq, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %154

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i64*, i64** @dma8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_AUTO_DMA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %39
  %48 = call i64 @snd_legacy_find_free_dma(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_es1688_legacy_create.possible_dmas, i64 0, i64 0))
  %49 = load i64*, i64** @dma8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %48, i64* %52, align 8
  %53 = load i64*, i64** @dma8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %154

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i64*, i64** @port, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SNDRV_AUTO_PORT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %65
  %74 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %75 = load %struct.snd_es1688*, %struct.snd_es1688** %8, align 8
  %76 = load i64*, i64** @port, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32*, i32** @mpu_port, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i64*, i64** @irq, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** @mpu_irq, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i64*, i64** @dma8, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @ES1688_HW_AUTO, align 4
  %102 = call i32 @snd_es1688_create(%struct.snd_card* %74, %struct.snd_es1688* %75, i64 %80, i32 %85, i64 %90, i32 %95, i64 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %154

103:                                              ; preds = %65
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %150, %103
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* @snd_es1688_legacy_create.possible_ports, i64 0, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** @port, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %108, i64* %112, align 8
  %113 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %114 = load %struct.snd_es1688*, %struct.snd_es1688** %8, align 8
  %115 = load i64*, i64** @port, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i32*, i32** @mpu_port, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i64*, i64** @irq, align 8
  %126 = load i32, i32* %7, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i32*, i32** @mpu_irq, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i64*, i64** @dma8, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @ES1688_HW_AUTO, align 4
  %141 = call i32 @snd_es1688_create(%struct.snd_card* %113, %struct.snd_es1688* %114, i64 %119, i32 %124, i64 %129, i32 %134, i64 %139, i32 %140)
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %104
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  %148 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([3 x i64], [3 x i64]* @snd_es1688_legacy_create.possible_ports, i64 0, i64 0))
  %149 = icmp slt i32 %147, %148
  br label %150

150:                                              ; preds = %145, %142
  %151 = phi i1 [ false, %142 ], [ %149, %145 ]
  br i1 %151, label %104, label %152

152:                                              ; preds = %150
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %73, %59, %33
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @snd_legacy_find_free_irq(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @snd_legacy_find_free_dma(i32*) #1

declare dso_local i32 @snd_es1688_create(%struct.snd_card*, %struct.snd_es1688*, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
