; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_configure_dai_by_pd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_configure_dai_by_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i8*, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i64, i32 }
%struct.snd_soc_dai_driver = type { i32 }
%struct.resource = type { i64 }
%struct.i2s_platform_data = type { i32, i32, i32, i32 }

@bus_widths = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DW_I2S_QUIRK_16BIT_IDX_OVERRIDE = common dso_local global i32 0, align 4
@I2S_TXDMA = common dso_local global i64 0, align 8
@I2S_RXDMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2s_dev*, %struct.snd_soc_dai_driver*, %struct.resource*, %struct.i2s_platform_data*)* @dw_configure_dai_by_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_configure_dai_by_pd(%struct.dw_i2s_dev* %0, %struct.snd_soc_dai_driver* %1, %struct.resource* %2, %struct.i2s_platform_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_i2s_dev*, align 8
  %7 = alloca %struct.snd_soc_dai_driver*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.i2s_platform_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %6, align 8
  store %struct.snd_soc_dai_driver* %1, %struct.snd_soc_dai_driver** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.i2s_platform_data* %3, %struct.i2s_platform_data** %9, align 8
  %13 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %14 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %17 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @i2s_read_reg(i32 %15, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @COMP1_APB_DATA_WIDTH(i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i8**, i8*** @bus_widths, align 8
  %24 = call i64 @ARRAY_SIZE(i8** %23)
  %25 = icmp uge i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %122

32:                                               ; preds = %4
  %33 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %34 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %7, align 8
  %35 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %9, align 8
  %36 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dw_configure_dai(%struct.dw_i2s_dev* %33, %struct.snd_soc_dai_driver* %34, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %122

43:                                               ; preds = %32
  %44 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %45 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DW_I2S_QUIRK_16BIT_IDX_OVERRIDE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i64 1, i64* %11, align 8
  br label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %9, align 8
  %53 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %56 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  store i32 %54, i32* %58, align 8
  %59 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %9, align 8
  %60 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %63 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  store i32 %61, i32* %65, align 8
  %66 = load %struct.resource*, %struct.resource** %8, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @I2S_TXDMA, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %72 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  store i64 %70, i64* %74, align 8
  %75 = load %struct.resource*, %struct.resource** %8, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @I2S_RXDMA, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %81 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  store i64 %79, i64* %83, align 8
  %84 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %85 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 16, i32* %87, align 8
  %88 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %89 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 16, i32* %91, align 8
  %92 = load i8**, i8*** @bus_widths, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %97 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i8* %95, i8** %99, align 8
  %100 = load i8**, i8*** @bus_widths, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %105 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i8* %103, i8** %107, align 8
  %108 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %9, align 8
  %109 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %112 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = load %struct.i2s_platform_data*, %struct.i2s_platform_data** %9, align 8
  %116 = getelementptr inbounds %struct.i2s_platform_data, %struct.i2s_platform_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %119 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %51, %41, %29
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i64 @i2s_read_reg(i32, i32) #1

declare dso_local i64 @COMP1_APB_DATA_WIDTH(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dw_configure_dai(%struct.dw_i2s_dev*, %struct.snd_soc_dai_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
