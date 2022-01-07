; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_saif = type { i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"saif\00", align 1
@mxs_saif = common dso_local global %struct.mxs_saif** null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"get wrong saif id\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fsl,saif-master\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"get wrong master id\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Cannot get the clock: %d\0A\00", align 1
@mxs_saif_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to init clocks\0A\00", align 1
@mxs_saif_component = common dso_local global i32 0, align 4
@mxs_saif_dai = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"register DAI failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"register PCM failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_saif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mxs_saif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %201

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mxs_saif* @devm_kzalloc(%struct.TYPE_9__* %20, i32 24, i32 %21)
  store %struct.mxs_saif* %22, %struct.mxs_saif** %5, align 8
  %23 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %24 = icmp ne %struct.mxs_saif* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %201

28:                                               ; preds = %18
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i32 @of_alias_get_id(%struct.device_node* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %201

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %38 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %41 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mxs_saif**, %struct.mxs_saif*** @mxs_saif, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.mxs_saif** %43)
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %201

52:                                               ; preds = %39
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %54, %struct.device_node** %8, align 8
  %55 = load %struct.device_node*, %struct.device_node** %8, align 8
  %56 = icmp ne %struct.device_node* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %59 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %62 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %88

63:                                               ; preds = %52
  %64 = load %struct.device_node*, %struct.device_node** %8, align 8
  %65 = call i32 @of_alias_get_id(%struct.device_node* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %201

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %73 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70
  %75 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %76 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mxs_saif**, %struct.mxs_saif*** @mxs_saif, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.mxs_saif** %78)
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %201

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %57
  %89 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %90 = load %struct.mxs_saif**, %struct.mxs_saif*** @mxs_saif, align 8
  %91 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %92 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mxs_saif*, %struct.mxs_saif** %90, i64 %94
  store %struct.mxs_saif* %89, %struct.mxs_saif** %95, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @devm_clk_get(%struct.TYPE_9__* %97, i32* null)
  %99 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %100 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %102 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %88
  %107 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %108 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %201

116:                                              ; preds = %88
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %117, i32 0)
  %119 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %120 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %122 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @IS_ERR(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %128 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @PTR_ERR(i32 %129)
  store i32 %130, i32* %2, align 4
  br label %201

131:                                              ; preds = %116
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = call i32 @platform_get_irq(%struct.platform_device* %132, i32 0)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %201

138:                                              ; preds = %131
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %142 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %141, i32 0, i32 2
  store %struct.TYPE_9__* %140, %struct.TYPE_9__** %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @mxs_saif_irq, align 4
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @dev_name(%struct.TYPE_9__* %148)
  %150 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %151 = call i32 @devm_request_irq(%struct.TYPE_9__* %144, i32 %145, i32 %146, i32 0, i32 %149, %struct.mxs_saif* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %138
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %201

159:                                              ; preds = %138
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %162 = call i32 @platform_set_drvdata(%struct.platform_device* %160, %struct.mxs_saif* %161)
  %163 = load %struct.mxs_saif*, %struct.mxs_saif** %5, align 8
  %164 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %159
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = call i32 @mxs_saif_mclk_init(%struct.platform_device* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 @dev_warn(%struct.TYPE_9__* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %172, %167
  br label %177

177:                                              ; preds = %176, %159
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @devm_snd_soc_register_component(%struct.TYPE_9__* %179, i32* @mxs_saif_component, i32* @mxs_saif_dai, i32 1)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %185, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %2, align 4
  br label %201

188:                                              ; preds = %177
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @mxs_pcm_platform_register(%struct.TYPE_9__* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %196, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %201

200:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %194, %183, %154, %136, %126, %106, %81, %68, %46, %33, %25, %15
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.mxs_saif* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mxs_saif**) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i32, %struct.mxs_saif*) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxs_saif*) #1

declare dso_local i32 @mxs_saif_mclk_init(%struct.platform_device*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @mxs_pcm_platform_register(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
