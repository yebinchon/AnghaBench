; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_mcbsp = type { i32, %struct.TYPE_2__*, i64, %struct.omap_mcbsp_reg_cfg }
%struct.TYPE_2__ = type { i64 }
%struct.omap_mcbsp_reg_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FREE = common dso_local global i32 0, align 4
@RFIG = common dso_local global i32 0, align 4
@XFIG = common dso_local global i32 0, align 4
@XDMAEN = common dso_local global i32 0, align 4
@XDISABLE = common dso_local global i32 0, align 4
@RFULL_CYCLE = common dso_local global i32 0, align 4
@RDMAEN = common dso_local global i32 0, align 4
@RDISABLE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@FSXM = common dso_local global i32 0, align 4
@FSRM = common dso_local global i32 0, align 4
@CLKXM = common dso_local global i32 0, align 4
@CLKRM = common dso_local global i32 0, align 4
@FSGM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@FSXP = common dso_local global i32 0, align 4
@FSRP = common dso_local global i32 0, align 4
@CLKXP = common dso_local global i32 0, align 4
@CLKRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @omap_mcbsp_dai_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_mcbsp*, align 8
  %7 = alloca %struct.omap_mcbsp_reg_cfg*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.omap_mcbsp* %10, %struct.omap_mcbsp** %6, align 8
  %11 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %6, align 8
  %12 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %11, i32 0, i32 3
  store %struct.omap_mcbsp_reg_cfg* %12, %struct.omap_mcbsp_reg_cfg** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %6, align 8
  %14 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %217

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %6, align 8
  %21 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %23 = call i32 @memset(%struct.omap_mcbsp_reg_cfg* %22, i32 0, i32 32)
  %24 = call i32 @XINTM(i32 3)
  %25 = load i32, i32* @FREE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %28 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = call i32 @RINTM(i32 3)
  %32 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %33 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %6, align 8
  %37 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %18
  %43 = load i32, i32* @RFIG, align 4
  %44 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %45 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @XFIG, align 4
  %49 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %50 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %42, %18
  %54 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %6, align 8
  %55 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = call i32 @DXENDLY(i32 1)
  %62 = load i32, i32* @XDMAEN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @XDISABLE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @RFULL_CYCLE, align 4
  %69 = load i32, i32* @RDMAEN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RDISABLE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %74 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %60, %53
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %78 = and i32 %76, %77
  switch i32 %78, label %128 [
    i32 133, label %79
    i32 130, label %90
    i32 135, label %106
    i32 134, label %117
  ]

79:                                               ; preds = %75
  %80 = call i32 @RDATDLY(i32 1)
  %81 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %82 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = call i32 @XDATDLY(i32 1)
  %86 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %87 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %131

90:                                               ; preds = %75
  %91 = call i32 @RDATDLY(i32 0)
  %92 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %93 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = call i32 @XDATDLY(i32 0)
  %97 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %98 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = call i32 @RJUST(i32 2)
  %102 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %103 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  store i32 1, i32* %8, align 4
  br label %131

106:                                              ; preds = %75
  %107 = call i32 @RDATDLY(i32 1)
  %108 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %109 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = call i32 @XDATDLY(i32 1)
  %113 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %114 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  store i32 1, i32* %8, align 4
  br label %131

117:                                              ; preds = %75
  %118 = call i32 @RDATDLY(i32 0)
  %119 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %120 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = call i32 @XDATDLY(i32 0)
  %124 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %125 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  store i32 1, i32* %8, align 4
  br label %131

128:                                              ; preds = %75
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %217

131:                                              ; preds = %117, %106, %90, %79
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %134 = and i32 %132, %133
  switch i32 %134, label %166 [
    i32 136, label %135
    i32 137, label %152
    i32 138, label %165
  ]

135:                                              ; preds = %131
  %136 = load i32, i32* @FSXM, align 4
  %137 = load i32, i32* @FSRM, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @CLKXM, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @CLKRM, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %144 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* @FSGM, align 4
  %148 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %149 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %169

152:                                              ; preds = %131
  %153 = load i32, i32* @FSGM, align 4
  %154 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %155 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* @FSXM, align 4
  %159 = load i32, i32* @FSRM, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %162 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %169

165:                                              ; preds = %131
  br label %169

166:                                              ; preds = %131
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %217

169:                                              ; preds = %165, %152, %135
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %172 = and i32 %170, %171
  switch i32 %172, label %202 [
    i32 128, label %173
    i32 129, label %185
    i32 131, label %193
    i32 132, label %201
  ]

173:                                              ; preds = %169
  %174 = load i32, i32* @FSXP, align 4
  %175 = load i32, i32* @FSRP, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @CLKXP, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @CLKRP, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %182 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %205

185:                                              ; preds = %169
  %186 = load i32, i32* @CLKXP, align 4
  %187 = load i32, i32* @CLKRP, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %205

193:                                              ; preds = %169
  %194 = load i32, i32* @FSXP, align 4
  %195 = load i32, i32* @FSRP, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %198 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %205

201:                                              ; preds = %169
  br label %205

202:                                              ; preds = %169
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %217

205:                                              ; preds = %201, %193, %185, %173
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load i32, i32* @FSXP, align 4
  %210 = load i32, i32* @FSRP, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %213 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = xor i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %208, %205
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %202, %166, %128, %17
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local %struct.omap_mcbsp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @memset(%struct.omap_mcbsp_reg_cfg*, i32, i32) #1

declare dso_local i32 @XINTM(i32) #1

declare dso_local i32 @RINTM(i32) #1

declare dso_local i32 @DXENDLY(i32) #1

declare dso_local i32 @RDATDLY(i32) #1

declare dso_local i32 @XDATDLY(i32) #1

declare dso_local i32 @RJUST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
