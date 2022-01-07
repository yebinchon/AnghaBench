; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_dma.c_snd_gf1_dma_transfer_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_dma.c_snd_gf1_dma_transfer_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block* }
%struct.snd_gf1_dma_block = type { i64, i32, i32, i32, %struct.snd_gf1_dma_block*, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"addr = 0x%x, buffer = 0x%lx, count = 0x%x, cmd = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"gus->gf1.dma_data_pcm_last = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gus->gf1.dma_data_pcm = 0x%lx\0A\00", align 1
@SNDRV_GF1_DMA_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_dma_transfer_block(%struct.snd_gus_card* %0, %struct.snd_gf1_dma_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca %struct.snd_gf1_dma_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_gf1_dma_block*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %6, align 8
  store %struct.snd_gf1_dma_block* %1, %struct.snd_gf1_dma_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call %struct.snd_gf1_dma_block* @kmalloc(i32 40, i32 %19)
  store %struct.snd_gf1_dma_block* %20, %struct.snd_gf1_dma_block** %11, align 8
  %21 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %22 = icmp ne %struct.snd_gf1_dma_block* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %164

26:                                               ; preds = %18
  %27 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %28 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %7, align 8
  %29 = bitcast %struct.snd_gf1_dma_block* %27 to i8*
  %30 = bitcast %struct.snd_gf1_dma_block* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 40, i1 false)
  %31 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %32 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %31, i32 0, i32 4
  store %struct.snd_gf1_dma_block* null, %struct.snd_gf1_dma_block** %32, align 8
  %33 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %34 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %38 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %41 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %44 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, i64, ...) @snd_printdd(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %39, i32 %42, i64 %45)
  %47 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %48 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %49, align 8
  %51 = ptrtoint %struct.snd_gf1_dma_block* %50 to i64
  %52 = call i32 (i8*, i64, ...) @snd_printdd(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %54 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %55, align 8
  %57 = ptrtoint %struct.snd_gf1_dma_block* %56 to i64
  %58 = call i32 (i8*, i64, ...) @snd_printdd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %60 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %59, i32 0, i32 0
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %26
  %66 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %67 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %68, align 8
  %70 = icmp ne %struct.snd_gf1_dma_block* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %73 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %74 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %75, align 8
  %77 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %76, i32 0, i32 4
  store %struct.snd_gf1_dma_block* %72, %struct.snd_gf1_dma_block** %77, align 8
  %78 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %79 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %80 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store %struct.snd_gf1_dma_block* %78, %struct.snd_gf1_dma_block** %81, align 8
  br label %90

82:                                               ; preds = %65
  %83 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %84 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %85 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store %struct.snd_gf1_dma_block* %83, %struct.snd_gf1_dma_block** %86, align 8
  %87 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %88 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store %struct.snd_gf1_dma_block* %83, %struct.snd_gf1_dma_block** %89, align 8
  br label %90

90:                                               ; preds = %82, %71
  br label %117

91:                                               ; preds = %26
  %92 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %93 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %94, align 8
  %96 = icmp ne %struct.snd_gf1_dma_block* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %99 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %100 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %101, align 8
  %103 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %102, i32 0, i32 4
  store %struct.snd_gf1_dma_block* %98, %struct.snd_gf1_dma_block** %103, align 8
  %104 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %105 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %106 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store %struct.snd_gf1_dma_block* %104, %struct.snd_gf1_dma_block** %107, align 8
  br label %116

108:                                              ; preds = %91
  %109 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %110 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %111 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store %struct.snd_gf1_dma_block* %109, %struct.snd_gf1_dma_block** %112, align 8
  %113 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %114 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store %struct.snd_gf1_dma_block* %109, %struct.snd_gf1_dma_block** %115, align 8
  br label %116

116:                                              ; preds = %108, %97
  br label %117

117:                                              ; preds = %116, %90
  %118 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %119 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SNDRV_GF1_DMA_TRIGGER, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %159, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* @SNDRV_GF1_DMA_TRIGGER, align 4
  %127 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %128 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %133 = call %struct.snd_gf1_dma_block* @snd_gf1_dma_next_block(%struct.snd_gus_card* %132)
  store %struct.snd_gf1_dma_block* %133, %struct.snd_gf1_dma_block** %11, align 8
  %134 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %135 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %134, i32 0, i32 0
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %139 = icmp eq %struct.snd_gf1_dma_block* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %164

141:                                              ; preds = %125
  %142 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %143 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %144 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %147 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %150 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %153 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i16
  %156 = call i32 @snd_gf1_dma_program(%struct.snd_gus_card* %142, i32 %145, i32 %148, i32 %151, i16 zeroext %155)
  %157 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %11, align 8
  %158 = call i32 @kfree(%struct.snd_gf1_dma_block* %157)
  store i32 0, i32* %5, align 4
  br label %164

159:                                              ; preds = %117
  %160 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %161 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %160, i32 0, i32 0
  %162 = load i64, i64* %10, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %159, %141, %140, %23
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local %struct.snd_gf1_dma_block* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_printdd(i8*, i64, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.snd_gf1_dma_block* @snd_gf1_dma_next_block(%struct.snd_gus_card*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_gf1_dma_program(%struct.snd_gus_card*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @kfree(%struct.snd_gf1_dma_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
