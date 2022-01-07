; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_rockchip_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_i2s.c_rockchip_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.rk_i2s_dev = type { i32, i32 }

@I2S_CKR_MSS_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@I2S_CKR_MSS_MASTER = common dso_local global i32 0, align 4
@I2S_CKR_MSS_SLAVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2S_CKR = common dso_local global i32 0, align 4
@I2S_CKR_CKP_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@I2S_CKR_CKP_NEG = common dso_local global i32 0, align 4
@I2S_CKR_CKP_POS = common dso_local global i32 0, align 4
@I2S_TXCR_IBM_MASK = common dso_local global i32 0, align 4
@I2S_TXCR_TFS_MASK = common dso_local global i32 0, align 4
@I2S_TXCR_PBM_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@I2S_TXCR_IBM_RSJM = common dso_local global i32 0, align 4
@I2S_TXCR_IBM_LSJM = common dso_local global i32 0, align 4
@I2S_TXCR_IBM_NORMAL = common dso_local global i32 0, align 4
@I2S_TXCR_TFS_PCM = common dso_local global i32 0, align 4
@I2S_TXCR = common dso_local global i32 0, align 4
@I2S_RXCR_IBM_MASK = common dso_local global i32 0, align 4
@I2S_RXCR_TFS_MASK = common dso_local global i32 0, align 4
@I2S_RXCR_PBM_MASK = common dso_local global i32 0, align 4
@I2S_RXCR_IBM_RSJM = common dso_local global i32 0, align 4
@I2S_RXCR_IBM_LSJM = common dso_local global i32 0, align 4
@I2S_RXCR_IBM_NORMAL = common dso_local global i32 0, align 4
@I2S_RXCR_TFS_PCM = common dso_local global i32 0, align 4
@I2S_RXCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rockchip_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_i2s_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.rk_i2s_dev* @to_info(%struct.snd_soc_dai* %9)
  store %struct.rk_i2s_dev* %10, %struct.rk_i2s_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @I2S_CKR_MSS_MASK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %23 [
    i32 135, label %15
    i32 136, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @I2S_CKR_MSS_MASTER, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @I2S_CKR_MSS_SLAVE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %6, align 8
  %22 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %115

26:                                               ; preds = %19, %15
  %27 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %6, align 8
  %28 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2S_CKR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @I2S_CKR_CKP_MASK, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 131, label %40
  ]

38:                                               ; preds = %26
  %39 = load i32, i32* @I2S_CKR_CKP_NEG, align 4
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %26
  %41 = load i32, i32* @I2S_CKR_CKP_POS, align 4
  store i32 %41, i32* %8, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %115

45:                                               ; preds = %40, %38
  %46 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %6, align 8
  %47 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @I2S_CKR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @I2S_TXCR_IBM_MASK, align 4
  %54 = load i32, i32* @I2S_TXCR_TFS_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @I2S_TXCR_PBM_MASK, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %73 [
    i32 128, label %61
    i32 130, label %63
    i32 132, label %65
    i32 134, label %67
    i32 133, label %69
  ]

61:                                               ; preds = %45
  %62 = load i32, i32* @I2S_TXCR_IBM_RSJM, align 4
  store i32 %62, i32* %8, align 4
  br label %76

63:                                               ; preds = %45
  %64 = load i32, i32* @I2S_TXCR_IBM_LSJM, align 4
  store i32 %64, i32* %8, align 4
  br label %76

65:                                               ; preds = %45
  %66 = load i32, i32* @I2S_TXCR_IBM_NORMAL, align 4
  store i32 %66, i32* %8, align 4
  br label %76

67:                                               ; preds = %45
  %68 = load i32, i32* @I2S_TXCR_TFS_PCM, align 4
  store i32 %68, i32* %8, align 4
  br label %76

69:                                               ; preds = %45
  %70 = load i32, i32* @I2S_TXCR_TFS_PCM, align 4
  %71 = call i32 @I2S_TXCR_PBM_MODE(i32 1)
  %72 = or i32 %70, %71
  store i32 %72, i32* %8, align 4
  br label %76

73:                                               ; preds = %45
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %115

76:                                               ; preds = %69, %67, %65, %63, %61
  %77 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %6, align 8
  %78 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @I2S_TXCR, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @I2S_RXCR_IBM_MASK, align 4
  %85 = load i32, i32* @I2S_RXCR_TFS_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @I2S_RXCR_PBM_MASK, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %91 = and i32 %89, %90
  switch i32 %91, label %104 [
    i32 128, label %92
    i32 130, label %94
    i32 132, label %96
    i32 134, label %98
    i32 133, label %100
  ]

92:                                               ; preds = %76
  %93 = load i32, i32* @I2S_RXCR_IBM_RSJM, align 4
  store i32 %93, i32* %8, align 4
  br label %107

94:                                               ; preds = %76
  %95 = load i32, i32* @I2S_RXCR_IBM_LSJM, align 4
  store i32 %95, i32* %8, align 4
  br label %107

96:                                               ; preds = %76
  %97 = load i32, i32* @I2S_RXCR_IBM_NORMAL, align 4
  store i32 %97, i32* %8, align 4
  br label %107

98:                                               ; preds = %76
  %99 = load i32, i32* @I2S_RXCR_TFS_PCM, align 4
  store i32 %99, i32* %8, align 4
  br label %107

100:                                              ; preds = %76
  %101 = load i32, i32* @I2S_RXCR_TFS_PCM, align 4
  %102 = call i32 @I2S_RXCR_PBM_MODE(i32 1)
  %103 = or i32 %101, %102
  store i32 %103, i32* %8, align 4
  br label %107

104:                                              ; preds = %76
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %115

107:                                              ; preds = %100, %98, %96, %94, %92
  %108 = load %struct.rk_i2s_dev*, %struct.rk_i2s_dev** %6, align 8
  %109 = getelementptr inbounds %struct.rk_i2s_dev, %struct.rk_i2s_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @I2S_RXCR, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @regmap_update_bits(i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %107, %104, %73, %42, %23
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.rk_i2s_dev* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @I2S_TXCR_PBM_MODE(i32) #1

declare dso_local i32 @I2S_RXCR_PBM_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
