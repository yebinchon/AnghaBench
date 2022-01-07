; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_asys_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-pcm.c_mt2701_asys_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { %struct.mtk_base_afe_irq*, %struct.mtk_base_afe_memif*, i32 }
%struct.mtk_base_afe_irq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_base_afe_memif = type { i64, i32 }

@ASYS_IRQ_STATUS = common dso_local global i32 0, align 4
@ASYS_IRQ_CLR = common dso_local global i32 0, align 4
@MT2701_MEMIF_NUM = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mt2701_asys_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_asys_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_base_afe*, align 8
  %7 = alloca %struct.mtk_base_afe_memif*, align 8
  %8 = alloca %struct.mtk_base_afe_irq*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mtk_base_afe*
  store %struct.mtk_base_afe* %11, %struct.mtk_base_afe** %6, align 8
  %12 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %13 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ASYS_IRQ_STATUS, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %9)
  %17 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %18 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ASYS_IRQ_CLR, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %62, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MT2701_MEMIF_NUM, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %28, i32 0, i32 1
  %30 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %30, i64 %32
  store %struct.mtk_base_afe_memif* %33, %struct.mtk_base_afe_memif** %7, align 8
  %34 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %62

39:                                               ; preds = %27
  %40 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %40, i32 0, i32 0
  %42 = load %struct.mtk_base_afe_irq*, %struct.mtk_base_afe_irq** %41, align 8
  %43 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %44 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.mtk_base_afe_irq, %struct.mtk_base_afe_irq* %42, i64 %45
  store %struct.mtk_base_afe_irq* %46, %struct.mtk_base_afe_irq** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mtk_base_afe_irq*, %struct.mtk_base_afe_irq** %8, align 8
  %49 = getelementptr inbounds %struct.mtk_base_afe_irq, %struct.mtk_base_afe_irq* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %47, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %39
  %57 = load %struct.mtk_base_afe_memif*, %struct.mtk_base_afe_memif** %7, align 8
  %58 = getelementptr inbounds %struct.mtk_base_afe_memif, %struct.mtk_base_afe_memif* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snd_pcm_period_elapsed(i32 %59)
  br label %61

61:                                               ; preds = %56, %39
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %23

65:                                               ; preds = %23
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
