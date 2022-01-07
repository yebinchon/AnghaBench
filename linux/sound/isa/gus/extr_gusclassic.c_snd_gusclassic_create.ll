; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusclassic.c_snd_gusclassic_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusclassic.c_snd_gusclassic_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.device = type { i32 }
%struct.snd_gus_card = type { i32 }

@snd_gusclassic_create.possible_ports = internal global [5 x i64] [i64 544, i64 560, i64 576, i64 592, i64 608], align 16
@snd_gusclassic_create.possible_irqs = internal global [9 x i32] [i32 5, i32 11, i32 12, i32 9, i32 7, i32 15, i32 3, i32 4, i32 -1], align 16
@snd_gusclassic_create.possible_dmas = internal global [6 x i32] [i32 5, i32 6, i32 7, i32 1, i32 3, i32 -1], align 16
@irq = common dso_local global i64* null, align 8
@SNDRV_AUTO_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unable to find a free IRQ\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@dma1 = common dso_local global i64* null, align 8
@SNDRV_AUTO_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to find a free DMA1\0A\00", align 1
@dma2 = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to find a free DMA2\0A\00", align 1
@port = common dso_local global i64* null, align 8
@SNDRV_AUTO_PORT = common dso_local global i64 0, align 8
@channels = common dso_local global i32* null, align 8
@pcm_channels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.device*, i32, %struct.snd_gus_card**)* @snd_gusclassic_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusclassic_create(%struct.snd_card* %0, %struct.device* %1, i32 %2, %struct.snd_gus_card** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_gus_card**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_gus_card** %3, %struct.snd_gus_card*** %9, align 8
  %12 = load i64*, i64** @irq, align 8
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_AUTO_IRQ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = call i64 @snd_legacy_find_free_irq(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @snd_gusclassic_create.possible_irqs, i64 0, i64 0))
  %21 = load i64*, i64** @irq, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 %20, i64* %24, align 8
  %25 = load i64*, i64** @irq, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %186

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i64*, i64** @dma1, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNDRV_AUTO_DMA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %37
  %46 = call i64 @snd_legacy_find_free_dma(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @snd_gusclassic_create.possible_dmas, i64 0, i64 0))
  %47 = load i64*, i64** @dma1, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  %51 = load i64*, i64** @dma1, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %186

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i64*, i64** @dma2, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SNDRV_AUTO_DMA, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = call i64 @snd_legacy_find_free_dma(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @snd_gusclassic_create.possible_dmas, i64 0, i64 0))
  %73 = load i64*, i64** @dma2, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  %77 = load i64*, i64** @dma2, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %186

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i64*, i64** @port, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SNDRV_AUTO_PORT, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %89
  %98 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %99 = load i64*, i64** @port, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** @irq, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** @dma1, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** @dma2, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i32*, i32** @channels, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** @pcm_channels, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.snd_gus_card**, %struct.snd_gus_card*** %9, align 8
  %130 = call i32 @snd_gus_create(%struct.snd_card* %98, i64 %103, i64 %108, i64 %113, i64 %118, i32 0, i32 %123, i32 %128, i32 0, %struct.snd_gus_card** %129)
  store i32 %130, i32* %5, align 4
  br label %186

131:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %182, %131
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [5 x i64], [5 x i64]* @snd_gusclassic_create.possible_ports, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** @port, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  store i64 %136, i64* %140, align 8
  %141 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %142 = load i64*, i64** @port, align 8
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** @irq, align 8
  %148 = load i32, i32* %8, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** @dma1, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** @dma2, align 8
  %158 = load i32, i32* %8, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i32*, i32** @channels, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** @pcm_channels, align 8
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.snd_gus_card**, %struct.snd_gus_card*** %9, align 8
  %173 = call i32 @snd_gus_create(%struct.snd_card* %141, i64 %146, i64 %151, i64 %156, i64 %161, i32 0, i32 %166, i32 %171, i32 0, %struct.snd_gus_card** %172)
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %132
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  %180 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([5 x i64], [5 x i64]* @snd_gusclassic_create.possible_ports, i64 0, i64 0))
  %181 = icmp slt i32 %179, %180
  br label %182

182:                                              ; preds = %177, %174
  %183 = phi i1 [ false, %174 ], [ %181, %177 ]
  br i1 %183, label %132, label %184

184:                                              ; preds = %182
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %97, %83, %57, %31
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i64 @snd_legacy_find_free_irq(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @snd_legacy_find_free_dma(i32*) #1

declare dso_local i32 @snd_gus_create(%struct.snd_card*, i64, i64, i64, i64, i32, i32, i32, i32, %struct.snd_gus_card**) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
