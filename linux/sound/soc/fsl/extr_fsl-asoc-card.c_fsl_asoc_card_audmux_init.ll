; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl-asoc-card.c_fsl_asoc_card_audmux_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl-asoc-card.c_fsl_asoc_card_audmux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.fsl_asoc_card_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"mux-int-port\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"mux-int-port missing or invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"mux-ext-port\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"mux-ext-port missing or invalid\0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_RFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_RCLKDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TFSDIR = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_TCLKDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMX_AUDMUX_V2_PTCR_SYN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"audmux internal port setup failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"audmux external port setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.fsl_asoc_card_priv*)* @fsl_asoc_card_audmux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asoc_card_audmux_init(%struct.device_node* %0, %struct.fsl_asoc_card_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.fsl_asoc_card_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.fsl_asoc_card_priv* %1, %struct.fsl_asoc_card_priv** %5, align 8
  %14 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %5, align 8
  %15 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %3, align 4
  br label %215

26:                                               ; preds = %2
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %215

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  %40 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %5, align 8
  %41 = getelementptr inbounds %struct.fsl_asoc_card_priv, %struct.fsl_asoc_card_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %131 [
    i32 131, label %45
    i32 130, label %67
    i32 129, label %88
    i32 128, label %109
  ]

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = or i32 8, %46
  %48 = call i32 @IMX_AUDMUX_V2_PTCR_RFSEL(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = or i32 8, %49
  %51 = call i32 @IMX_AUDMUX_V2_PTCR_RCSEL(i32 %50)
  %52 = or i32 %48, %51
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %53)
  %55 = or i32 %52, %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %56)
  %58 = or i32 %55, %57
  %59 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RFSDIR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RCLKDIR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %139

67:                                               ; preds = %35
  %68 = load i32, i32* %10, align 4
  %69 = or i32 8, %68
  %70 = call i32 @IMX_AUDMUX_V2_PTCR_RCSEL(i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RCLKDIR, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 8, %78
  %80 = call i32 @IMX_AUDMUX_V2_PTCR_RFSEL(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %81)
  %83 = or i32 %80, %82
  %84 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RFSDIR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %8, align 4
  br label %139

88:                                               ; preds = %35
  %89 = load i32, i32* %10, align 4
  %90 = or i32 8, %89
  %91 = call i32 @IMX_AUDMUX_V2_PTCR_RFSEL(i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %92)
  %94 = or i32 %91, %93
  %95 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RFSDIR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 8, %99
  %101 = call i32 @IMX_AUDMUX_V2_PTCR_RCSEL(i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %102)
  %104 = or i32 %101, %103
  %105 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RCLKDIR, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %8, align 4
  br label %139

109:                                              ; preds = %35
  %110 = load i32, i32* %9, align 4
  %111 = or i32 8, %110
  %112 = call i32 @IMX_AUDMUX_V2_PTCR_RFSEL(i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = or i32 8, %113
  %115 = call i32 @IMX_AUDMUX_V2_PTCR_RCSEL(i32 %114)
  %116 = or i32 %112, %115
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %117)
  %119 = or i32 %116, %118
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %120)
  %122 = or i32 %119, %121
  %123 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RFSDIR, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @IMX_AUDMUX_V2_PTCR_RCLKDIR, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %8, align 4
  br label %139

131:                                              ; preds = %35
  %132 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %5, align 8
  %133 = call i64 @fsl_asoc_card_is_ac97(%struct.fsl_asoc_card_priv* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %215

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %109, %88, %67, %45
  %140 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %5, align 8
  %141 = call i64 @fsl_asoc_card_is_ac97(%struct.fsl_asoc_card_priv* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32 %145)
  %147 = or i32 %144, %146
  %148 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TCLKDIR, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @IMX_AUDMUX_V2_PTCR_SYN, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32 %151)
  %153 = or i32 %150, %152
  %154 = load i32, i32* @IMX_AUDMUX_V2_PTCR_TFSDIR, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %143, %139
  %157 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %5, align 8
  %158 = call i64 @fsl_asoc_card_is_ac97(%struct.fsl_asoc_card_priv* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @imx_audmux_v2_configure_port(i32 %163, i32 0, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load %struct.device*, %struct.device** %6, align 8
  %170 = call i32 @dev_err(%struct.device* %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %3, align 4
  br label %215

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172, %156
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %176)
  %178 = call i32 @imx_audmux_v2_configure_port(i32 %174, i32 %175, i32 %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = load %struct.device*, %struct.device** %6, align 8
  %183 = call i32 @dev_err(%struct.device* %182, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %3, align 4
  br label %215

185:                                              ; preds = %173
  %186 = load %struct.fsl_asoc_card_priv*, %struct.fsl_asoc_card_priv** %5, align 8
  %187 = call i64 @fsl_asoc_card_is_ac97(%struct.fsl_asoc_card_priv* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @imx_audmux_v2_configure_port(i32 %192, i32 0, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load %struct.device*, %struct.device** %6, align 8
  %199 = call i32 @dev_err(%struct.device* %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %3, align 4
  br label %215

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %185
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32 %205)
  %207 = call i32 @imx_audmux_v2_configure_port(i32 %203, i32 %204, i32 %206)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %202
  %211 = load %struct.device*, %struct.device** %6, align 8
  %212 = call i32 @dev_err(%struct.device* %211, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %3, align 4
  br label %215

214:                                              ; preds = %202
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %210, %197, %181, %168, %135, %31, %22
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_RFSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_RCSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TFSEL(i32) #1

declare dso_local i32 @IMX_AUDMUX_V2_PTCR_TCSEL(i32) #1

declare dso_local i64 @fsl_asoc_card_is_ac97(%struct.fsl_asoc_card_priv*) #1

declare dso_local i32 @IMX_AUDMUX_V2_PDCR_RXDSEL(i32) #1

declare dso_local i32 @imx_audmux_v2_configure_port(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
