; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_first_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_tegra.c_hda_tegra_first_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i16, i16, i16, i16, i64, %struct.snd_card* }
%struct.snd_card = type { i8*, i8*, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hdac_bus = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"tegra-hda\00", align 1
@azx_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"unable to request IRQ %d, disabling device\0A\00", align 1
@GCAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"chipset global capabilities = 0x%x\0A\00", align 1
@NUM_PLAYBACK_SD = common dso_local global i16 0, align 2
@NUM_CAPTURE_SD = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to initialize streams: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to allocate stream pages: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no codecs found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"truncating shortname for card\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s at 0x%lx irq %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.platform_device*)* @hda_tegra_first_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_tegra_first_init(%struct.azx* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.hdac_bus*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.device_node*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %14 = load %struct.azx*, %struct.azx** %4, align 8
  %15 = call %struct.hdac_bus* @azx_bus(%struct.azx* %14)
  store %struct.hdac_bus* %15, %struct.hdac_bus** %6, align 8
  %16 = load %struct.azx*, %struct.azx** %4, align 8
  %17 = getelementptr inbounds %struct.azx, %struct.azx* %16, i32 0, i32 5
  %18 = load %struct.snd_card*, %struct.snd_card** %17, align 8
  store %struct.snd_card* %18, %struct.snd_card** %7, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = call i32 @platform_get_irq(%struct.platform_device* %19, i32 0)
  store i32 %20, i32* %10, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  store %struct.device_node* %24, %struct.device_node** %13, align 8
  %25 = load %struct.azx*, %struct.azx** %4, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = call i32 @hda_tegra_init_chip(%struct.azx* %25, %struct.platform_device* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %199

32:                                               ; preds = %2
  %33 = load %struct.azx*, %struct.azx** %4, align 8
  %34 = getelementptr inbounds %struct.azx, %struct.azx* %33, i32 0, i32 5
  %35 = load %struct.snd_card*, %struct.snd_card** %34, align 8
  %36 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @azx_interrupt, align 4
  %40 = load i32, i32* @IRQF_SHARED, align 4
  %41 = load i32, i32* @KBUILD_MODNAME, align 4
  %42 = load %struct.azx*, %struct.azx** %4, align 8
  %43 = call i32 @devm_request_irq(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, %struct.azx* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.azx*, %struct.azx** %4, align 8
  %48 = getelementptr inbounds %struct.azx, %struct.azx* %47, i32 0, i32 5
  %49 = load %struct.snd_card*, %struct.snd_card** %48, align 8
  %50 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %199

55:                                               ; preds = %32
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %58 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %60 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @synchronize_irq(i32 %61)
  %63 = load %struct.azx*, %struct.azx** %4, align 8
  %64 = load i32, i32* @GCAP, align 4
  %65 = call zeroext i16 @azx_readw(%struct.azx* %63, i32 %64)
  store i16 %65, i16* %9, align 2
  %66 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %67 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i16, i16* %9, align 2
  %70 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %69)
  %71 = load i16, i16* %9, align 2
  %72 = zext i16 %71 to i32
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 15
  %75 = trunc i32 %74 to i16
  %76 = load %struct.azx*, %struct.azx** %4, align 8
  %77 = getelementptr inbounds %struct.azx, %struct.azx* %76, i32 0, i32 0
  store i16 %75, i16* %77, align 8
  %78 = load i16, i16* %9, align 2
  %79 = zext i16 %78 to i32
  %80 = ashr i32 %79, 12
  %81 = and i32 %80, 15
  %82 = trunc i32 %81 to i16
  %83 = load %struct.azx*, %struct.azx** %4, align 8
  %84 = getelementptr inbounds %struct.azx, %struct.azx* %83, i32 0, i32 1
  store i16 %82, i16* %84, align 2
  %85 = load %struct.azx*, %struct.azx** %4, align 8
  %86 = getelementptr inbounds %struct.azx, %struct.azx* %85, i32 0, i32 1
  %87 = load i16, i16* %86, align 2
  %88 = icmp ne i16 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %55
  %90 = load %struct.azx*, %struct.azx** %4, align 8
  %91 = getelementptr inbounds %struct.azx, %struct.azx* %90, i32 0, i32 0
  %92 = load i16, i16* %91, align 8
  %93 = icmp ne i16 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load i16, i16* @NUM_PLAYBACK_SD, align 2
  %96 = load %struct.azx*, %struct.azx** %4, align 8
  %97 = getelementptr inbounds %struct.azx, %struct.azx* %96, i32 0, i32 1
  store i16 %95, i16* %97, align 2
  %98 = load i16, i16* @NUM_CAPTURE_SD, align 2
  %99 = load %struct.azx*, %struct.azx** %4, align 8
  %100 = getelementptr inbounds %struct.azx, %struct.azx* %99, i32 0, i32 0
  store i16 %98, i16* %100, align 8
  br label %101

101:                                              ; preds = %94, %89, %55
  %102 = load %struct.azx*, %struct.azx** %4, align 8
  %103 = getelementptr inbounds %struct.azx, %struct.azx* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load %struct.azx*, %struct.azx** %4, align 8
  %105 = getelementptr inbounds %struct.azx, %struct.azx* %104, i32 0, i32 0
  %106 = load i16, i16* %105, align 8
  %107 = load %struct.azx*, %struct.azx** %4, align 8
  %108 = getelementptr inbounds %struct.azx, %struct.azx* %107, i32 0, i32 2
  store i16 %106, i16* %108, align 4
  %109 = load %struct.azx*, %struct.azx** %4, align 8
  %110 = getelementptr inbounds %struct.azx, %struct.azx* %109, i32 0, i32 1
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = load %struct.azx*, %struct.azx** %4, align 8
  %114 = getelementptr inbounds %struct.azx, %struct.azx* %113, i32 0, i32 0
  %115 = load i16, i16* %114, align 8
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %112, %116
  %118 = trunc i32 %117 to i16
  %119 = load %struct.azx*, %struct.azx** %4, align 8
  %120 = getelementptr inbounds %struct.azx, %struct.azx* %119, i32 0, i32 3
  store i16 %118, i16* %120, align 2
  %121 = load %struct.azx*, %struct.azx** %4, align 8
  %122 = call i32 @azx_init_streams(%struct.azx* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %101
  %126 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %127 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %199

132:                                              ; preds = %101
  %133 = load %struct.azx*, %struct.azx** %4, align 8
  %134 = call i32 @azx_alloc_stream_pages(%struct.azx* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %139 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %199

144:                                              ; preds = %132
  %145 = load %struct.azx*, %struct.azx** %4, align 8
  %146 = call i32 @azx_init_chip(%struct.azx* %145, i32 1)
  %147 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %148 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %144
  %152 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %153 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @dev_err(i32 %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %199

158:                                              ; preds = %144
  %159 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %160 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 @strncpy(i8* %161, i8* %162, i32 8)
  %164 = load %struct.device_node*, %struct.device_node** %13, align 8
  %165 = call i8* @of_get_property(%struct.device_node* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i8* %165, i8** %11, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %158
  %169 = load i8*, i8** %12, align 8
  store i8* %169, i8** %11, align 8
  br label %170

170:                                              ; preds = %168, %158
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = sext i32 %172 to i64
  %174 = icmp ugt i64 %173, 8
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %177 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dev_info(i32 %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %182 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 @strncpy(i8* %183, i8* %184, i32 8)
  %186 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %187 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %190 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %193 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.hdac_bus*, %struct.hdac_bus** %6, align 8
  %196 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @snprintf(i32 %188, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %191, i32 %194, i32 %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %180, %151, %137, %125, %46, %30
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @hda_tegra_init_chip(%struct.azx*, %struct.platform_device*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.azx*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local zeroext i16 @azx_readw(%struct.azx*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i16 zeroext) #1

declare dso_local i32 @azx_init_streams(%struct.azx*) #1

declare dso_local i32 @azx_alloc_stream_pages(%struct.azx*) #1

declare dso_local i32 @azx_init_chip(%struct.azx*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
