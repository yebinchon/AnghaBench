; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_setup_corb_rirb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_setup_corb_rirb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i64, i64, i32* }
%struct.TYPE_6__ = type { i64, i64 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BAR0 = common dso_local global i32 0, align 4
@RIRBCTL = common dso_local global i32 0, align 4
@CORBCTL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CORBLBASE = common dso_local global i32 0, align 4
@CORBUBASE = common dso_local global i32 0, align 4
@CORBSIZE = common dso_local global i32 0, align 4
@CORBWP = common dso_local global i32 0, align 4
@CORBRP = common dso_local global i32 0, align 4
@LOLA_RBRWP_CLR = common dso_local global i32 0, align 4
@LOLA_RBCTL_DMA_EN = common dso_local global i8 0, align 1
@CORBSTS = common dso_local global i32 0, align 4
@LOLA_CORB_INT_MASK = common dso_local global i8 0, align 1
@RIRBLBASE = common dso_local global i32 0, align 4
@RIRBUBASE = common dso_local global i32 0, align 4
@RIRBSIZE = common dso_local global i32 0, align 4
@RIRBWP = common dso_local global i32 0, align 4
@RINTCNT = common dso_local global i32 0, align 4
@LOLA_RBCTL_IRQ_EN = common dso_local global i8 0, align 1
@RIRBSTS = common dso_local global i32 0, align 4
@LOLA_RIRB_INT_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*)* @setup_corb_rirb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_corb_rirb(%struct.lola* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lola*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.lola* %0, %struct.lola** %3, align 8
  %7 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %8 = load %struct.lola*, %struct.lola** %3, align 8
  %9 = getelementptr inbounds %struct.lola, %struct.lola* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @snd_dma_pci_data(i32 %10)
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load %struct.lola*, %struct.lola** %3, align 8
  %14 = getelementptr inbounds %struct.lola, %struct.lola* %13, i32 0, i32 2
  %15 = call i32 @snd_dma_alloc_pages(i32 %7, i32 %11, i32 %12, %struct.TYPE_6__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %207

20:                                               ; preds = %1
  %21 = load %struct.lola*, %struct.lola** %3, align 8
  %22 = getelementptr inbounds %struct.lola, %struct.lola* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.lola*, %struct.lola** %3, align 8
  %26 = getelementptr inbounds %struct.lola, %struct.lola* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = load %struct.lola*, %struct.lola** %3, align 8
  %29 = getelementptr inbounds %struct.lola, %struct.lola* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load %struct.lola*, %struct.lola** %3, align 8
  %34 = getelementptr inbounds %struct.lola, %struct.lola* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32* %32, i32** %35, align 8
  %36 = load %struct.lola*, %struct.lola** %3, align 8
  %37 = getelementptr inbounds %struct.lola, %struct.lola* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 2048
  %41 = load %struct.lola*, %struct.lola** %3, align 8
  %42 = getelementptr inbounds %struct.lola, %struct.lola* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i64 %40, i64* %43, align 8
  %44 = load %struct.lola*, %struct.lola** %3, align 8
  %45 = getelementptr inbounds %struct.lola, %struct.lola* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 2048
  %49 = inttoptr i64 %48 to i32*
  %50 = load %struct.lola*, %struct.lola** %3, align 8
  %51 = getelementptr inbounds %struct.lola, %struct.lola* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32* %49, i32** %52, align 8
  %53 = load %struct.lola*, %struct.lola** %3, align 8
  %54 = load i32, i32* @BAR0, align 4
  %55 = load i32, i32* @RIRBCTL, align 4
  %56 = call i32 @lola_writeb(%struct.lola* %53, i32 %54, i32 %55, i8 zeroext 0)
  %57 = load %struct.lola*, %struct.lola** %3, align 8
  %58 = load i32, i32* @BAR0, align 4
  %59 = load i32, i32* @CORBCTL, align 4
  %60 = call i32 @lola_writeb(%struct.lola* %57, i32 %58, i32 %59, i8 zeroext 0)
  %61 = load i64, i64* @jiffies, align 8
  %62 = call i64 @msecs_to_jiffies(i32 200)
  %63 = add i64 %61, %62
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %79, %20
  %65 = load %struct.lola*, %struct.lola** %3, align 8
  %66 = load i32, i32* @BAR0, align 4
  %67 = load i32, i32* @RIRBCTL, align 4
  %68 = call zeroext i8 @lola_readb(%struct.lola* %65, i32 %66, i32 %67)
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load %struct.lola*, %struct.lola** %3, align 8
  %72 = load i32, i32* @BAR0, align 4
  %73 = load i32, i32* @CORBCTL, align 4
  %74 = call zeroext i8 @lola_readb(%struct.lola* %71, i32 %72, i32 %73)
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %84

77:                                               ; preds = %70, %64
  %78 = call i32 @msleep(i32 1)
  br label %79

79:                                               ; preds = %77
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @time_before(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %64, label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.lola*, %struct.lola** %3, align 8
  %86 = load i32, i32* @BAR0, align 4
  %87 = load i32, i32* @CORBLBASE, align 4
  %88 = load %struct.lola*, %struct.lola** %3, align 8
  %89 = getelementptr inbounds %struct.lola, %struct.lola* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @lola_writel(%struct.lola* %85, i32 %86, i32 %87, i32 %92)
  %94 = load %struct.lola*, %struct.lola** %3, align 8
  %95 = load i32, i32* @BAR0, align 4
  %96 = load i32, i32* @CORBUBASE, align 4
  %97 = load %struct.lola*, %struct.lola** %3, align 8
  %98 = getelementptr inbounds %struct.lola, %struct.lola* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @upper_32_bits(i64 %100)
  %102 = call i32 @lola_writel(%struct.lola* %94, i32 %95, i32 %96, i32 %101)
  %103 = load %struct.lola*, %struct.lola** %3, align 8
  %104 = load i32, i32* @BAR0, align 4
  %105 = load i32, i32* @CORBSIZE, align 4
  %106 = call i32 @lola_writeb(%struct.lola* %103, i32 %104, i32 %105, i8 zeroext 2)
  %107 = load %struct.lola*, %struct.lola** %3, align 8
  %108 = load i32, i32* @BAR0, align 4
  %109 = load i32, i32* @CORBWP, align 4
  %110 = call i32 @lola_writew(%struct.lola* %107, i32 %108, i32 %109, i32 0)
  %111 = load %struct.lola*, %struct.lola** %3, align 8
  %112 = load i32, i32* @BAR0, align 4
  %113 = load i32, i32* @CORBRP, align 4
  %114 = load i32, i32* @LOLA_RBRWP_CLR, align 4
  %115 = call i32 @lola_writew(%struct.lola* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.lola*, %struct.lola** %3, align 8
  %117 = load i32, i32* @BAR0, align 4
  %118 = load i32, i32* @CORBCTL, align 4
  %119 = load i8, i8* @LOLA_RBCTL_DMA_EN, align 1
  %120 = call i32 @lola_writeb(%struct.lola* %116, i32 %117, i32 %118, i8 zeroext %119)
  %121 = load %struct.lola*, %struct.lola** %3, align 8
  %122 = load i32, i32* @BAR0, align 4
  %123 = load i32, i32* @CORBSTS, align 4
  %124 = call zeroext i8 @lola_readb(%struct.lola* %121, i32 %122, i32 %123)
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* @LOLA_CORB_INT_MASK, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %125, %127
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %5, align 1
  %130 = load i8, i8* %5, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %84
  %133 = load %struct.lola*, %struct.lola** %3, align 8
  %134 = load i32, i32* @BAR0, align 4
  %135 = load i32, i32* @CORBSTS, align 4
  %136 = load i8, i8* %5, align 1
  %137 = call i32 @lola_writeb(%struct.lola* %133, i32 %134, i32 %135, i8 zeroext %136)
  br label %138

138:                                              ; preds = %132, %84
  %139 = load %struct.lola*, %struct.lola** %3, align 8
  %140 = getelementptr inbounds %struct.lola, %struct.lola* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.lola*, %struct.lola** %3, align 8
  %143 = load i32, i32* @BAR0, align 4
  %144 = load i32, i32* @RIRBLBASE, align 4
  %145 = load %struct.lola*, %struct.lola** %3, align 8
  %146 = getelementptr inbounds %struct.lola, %struct.lola* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @lola_writel(%struct.lola* %142, i32 %143, i32 %144, i32 %149)
  %151 = load %struct.lola*, %struct.lola** %3, align 8
  %152 = load i32, i32* @BAR0, align 4
  %153 = load i32, i32* @RIRBUBASE, align 4
  %154 = load %struct.lola*, %struct.lola** %3, align 8
  %155 = getelementptr inbounds %struct.lola, %struct.lola* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @upper_32_bits(i64 %157)
  %159 = call i32 @lola_writel(%struct.lola* %151, i32 %152, i32 %153, i32 %158)
  %160 = load %struct.lola*, %struct.lola** %3, align 8
  %161 = load i32, i32* @BAR0, align 4
  %162 = load i32, i32* @RIRBSIZE, align 4
  %163 = call i32 @lola_writeb(%struct.lola* %160, i32 %161, i32 %162, i8 zeroext 2)
  %164 = load %struct.lola*, %struct.lola** %3, align 8
  %165 = load i32, i32* @BAR0, align 4
  %166 = load i32, i32* @RIRBWP, align 4
  %167 = load i32, i32* @LOLA_RBRWP_CLR, align 4
  %168 = call i32 @lola_writew(%struct.lola* %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.lola*, %struct.lola** %3, align 8
  %170 = load i32, i32* @BAR0, align 4
  %171 = load i32, i32* @RINTCNT, align 4
  %172 = call i32 @lola_writew(%struct.lola* %169, i32 %170, i32 %171, i32 1)
  %173 = load %struct.lola*, %struct.lola** %3, align 8
  %174 = load i32, i32* @BAR0, align 4
  %175 = load i32, i32* @RIRBCTL, align 4
  %176 = load i8, i8* @LOLA_RBCTL_DMA_EN, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8, i8* @LOLA_RBCTL_IRQ_EN, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %177, %179
  %181 = trunc i32 %180 to i8
  %182 = call i32 @lola_writeb(%struct.lola* %173, i32 %174, i32 %175, i8 zeroext %181)
  %183 = load %struct.lola*, %struct.lola** %3, align 8
  %184 = load i32, i32* @BAR0, align 4
  %185 = load i32, i32* @RIRBSTS, align 4
  %186 = call zeroext i8 @lola_readb(%struct.lola* %183, i32 %184, i32 %185)
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* @LOLA_RIRB_INT_MASK, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %187, %189
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %5, align 1
  %192 = load i8, i8* %5, align 1
  %193 = icmp ne i8 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %138
  %195 = load %struct.lola*, %struct.lola** %3, align 8
  %196 = load i32, i32* @BAR0, align 4
  %197 = load i32, i32* @RIRBSTS, align 4
  %198 = load i8, i8* %5, align 1
  %199 = call i32 @lola_writeb(%struct.lola* %195, i32 %196, i32 %197, i8 zeroext %198)
  br label %200

200:                                              ; preds = %194, %138
  %201 = load %struct.lola*, %struct.lola** %3, align 8
  %202 = getelementptr inbounds %struct.lola, %struct.lola* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i64 0, i64* %203, align 8
  %204 = load %struct.lola*, %struct.lola** %3, align 8
  %205 = getelementptr inbounds %struct.lola, %struct.lola* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %200, %18
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @lola_writeb(%struct.lola*, i32, i32, i8 zeroext) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local zeroext i8 @lola_readb(%struct.lola*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @lola_writel(%struct.lola*, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lola_writew(%struct.lola*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
