; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_es1688_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusextreme.c_snd_gusextreme_es1688_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_es1688 = type { i32 }
%struct.device = type { i32 }

@snd_gusextreme_es1688_create.possible_ports = internal global [3 x i64] [i64 544, i64 576, i64 608], align 16
@snd_gusextreme_es1688_create.possible_irqs = internal global [5 x i32] [i32 5, i32 9, i32 10, i32 7, i32 -1], align 16
@snd_gusextreme_es1688_create.possible_dmas = internal global [4 x i32] [i32 1, i32 3, i32 0, i32 -1], align 16
@irq = common dso_local global i64* null, align 8
@SNDRV_AUTO_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"unable to find a free IRQ for ES1688\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@dma8 = common dso_local global i64* null, align 8
@SNDRV_AUTO_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to find a free DMA for ES1688\0A\00", align 1
@port = common dso_local global i64* null, align 8
@SNDRV_AUTO_PORT = common dso_local global i64 0, align 8
@mpu_port = common dso_local global i32* null, align 8
@mpu_irq = common dso_local global i32* null, align 8
@ES1688_HW_1688 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_es1688*, %struct.device*, i32)* @snd_gusextreme_es1688_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusextreme_es1688_create(%struct.snd_card* %0, %struct.snd_es1688* %1, %struct.device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_es1688*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %6, align 8
  store %struct.snd_es1688* %1, %struct.snd_es1688** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64*, i64** @irq, align 8
  %13 = load i32, i32* %9, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_AUTO_IRQ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = call i64 @snd_legacy_find_free_irq(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @snd_gusextreme_es1688_create.possible_irqs, i64 0, i64 0))
  %21 = load i64*, i64** @irq, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 %20, i64* %24, align 8
  %25 = load i64*, i64** @irq, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %152

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i64*, i64** @dma8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNDRV_AUTO_DMA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %37
  %46 = call i64 @snd_legacy_find_free_dma(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @snd_gusextreme_es1688_create.possible_dmas, i64 0, i64 0))
  %47 = load i64*, i64** @dma8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  %51 = load i64*, i64** @dma8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %152

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i64*, i64** @port, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SNDRV_AUTO_PORT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %63
  %72 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %73 = load %struct.snd_es1688*, %struct.snd_es1688** %7, align 8
  %74 = load i64*, i64** @port, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** @mpu_port, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i64*, i64** @irq, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** @mpu_irq, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i64*, i64** @dma8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @ES1688_HW_1688, align 4
  %100 = call i32 @snd_es1688_create(%struct.snd_card* %72, %struct.snd_es1688* %73, i64 %78, i32 %83, i64 %88, i32 %93, i64 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  br label %152

101:                                              ; preds = %63
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %148, %101
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x i64], [3 x i64]* @snd_gusextreme_es1688_create.possible_ports, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** @port, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64 %106, i64* %110, align 8
  %111 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %112 = load %struct.snd_es1688*, %struct.snd_es1688** %7, align 8
  %113 = load i64*, i64** @port, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i32*, i32** @mpu_port, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i64*, i64** @irq, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i32*, i32** @mpu_irq, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i64*, i64** @dma8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @ES1688_HW_1688, align 4
  %139 = call i32 @snd_es1688_create(%struct.snd_card* %111, %struct.snd_es1688* %112, i64 %117, i32 %122, i64 %127, i32 %132, i64 %137, i32 %138)
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %102
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  %146 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([3 x i64], [3 x i64]* @snd_gusextreme_es1688_create.possible_ports, i64 0, i64 0))
  %147 = icmp slt i32 %145, %146
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi i1 [ false, %140 ], [ %147, %143 ]
  br i1 %149, label %102, label %150

150:                                              ; preds = %148
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %71, %57, %31
  %153 = load i32, i32* %5, align 4
  ret i32 %153
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
