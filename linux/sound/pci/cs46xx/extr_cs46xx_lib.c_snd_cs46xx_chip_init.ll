; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BA0_CLKCR1 = common dso_local global i32 0, align 4
@BA0_SERMC1 = common dso_local global i32 0, align 4
@BA0_SERACC = common dso_local global i32 0, align 4
@SERACC_HSP = common dso_local global i32 0, align 4
@SERACC_CHIP_TYPE_1_03 = common dso_local global i32 0, align 4
@BA0_ACCTL = common dso_local global i32 0, align 4
@ACCTL_RSTN = common dso_local global i32 0, align 4
@ACCTL_ESYN = common dso_local global i32 0, align 4
@SERMC1_PTC_AC97 = common dso_local global i32 0, align 4
@BA0_PLLCC = common dso_local global i32 0, align 4
@PLLCC_LPF_1050_2780_KHZ = common dso_local global i32 0, align 4
@PLLCC_CDR_73_104_MHZ = common dso_local global i32 0, align 4
@BA0_PLLM = common dso_local global i32 0, align 4
@BA0_CLKCR2 = common dso_local global i32 0, align 4
@CLKCR2_PDIVS_8 = common dso_local global i32 0, align 4
@CLKCR1_PLLP = common dso_local global i32 0, align 4
@CLKCR1_SWCE = common dso_local global i32 0, align 4
@BA0_SERBCF = common dso_local global i32 0, align 4
@SERBCF_HBP = common dso_local global i32 0, align 4
@BA0_SERC1 = common dso_local global i32 0, align 4
@SERC1_SO1F_AC97 = common dso_local global i32 0, align 4
@SERC1_SO1EN = common dso_local global i32 0, align 4
@BA0_SERC2 = common dso_local global i32 0, align 4
@SERC2_SI1F_AC97 = common dso_local global i32 0, align 4
@SERMC1_MSPE = common dso_local global i32 0, align 4
@BA0_ACSTS = common dso_local global i32 0, align 4
@ACSTS_CRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"create - never read codec ready from AC'97\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"it is not probably bug, try to use CS4236 driver\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACCTL_VFRM = common dso_local global i32 0, align 4
@BA0_ACISV = common dso_local global i32 0, align 4
@ACISV_ISV3 = common dso_local global i32 0, align 4
@ACISV_ISV4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"create - never read ISV3 & ISV4 from AC'97\0A\00", align 1
@BA0_ACOSV = common dso_local global i32 0, align 4
@ACOSV_SLV3 = common dso_local global i32 0, align 4
@ACOSV_SLV4 = common dso_local global i32 0, align 4
@BA0_ACCTL2 = common dso_local global i32 0, align 4
@BA0_ACSTS2 = common dso_local global i32 0, align 4
@BA0_SERC3 = common dso_local global i32 0, align 4
@BA0_SERC4 = common dso_local global i32 0, align 4
@BA0_SERC5 = common dso_local global i32 0, align 4
@BA0_SERC6 = common dso_local global i32 0, align 4
@BA0_SERC7 = common dso_local global i32 0, align 4
@SERACC_CHIP_TYPE_2_0 = common dso_local global i32 0, align 4
@SERACC_TWO_CODECS = common dso_local global i32 0, align 4
@SERC7_ASDI2EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs46xx*)* @snd_cs46xx_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_chip_init(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %6 = load i32, i32* @BA0_CLKCR1, align 4
  %7 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %5, i32 %6, i32 0)
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %9 = load i32, i32* @BA0_SERMC1, align 4
  %10 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %8, i32 %9, i32 0)
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %12 = load i32, i32* @BA0_SERACC, align 4
  %13 = load i32, i32* @SERACC_HSP, align 4
  %14 = load i32, i32* @SERACC_CHIP_TYPE_1_03, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %11, i32 %12, i32 %15)
  %17 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %18 = load i32, i32* @BA0_ACCTL, align 4
  %19 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %17, i32 %18, i32 0)
  %20 = call i32 @udelay(i32 50)
  %21 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %22 = load i32, i32* @BA0_ACCTL, align 4
  %23 = load i32, i32* @ACCTL_RSTN, align 4
  %24 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %21, i32 %22, i32 %23)
  %25 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %26 = load i32, i32* @BA0_ACCTL, align 4
  %27 = load i32, i32* @ACCTL_ESYN, align 4
  %28 = load i32, i32* @ACCTL_RSTN, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %25, i32 %26, i32 %29)
  %31 = call i32 @mdelay(i32 10)
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %33 = load i32, i32* @BA0_SERMC1, align 4
  %34 = load i32, i32* @SERMC1_PTC_AC97, align 4
  %35 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %32, i32 %33, i32 %34)
  %36 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %37 = load i32, i32* @BA0_PLLCC, align 4
  %38 = load i32, i32* @PLLCC_LPF_1050_2780_KHZ, align 4
  %39 = load i32, i32* @PLLCC_CDR_73_104_MHZ, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %36, i32 %37, i32 %40)
  %42 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %43 = load i32, i32* @BA0_PLLM, align 4
  %44 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %42, i32 %43, i32 58)
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %46 = load i32, i32* @BA0_CLKCR2, align 4
  %47 = load i32, i32* @CLKCR2_PDIVS_8, align 4
  %48 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %45, i32 %46, i32 %47)
  %49 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %50 = load i32, i32* @BA0_CLKCR1, align 4
  %51 = load i32, i32* @CLKCR1_PLLP, align 4
  %52 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %49, i32 %50, i32 %51)
  %53 = call i32 @msleep(i32 100)
  %54 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %55 = load i32, i32* @BA0_CLKCR1, align 4
  %56 = load i32, i32* @CLKCR1_PLLP, align 4
  %57 = load i32, i32* @CLKCR1_SWCE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %54, i32 %55, i32 %58)
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %61 = load i32, i32* @BA0_SERBCF, align 4
  %62 = load i32, i32* @SERBCF_HBP, align 4
  %63 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %60, i32 %61, i32 %62)
  %64 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %65 = call i32 @snd_cs46xx_clear_serial_FIFOs(%struct.snd_cs46xx* %64)
  %66 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %67 = load i32, i32* @BA0_SERC1, align 4
  %68 = load i32, i32* @SERC1_SO1F_AC97, align 4
  %69 = load i32, i32* @SERC1_SO1EN, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %66, i32 %67, i32 %70)
  %72 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %73 = load i32, i32* @BA0_SERC2, align 4
  %74 = load i32, i32* @SERC2_SI1F_AC97, align 4
  %75 = load i32, i32* @SERC1_SO1EN, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %72, i32 %73, i32 %76)
  %78 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %79 = load i32, i32* @BA0_SERMC1, align 4
  %80 = load i32, i32* @SERMC1_PTC_AC97, align 4
  %81 = load i32, i32* @SERMC1_MSPE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %78, i32 %79, i32 %82)
  %84 = call i32 @mdelay(i32 5)
  store i32 150, i32* %4, align 4
  br label %85

