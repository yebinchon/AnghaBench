; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_stage2_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_stage2_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.spi_device = type { i32 }
%struct.wm0010_priv = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"wm0010_stage2.bin\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to request stage2 loader: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Downloading %zu byte stage 2 loader\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Starting initial download at %dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Initial download failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Boot ROM error: %x in %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm0010_stage2_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm0010_stage2_load(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.wm0010_priv*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.spi_device* @to_spi_device(i32 %15)
  store %struct.spi_device* %16, %struct.spi_device** %4, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = call %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.wm0010_priv* %18, %struct.wm0010_priv** %5, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @request_firmware(%struct.firmware** %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %2, align 4
  br label %152

32:                                               ; preds = %1
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.firmware*, %struct.firmware** %6, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.firmware*, %struct.firmware** %6, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = load i32, i32* @GFP_DMA, align 4
  %45 = or i32 %43, %44
  %46 = call i32* @kzalloc(i32 %42, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %148

52:                                               ; preds = %32
  %53 = load %struct.firmware*, %struct.firmware** %6, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = load i32, i32* @GFP_DMA, align 4
  %58 = or i32 %56, %57
  %59 = call i32* @kzalloc(i32 %55, i32 %58)
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %145

65:                                               ; preds = %52
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.firmware*, %struct.firmware** %6, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load %struct.firmware*, %struct.firmware** %6, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @memcpy(i32* %66, i32* %70, i32 %73)
  %75 = call i32 @spi_message_init(%struct.spi_message* %7)
  %76 = call i32 @memset(%struct.spi_transfer* %8, i32 0, i32 32)
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32* %77, i32** %78, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32* %79, i32** %80, align 8
  %81 = load %struct.firmware*, %struct.firmware** %6, align 8
  %82 = getelementptr inbounds %struct.firmware, %struct.firmware* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 3
  store i32 8, i32* %85, align 4
  %86 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %87 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 10
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 4
  store i32 %89, i32* %90, align 8
  %91 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %7)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %93 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %99 = call i32 @spi_sync(%struct.spi_device* %98, %struct.spi_message* %7)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %65
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %104 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %142

108:                                              ; preds = %65
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %138, %108
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.firmware*, %struct.firmware** %6, align 8
  %112 = getelementptr inbounds %struct.firmware, %struct.firmware* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %109
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 85
  br i1 %121, label %122, label %137

122:                                              ; preds = %115
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %124 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.wm0010_priv*, %struct.wm0010_priv** %5, align 8
  %134 = call i32 @wm0010_mark_boot_failure(%struct.wm0010_priv* %133)
  %135 = load i32, i32* @EBUSY, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %12, align 4
  br label %142

137:                                              ; preds = %115
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %109

141:                                              ; preds = %109
  br label %142

142:                                              ; preds = %141, %122, %102
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @kfree(i32* %143)
  br label %145

145:                                              ; preds = %142, %62
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @kfree(i32* %146)
  br label %148

148:                                              ; preds = %145, %49
  %149 = load %struct.firmware*, %struct.firmware** %6, align 8
  %150 = call i32 @release_firmware(%struct.firmware* %149)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %25
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @wm0010_mark_boot_failure(%struct.wm0010_priv*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
