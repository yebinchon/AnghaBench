; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_dai.c_siu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_siu_dai.c_siu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siu_info = type { i8*, i8*, i8*, i8*, i32, i32* }
%struct.platform_device = type { i32, i32 }
%struct.firmware = type { i32, i32 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@siu_i2s_data = common dso_local global %struct.siu_info* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"siu_spb.bin\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SIU region already claimed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PRAM_SIZE = common dso_local global i64 0, align 8
@XRAM_OFFSET = common dso_local global i64 0, align 8
@XRAM_SIZE = common dso_local global i64 0, align 8
@YRAM_OFFSET = common dso_local global i64 0, align 8
@YRAM_SIZE = common dso_local global i64 0, align 8
@REG_OFFSET = common dso_local global i64 0, align 8
@siu_component = common dso_local global i32 0, align 4
@siu_i2s_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @siu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.siu_info*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.siu_info* @devm_kmalloc(i32* %10, i32 48, i32 %11)
  store %struct.siu_info* %12, %struct.siu_info** %7, align 8
  %13 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %14 = icmp ne %struct.siu_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %164

18:                                               ; preds = %1
  %19 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  store %struct.siu_info* %19, %struct.siu_info** @siu_i2s_data, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %23 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %22, i32 0, i32 5
  store i32* %21, i32** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @request_firmware(%struct.firmware** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %164

31:                                               ; preds = %18
  %32 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %33 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %32, i32 0, i32 4
  %34 = load %struct.firmware*, %struct.firmware** %4, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.firmware*, %struct.firmware** %4, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %33, i32 %36, i32 %39)
  %41 = load %struct.firmware*, %struct.firmware** %4, align 8
  %42 = call i32 @release_firmware(%struct.firmware* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %5, align 8
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = icmp ne %struct.resource* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %31
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %164

51:                                               ; preds = %31
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %5, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = call i64 @resource_size(%struct.resource* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.resource* @devm_request_mem_region(i32* %53, i64 %56, i64 %58, i32 %61)
  store %struct.resource* %62, %struct.resource** %6, align 8
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %164

71:                                               ; preds = %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.resource*, %struct.resource** %5, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PRAM_SIZE, align 8
  %78 = call i8* @devm_ioremap(i32* %73, i64 %76, i64 %77)
  %79 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %80 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %82 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %71
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %164

88:                                               ; preds = %71
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.resource*, %struct.resource** %5, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @XRAM_OFFSET, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i64, i64* @XRAM_SIZE, align 8
  %97 = call i8* @devm_ioremap(i32* %90, i64 %95, i64 %96)
  %98 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %99 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %101 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %88
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %164

107:                                              ; preds = %88
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.resource*, %struct.resource** %5, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @YRAM_OFFSET, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i64, i64* @YRAM_SIZE, align 8
  %116 = call i8* @devm_ioremap(i32* %109, i64 %114, i64 %115)
  %117 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %118 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %120 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %107
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %164

126:                                              ; preds = %107
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.resource*, %struct.resource** %5, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @REG_OFFSET, align 8
  %133 = add nsw i64 %131, %132
  %134 = load %struct.resource*, %struct.resource** %5, align 8
  %135 = call i64 @resource_size(%struct.resource* %134)
  %136 = load i64, i64* @REG_OFFSET, align 8
  %137 = sub nsw i64 %135, %136
  %138 = call i8* @devm_ioremap(i32* %128, i64 %133, i64 %137)
  %139 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %140 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %142 = getelementptr inbounds %struct.siu_info, %struct.siu_info* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %126
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %164

148:                                              ; preds = %126
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load %struct.siu_info*, %struct.siu_info** %7, align 8
  %152 = call i32 @dev_set_drvdata(i32* %150, %struct.siu_info* %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @devm_snd_soc_register_component(i32* %154, i32* @siu_component, i32* @siu_i2s_dai, i32 1)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %164

160:                                              ; preds = %148
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @pm_runtime_enable(i32* %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %160, %158, %145, %123, %104, %85, %65, %48, %29, %15
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.siu_info* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.resource* @devm_request_mem_region(i32*, i64, i64, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @devm_ioremap(i32*, i64, i64) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.siu_info*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