85:                                               ; preds = %97, %1
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %4, align 4
  %88 = icmp sgt i32 %86, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %91 = load i32, i32* @BA0_ACSTS, align 4
  %92 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %90, i32 %91)
  %93 = load i32, i32* @ACSTS_CRDY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %114

97:                                               ; preds = %89
  %98 = call i32 @msleep(i32 10)
  br label %85

99:                                               ; preds = %85
  %100 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %101 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %107 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %158

114:                                              ; preds = %96
  %115 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %116 = load i32, i32* @BA0_ACCTL, align 4
  %117 = load i32, i32* @ACCTL_VFRM, align 4
  %118 = load i32, i32* @ACCTL_ESYN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @ACCTL_RSTN, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %115, i32 %116, i32 %121)
  store i32 150, i32* %4, align 4
  br label %123

123:                                              ; preds = %140, %114
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %4, align 4
  %126 = icmp sgt i32 %124, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %129 = load i32, i32* @BA0_ACISV, align 4
  %130 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %128, i32 %129)
  %131 = load i32, i32* @ACISV_ISV3, align 4
  %132 = load i32, i32* @ACISV_ISV4, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = load i32, i32* @ACISV_ISV3, align 4
  %136 = load i32, i32* @ACISV_ISV4, align 4
  %137 = or i32 %135, %136
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  br label %151

140:                                              ; preds = %127
  %141 = call i32 @msleep(i32 10)
  br label %123

142:                                              ; preds = %123
  %143 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %144 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_err(i32 %147, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %158

151:                                              ; preds = %139
  %152 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %153 = load i32, i32* @BA0_ACOSV, align 4
  %154 = load i32, i32* @ACOSV_SLV3, align 4
  %155 = load i32, i32* @ACOSV_SLV4, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %152, i32 %153, i32 %156)
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %151, %142, %99
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_cs46xx_clear_serial_FIFOs(%struct.snd_cs46xx*) #1

declare dso_local i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
