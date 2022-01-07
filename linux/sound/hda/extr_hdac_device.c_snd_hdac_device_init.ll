; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i32, i32, %struct.device, i32, i8*, i64, i64, i8*, i32, i32, i32, %struct.hdac_bus* }
%struct.device = type { i32, i32, i32*, i32 }
%struct.hdac_bus = type { i32 }

@snd_hda_bus_type = common dso_local global i32 0, align 4
@default_release = common dso_local global i32 0, align 4
@hdac_dev_attr_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HDA_DEV_CORE = common dso_local global i32 0, align 4
@AC_NODE_ROOT = common dso_local global i64 0, align 8
@AC_PAR_VENDOR_ID = common dso_local global i32 0, align 4
@AC_PAR_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@AC_PAR_REV_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no AFG or MFG node found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AC_PAR_POWER_STATE = common dso_local global i32 0, align 4
@AC_VERB_GET_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ID %x\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_device_init(%struct.hdac_device* %0, %struct.hdac_bus* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca %struct.hdac_bus*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %6, align 8
  store %struct.hdac_bus* %1, %struct.hdac_bus** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %14 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %13, i32 0, i32 3
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load %struct.device*, %struct.device** %10, align 8
  %16 = call i32 @device_initialize(%struct.device* %15)
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %18 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.device*, %struct.device** %10, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 2
  store i32* @snd_hda_bus_type, i32** %23, align 8
  %24 = load i32, i32* @default_release, align 4
  %25 = load %struct.device*, %struct.device** %10, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @hdac_dev_attr_groups, align 4
  %28 = load %struct.device*, %struct.device** %10, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.device*, %struct.device** %10, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @dev_set_name(%struct.device* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = call i32 @device_enable_async_suspend(%struct.device* %33)
  %35 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %36 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %37 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %36, i32 0, i32 12
  store %struct.hdac_bus* %35, %struct.hdac_bus** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %40 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @HDA_DEV_CORE, align 4
  %42 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %43 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %45 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %44, i32 0, i32 10
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %48 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %47, i32 0, i32 3
  %49 = call i32 @pm_runtime_set_active(%struct.device* %48)
  %50 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %51 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %50, i32 0, i32 3
  %52 = call i32 @pm_runtime_get_noresume(%struct.device* %51)
  %53 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %54 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %53, i32 0, i32 9
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  %56 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %57 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %58 = call i32 @snd_hdac_bus_add_device(%struct.hdac_bus* %56, %struct.hdac_device* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %4
  br label %178

62:                                               ; preds = %4
  %63 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %64 = load i64, i64* @AC_NODE_ROOT, align 8
  %65 = load i32, i32* @AC_PAR_VENDOR_ID, align 4
  %66 = call i8* @snd_hdac_read_parm(%struct.hdac_device* %63, i64 %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %69 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %71 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %82

74:                                               ; preds = %62
  %75 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %76 = load i64, i64* @AC_NODE_ROOT, align 8
  %77 = load i32, i32* @AC_PAR_VENDOR_ID, align 4
  %78 = call i8* @snd_hdac_read_parm(%struct.hdac_device* %75, i64 %76, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %81 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %62
  %83 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %84 = load i64, i64* @AC_NODE_ROOT, align 8
  %85 = load i32, i32* @AC_PAR_SUBSYSTEM_ID, align 4
  %86 = call i8* @snd_hdac_read_parm(%struct.hdac_device* %83, i64 %84, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %89 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %91 = load i64, i64* @AC_NODE_ROOT, align 8
  %92 = load i32, i32* @AC_PAR_REV_ID, align 4
  %93 = call i8* @snd_hdac_read_parm(%struct.hdac_device* %90, i64 %91, i32 %92)
  %94 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %95 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %97 = call i32 @setup_fg_nodes(%struct.hdac_device* %96)
  %98 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %99 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %82
  %103 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %104 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %10, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %178

112:                                              ; preds = %102, %82
  %113 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %114 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %119 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  br label %125

121:                                              ; preds = %112
  %122 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %123 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  br label %125

125:                                              ; preds = %121, %117
  %126 = phi i64 [ %120, %117 ], [ %124, %121 ]
  store i64 %126, i64* %11, align 8
  %127 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %128 = call i32 @snd_hdac_refresh_widgets(%struct.hdac_device* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %178

132:                                              ; preds = %125
  %133 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i32, i32* @AC_PAR_POWER_STATE, align 4
  %136 = call i8* @snd_hdac_read_parm(%struct.hdac_device* %133, i64 %134, i32 %135)
  %137 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %138 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %140 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %148, label %143

143:                                              ; preds = %132
  %144 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %145 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143, %132
  %149 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i32, i32* @AC_VERB_GET_SUBSYSTEM_ID, align 4
  %152 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %153 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %152, i32 0, i32 2
  %154 = call i32 @snd_hdac_read(%struct.hdac_device* %149, i64 %150, i32 %151, i32 0, i32* %153)
  br label %155

155:                                              ; preds = %148, %143
  %156 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %157 = call i32 @get_codec_vendor_name(%struct.hdac_device* %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %178

161:                                              ; preds = %155
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %164 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 65535
  %167 = call i32 @kasprintf(i32 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %169 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %171 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %161
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %12, align 4
  br label %178

177:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  br label %183

178:                                              ; preds = %174, %160, %131, %107, %61
  %179 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %180 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %179, i32 0, i32 3
  %181 = call i32 @put_device(%struct.device* %180)
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %178, %177
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snd_hdac_bus_add_device(%struct.hdac_bus*, %struct.hdac_device*) #1

declare dso_local i8* @snd_hdac_read_parm(%struct.hdac_device*, i64, i32) #1

declare dso_local i32 @setup_fg_nodes(%struct.hdac_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snd_hdac_refresh_widgets(%struct.hdac_device*) #1

declare dso_local i32 @snd_hdac_read(%struct.hdac_device*, i64, i32, i32, i32*) #1

declare dso_local i32 @get_codec_vendor_name(%struct.hdac_device*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
