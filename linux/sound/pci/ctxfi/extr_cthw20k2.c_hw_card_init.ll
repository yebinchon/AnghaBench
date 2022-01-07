; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_card_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64 }
%struct.card_conf = type { i32, i32, i32 }
%struct.dac_conf = type { i32, i32 }
%struct.adc_conf = type { i64, i32, i32, i32 }
%struct.daio_conf = type { i32, i32 }
%struct.trn_conf = type { i32, i32 }

@GLOBAL_CNTL_GCTL = common dso_local global i32 0, align 4
@GCTL_DBP = common dso_local global i32 0, align 4
@GCTL_TBP = common dso_local global i32 0, align 4
@GCTL_FBP = common dso_local global i32 0, align 4
@GCTL_DPC = common dso_local global i32 0, align 4
@GIE = common dso_local global i32 0, align 4
@SRC_IP = common dso_local global i32 0, align 4
@CTSB1270 = common dso_local global i64 0, align 8
@GPIO_CTRL = common dso_local global i32 0, align 4
@MIXER_AR_ENABLE = common dso_local global i32 0, align 4
@ADC_LINEIN = common dso_local global i32 0, align 4
@SRC_MCTL = common dso_local global i32 0, align 4
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
  store i32 0, i32* %8, align 4
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
  br label %137

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
  br label %137

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
  br label %137

40:                                               ; preds = %33
  %41 = load %struct.hw*, %struct.hw** %4, align 8
  %42 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %43 = call i8* @hw_read_20kx(%struct.hw* %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @GCTL_DBP, align 4
  %46 = call i32 @set_field(i32* %7, i32 %45, i32 1)
  %47 = load i32, i32* @GCTL_TBP, align 4
  %48 = call i32 @set_field(i32* %7, i32 %47, i32 1)
  %49 = load i32, i32* @GCTL_FBP, align 4
  %50 = call i32 @set_field(i32* %7, i32 %49, i32 1)
  %51 = load i32, i32* @GCTL_DPC, align 4
  %52 = call i32 @set_field(i32* %7, i32 %51, i32 0)
  %53 = load %struct.hw*, %struct.hw** %4, align 8
  %54 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @hw_write_20kx(%struct.hw* %53, i32 %54, i32 %55)
  %57 = load %struct.hw*, %struct.hw** %4, align 8
  %58 = load i32, i32* @GIE, align 4
  %59 = call i32 @hw_write_20kx(%struct.hw* %57, i32 %58, i32 0)
  %60 = load %struct.hw*, %struct.hw** %4, align 8
  %61 = load i32, i32* @SRC_IP, align 4
  %62 = call i32 @hw_write_20kx(%struct.hw* %60, i32 %61, i32 0)
  %63 = load %struct.hw*, %struct.hw** %4, align 8
  %64 = getelementptr inbounds %struct.hw, %struct.hw* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CTSB1270, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %40
  %69 = load %struct.hw*, %struct.hw** %4, align 8
  %70 = load i32, i32* @GPIO_CTRL, align 4
  %71 = call i32 @hw_write_20kx(%struct.hw* %69, i32 %70, i32 55298)
  br label %76

72:                                               ; preds = %40
  %73 = load %struct.hw*, %struct.hw** %4, align 8
  %74 = load i32, i32* @GPIO_CTRL, align 4
  %75 = call i32 @hw_write_20kx(%struct.hw* %73, i32 %74, i32 40543)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.hw*, %struct.hw** %4, align 8
  %78 = load i32, i32* @MIXER_AR_ENABLE, align 4
  %79 = call i32 @hw_write_20kx(%struct.hw* %77, i32 %78, i32 1)
  %80 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %81 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.trn_conf, %struct.trn_conf* %12, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.hw*, %struct.hw** %4, align 8
  %85 = call i32 @hw_trn_init(%struct.hw* %84, %struct.trn_conf* %12)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %137

90:                                               ; preds = %76
  %91 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %92 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.daio_conf, %struct.daio_conf* %11, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.hw*, %struct.hw** %4, align 8
  %96 = call i32 @hw_daio_init(%struct.hw* %95, %struct.daio_conf* %11)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %137

101:                                              ; preds = %90
  %102 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %103 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %9, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = load %struct.hw*, %struct.hw** %4, align 8
  %107 = call i32 @hw_dac_init(%struct.hw* %106, %struct.dac_conf* %9)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %137

112:                                              ; preds = %101
  %113 = load %struct.card_conf*, %struct.card_conf** %5, align 8
  %114 = getelementptr inbounds %struct.card_conf, %struct.card_conf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @ADC_LINEIN, align 4
  %118 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 1
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.adc_conf, %struct.adc_conf* %10, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.hw*, %struct.hw** %4, align 8
  %121 = call i32 @hw_adc_init(%struct.hw* %120, %struct.adc_conf* %10)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %3, align 4
  br label %137

126:                                              ; preds = %112
  %127 = load %struct.hw*, %struct.hw** %4, align 8
  %128 = load i32, i32* @SRC_MCTL, align 4
  %129 = call i8* @hw_read_20kx(%struct.hw* %127, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load %struct.hw*, %struct.hw** %4, align 8
  %134 = load i32, i32* @SRC_MCTL, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @hw_write_20kx(%struct.hw* %133, i32 %134, i32 %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %126, %124, %110, %99, %88, %38, %31, %21
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hw_card_start(%struct.hw*) #2

declare dso_local i32 @hw_pll_init(%struct.hw*, i32) #2

declare dso_local i32 @hw_auto_init(%struct.hw*) #2

declare dso_local i8* @hw_read_20kx(%struct.hw*, i32) #2

declare dso_local i32 @set_field(i32*, i32, i32) #2

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #2

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
