; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra30_ahub_allocate_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra30_ahub_allocate_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, %struct.tegra30_ahub_cif_conf*)* }
%struct.tegra30_ahub_cif_conf = type { i32, i32, i64, i64, i32, i64, i64, i64, i8*, i8*, i64 }

@ahub = common dso_local global %struct.TYPE_4__* null, align 8
@TEGRA30_AHUB_CHANNEL_CTRL_COUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TEGRA30_AHUB_TXCIF_APBIF_TX0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tx%d\00", align 1
@TEGRA30_AHUB_CHANNEL_TXFIFO = common dso_local global i64 0, align 8
@TEGRA30_AHUB_CHANNEL_TXFIFO_STRIDE = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_STRIDE = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_TX_THRESHOLD_MASK = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_TX_PACK_MASK = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_TX_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_TX_PACK_EN = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_TX_PACK_16 = common dso_local global i32 0, align 4
@TEGRA30_AUDIOCIF_BITS_16 = common dso_local global i8* null, align 8
@TEGRA30_AUDIOCIF_DIRECTION_TX = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CIF_TX_CTRL = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CIF_TX_CTRL_STRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra30_ahub_allocate_tx_fifo(i32* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tegra30_ahub_cif_conf, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ahub, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_COUNT, align 4
  %18 = call i32 @find_first_zero_bit(i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_COUNT, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %111

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ahub, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__set_bit(i32 %26, i32 %29)
  %31 = load i32, i32* @TEGRA30_AHUB_TXCIF_APBIF_TX0, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ahub, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TEGRA30_AHUB_CHANNEL_TXFIFO, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @TEGRA30_AHUB_CHANNEL_TXFIFO_STRIDE, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ahub, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pm_runtime_get_sync(i32 %52)
  %54 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_STRIDE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %54, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @tegra30_apbif_read(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_TX_THRESHOLD_MASK, align 4
  %62 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_TX_PACK_MASK, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_TX_THRESHOLD_SHIFT, align 4
  %68 = shl i32 7, %67
  %69 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_TX_PACK_EN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_TX_PACK_16, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @tegra30_apbif_write(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 10
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 0
  store i32 2, i32* %79, align 8
  %80 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 1
  store i32 2, i32* %80, align 4
  %81 = load i8*, i8** @TEGRA30_AUDIOCIF_BITS_16, align 8
  %82 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 9
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** @TEGRA30_AUDIOCIF_BITS_16, align 8
  %84 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 8
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 6
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @TEGRA30_AUDIOCIF_DIRECTION_TX, align 4
  %89 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 4
  store i32 %88, i32* %89, align 8
  %90 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, %struct.tegra30_ahub_cif_conf* %13, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @TEGRA30_AHUB_CIF_TX_CTRL, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @TEGRA30_AHUB_CIF_TX_CTRL_STRIDE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %92, %95
  store i32 %96, i32* %11, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ahub, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (i32, i32, %struct.tegra30_ahub_cif_conf*)*, i32 (i32, i32, %struct.tegra30_ahub_cif_conf*)** %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ahub, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 %101(i32 %104, i32 %105, %struct.tegra30_ahub_cif_conf* %13)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ahub, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @pm_runtime_put(i32 %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %25, %22
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tegra30_apbif_read(i32) #1

declare dso_local i32 @tegra30_apbif_write(i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
