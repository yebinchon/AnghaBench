; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.card_conf = type { i32, i32, i32 }
%struct.dac_conf = type { i32, i32 }
%struct.adc_conf = type { i64, i32, i32, i32 }
%struct.daio_conf = type { i32, i32 }
%struct.trn_conf = type { i32, i32 }

@GCTL = common dso_local global i32 0, align 4
@GCTL_EAC = common dso_local global i32 0, align 4
@GCTL_DBP = common dso_local global i32 0, align 4
@GCTL_TBP = common dso_local global i32 0, align 4
@GCTL_FBP = common dso_local global i32 0, align 4
@GCTL_ET = common dso_local global i32 0, align 4
@GIE = common dso_local global i32 0, align 4
@SRCIP = common dso_local global i32 0, align 4
@GPIOCTL = common dso_local global i32 0, align 4
@ADC_LINEIN = common dso_local global i32 0, align 4
@SRCMCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.card_conf*)* @hw_card_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_card_init(%struct.hw* %0, %struct.card_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.card_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dac_conf, align 4
  %10 = alloca %struct.adc_conf, align 8
  %11 = alloca %struct.daio_conf, align 4
  %12 = alloca %struct.trn_conf, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.card_conf* %1, %struct.card_conf** %5, align 8
  %13 = bitcast %struct.dac_conf* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.adc_conf* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = bitcast %struct.daio_conf* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %struct.trn_conf* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.hw*, %struct.hw** %4, align 8
  %18 = call i32 @hw_card_start(%struct.hw* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %144

23:                                               ; preds = %2
  %24 = load %struct.hw*, %struct.hw** %4, align 8
  %25 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %26 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hw_pll_init(%struct.hw* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %144

33:                                               ; preds = %23
  %34 = load %struct.hw*, %struct.hw** %4, align 8
  %35 = call i32 @hw_auto_init(%struct.hw* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %144

40:                                               ; preds = %33
  %41 = load %struct.hw*, %struct.hw** %4, align 8
  %42 = load i32, i32* @GCTL, align 4
  %43 = call i8* @hw_read_20kx(%struct.hw* %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @GCTL_EAC, align 4
  %46 = call i32 @set_field(i32* %7, i32 %45, i32 1)
  %47 = load i32, i32* @GCTL_DBP, align 4
  %48 = call i32 @set_field(i32* %7, i32 %47, i32 1)
  %49 = load i32, i32* @GCTL_TBP, align 4
  %50 = call i32 @set_field(i32* %7, i32 %49, i32 1)
  %51 = load i32, i32* @GCTL_FBP, align 4
  %52 = call i32 @set_field(i32* %7, i32 %51, i32 1)
  %53 = load i32, i32* @GCTL_ET, align 4
  %54 = call i32 @set_field(i32* %7, i32 %53, i32 1)
  %55 = load %struct.hw*, %struct.hw** %4, align 8
  %56 = load i32, i32* @GCTL, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @hw_write_20kx(%struct.hw* %55, i32 %56, i32 %57)
  %59 = call i32 @mdelay(i32 10)
  %60 = load %struct.hw*, %struct.hw** %4, align 8
  %61 = load i32, i32* @GIE, align 4
  %62 = call i32 @hw_write_20kx(%struct.hw* %60, i32 %61, i32 0)
  %63 = load %struct.hw*, %struct.hw** %4, align 8
  %64 = load i32, i32* @SRCIP, align 4
  %65 = call i32 @hw_write_20kx(%struct.hw* %63, i32 %64, i32 0)
  %66 = call i32 @msleep(i32 30)
  %67 = load %struct.hw*, %struct.hw** %4, align 8
  %68 = getelementptr inbounds %struct.hw, %struct.hw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %82 [
    i32 130, label %70
    i32 129, label %74
    i32 128, label %78
  ]

70:                                               ; preds = %40
  %71 = load %struct.hw*, %struct.hw** %4, align 8
  %72 = load i32, i32* @GPIOCTL, align 4
  %73 = call i32 @hw_write_20kx(%struct.hw* %71, i32 %72, i32 5118)
  br label %86

74:                                               ; preds = %40
  %75 = load %struct.hw*, %struct.hw** %4, align 8
  %76 = load i32, i32* @GPIOCTL, align 4
  %77 = call i32 @hw_write_20kx(%struct.hw* %75, i32 %76, i32 230)
  br label %86

78:                                               ; preds = %40
  %79 = load %struct.hw*, %struct.hw** %4, align 8
  %80 = load i32, i32* @GPIOCTL, align 4
  %81 = call i32 @hw_write_20kx(%struct.hw* %79, i32 %80, i32 194)
  br label %86

82:                                               ; preds = %40
  %83 = load %struct.hw*, %struct.hw** %4, align 8
  %84 = load i32, i32* @GPIOCTL, align 4
  %85 = call i32 @hw_write_20kx(%struct.hw* %83, i32 %84, i32 486)
  br label %86

86:                                               ; preds = %82, %78, %74, %70
  %87 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %88 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %12, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.hw*, %struct.hw** %4, align 8
  %92 = call i32 @hw_trn_init(%struct.hw* %91, %struct.trn_conf* %12)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %144

97:                                               ; preds = %86
  %98 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %99 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %11, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load %struct.hw*, %struct.hw** %4, align 8
  %103 = call i32 @hw_daio_init(%struct.hw* %102, %struct.daio_conf* %11)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %144

108:                                              ; preds = %97
  %109 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %110 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %9, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = load %struct.hw*, %struct.hw** %4, align 8
  %114 = call i32 @hw_dac_init(%struct.hw* %113, %struct.dac_conf* %9)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %144

119:                                              ; preds = %108
  %120 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %121 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @ADC_LINEIN, align 4
  %125 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 1
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.hw*, %struct.hw** %4, align 8
  %128 = call i32 @hw_adc_init(%struct.hw* %127, %struct.adc_conf* %10)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %144

133:                                              ; preds = %119
  %134 = load %struct.hw*, %struct.hw** %4, align 8
  %135 = load i32, i32* @SRCMCTL, align 4
  %136 = call i8* @hw_read_20kx(%struct.hw* %134, i32 %135)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = load %struct.hw*, %struct.hw** %4, align 8
  %141 = load i32, i32* @SRCMCTL, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @hw_write_20kx(%struct.hw* %140, i32 %141, i32 %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %133, %131, %117, %106, %95, %38, %31, %21
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hw_card_start(%struct.hw*) #2

declare dso_local i32 @hw_pll_init(%struct.hw*, i32) #2

declare dso_local i32 @hw_auto_init(%struct.hw*) #2

declare dso_local i8* @hw_read_20kx(%struct.hw*, i32) #2

declare dso_local i32 @set_field(i32*, i32, i32) #2

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @hw_trn_init(%struct.hw*, %struct.trn_conf*) #2

declare dso_local i32 @hw_daio_init(%struct.hw*, %struct.daio_conf*) #2

declare dso_local i32 @hw_dac_init(%struct.hw*, %struct.dac_conf*) #2

declare dso_local i32 @hw_adc_init(%struct.hw*, %struct.adc_conf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
