; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_tram_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_tram_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32* }

@HCFG_LOCKTANKCACHE_MASK = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@TCB = common dso_local global i32 0, align 4
@TCBS = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_fx8010_tram_setup(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = ashr i32 %11, 13
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %16, %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 8192, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %29, 2
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %142

34:                                               ; preds = %24
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load i32, i32* @HCFG_LOCKTANKCACHE_MASK, align 4
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HCFG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inl(i64 %43)
  %45 = or i32 %38, %44
  %46 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %47 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HCFG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outl(i32 %45, i64 %50)
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %56 = load i32, i32* @TCB, align 4
  %57 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %55, i32 %56, i32 0, i32 0)
  %58 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %59 = load i32, i32* @TCBS, align 4
  %60 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %58, i32 %59, i32 0, i32 0)
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %34
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @snd_dma_free_pages(%struct.TYPE_5__* %70)
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %67, %34
  %81 = load i32, i32* %5, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %141

83:                                               ; preds = %80
  %84 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @snd_dma_pci_data(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 %89, 2
  %91 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %92 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i64 @snd_dma_alloc_pages(i32 %84, i32 %88, i32 %90, %struct.TYPE_5__* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %142

99:                                               ; preds = %83
  %100 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %101 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = mul nsw i32 %105, 2
  %107 = call i32 @memset(i32* %104, i32 0, i32 %106)
  %108 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %109 = load i32, i32* @TCB, align 4
  %110 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %111 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %108, i32 %109, i32 0, i32 %114)
  %116 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %117 = load i32, i32* @TCBS, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %116, i32 %117, i32 0, i32 %118)
  %120 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %121 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %120, i32 0, i32 0
  %122 = call i32 @spin_lock_irq(i32* %121)
  %123 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %124 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @HCFG, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @inl(i64 %127)
  %129 = load i32, i32* @HCFG_LOCKTANKCACHE_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %133 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @HCFG, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outl(i32 %131, i64 %136)
  %138 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %139 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock_irq(i32* %139)
  br label %141

141:                                              ; preds = %99, %80
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %96, %33
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_5__*) #1

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
