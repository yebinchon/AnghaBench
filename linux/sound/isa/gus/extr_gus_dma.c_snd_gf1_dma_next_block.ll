; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_dma.c_snd_gf1_dma_next_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_dma.c_snd_gf1_dma_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gf1_dma_block = type { i32, i32, %struct.snd_gf1_dma_block* }
%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_gf1_dma_block* (%struct.snd_gus_card*)* @snd_gf1_dma_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_gf1_dma_block* @snd_gf1_dma_next_block(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca %struct.snd_gf1_dma_block*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %4 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %5 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  %7 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %6, align 8
  %8 = icmp ne %struct.snd_gf1_dma_block* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %11 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %12, align 8
  store %struct.snd_gf1_dma_block* %13, %struct.snd_gf1_dma_block** %3, align 8
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %16, align 8
  %18 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %19 = icmp eq %struct.snd_gf1_dma_block* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %9
  %21 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %22 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store %struct.snd_gf1_dma_block* null, %struct.snd_gf1_dma_block** %23, align 8
  %24 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %25 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store %struct.snd_gf1_dma_block* null, %struct.snd_gf1_dma_block** %26, align 8
  br label %34

27:                                               ; preds = %9
  %28 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %29 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %28, i32 0, i32 2
  %30 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %29, align 8
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %32 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store %struct.snd_gf1_dma_block* %30, %struct.snd_gf1_dma_block** %33, align 8
  br label %34

34:                                               ; preds = %27, %20
  br label %69

35:                                               ; preds = %1
  %36 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %37 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %38, align 8
  %40 = icmp ne %struct.snd_gf1_dma_block* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %43 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %44, align 8
  store %struct.snd_gf1_dma_block* %45, %struct.snd_gf1_dma_block** %3, align 8
  %46 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %47 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %48, align 8
  %50 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %51 = icmp eq %struct.snd_gf1_dma_block* %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %54 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store %struct.snd_gf1_dma_block* null, %struct.snd_gf1_dma_block** %55, align 8
  %56 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %57 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store %struct.snd_gf1_dma_block* null, %struct.snd_gf1_dma_block** %58, align 8
  br label %66

59:                                               ; preds = %41
  %60 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %61 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %60, i32 0, i32 2
  %62 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %61, align 8
  %63 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %64 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store %struct.snd_gf1_dma_block* %62, %struct.snd_gf1_dma_block** %65, align 8
  br label %66

66:                                               ; preds = %59, %52
  br label %68

67:                                               ; preds = %35
  store %struct.snd_gf1_dma_block* null, %struct.snd_gf1_dma_block** %3, align 8
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %71 = icmp ne %struct.snd_gf1_dma_block* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %74 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %77 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  %80 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %83 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  br label %85

85:                                               ; preds = %72, %69
  %86 = load %struct.snd_gf1_dma_block*, %struct.snd_gf1_dma_block** %3, align 8
  ret %struct.snd_gf1_dma_block* %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
