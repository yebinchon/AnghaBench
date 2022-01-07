; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_bebob_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_bebob_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.ieee1394_device_id = type { i64, i64, i64 }
%struct.snd_bebob = type { i32, i32, i32, i32, i32, %struct.snd_bebob_spec*, %struct.ieee1394_device_id* }
%struct.snd_bebob_spec = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VEN_FOCUSRITE = common dso_local global i64 0, align 8
@MODEL_FOCUSRITE_SAFFIRE_BOTH = common dso_local global i64 0, align 8
@VEN_MAUDIO1 = common dso_local global i64 0, align 8
@MODEL_MAUDIO_AUDIOPHILE_BOTH = common dso_local global i64 0, align 8
@VEN_MAUDIO2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_registration = common dso_local global i32 0, align 4
@MODEL_MAUDIO_FW1814 = common dso_local global i64 0, align 8
@MODEL_MAUDIO_PROJECTMIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, %struct.ieee1394_device_id*)* @bebob_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bebob_probe(%struct.fw_unit* %0, %struct.ieee1394_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca %struct.ieee1394_device_id*, align 8
  %6 = alloca %struct.snd_bebob*, align 8
  %7 = alloca %struct.snd_bebob_spec*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store %struct.ieee1394_device_id* %1, %struct.ieee1394_device_id** %5, align 8
  %8 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VEN_FOCUSRITE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MODEL_FOCUSRITE_SAFFIRE_BOTH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %21 = call %struct.snd_bebob_spec* @get_saffire_spec(%struct.fw_unit* %20)
  store %struct.snd_bebob_spec* %21, %struct.snd_bebob_spec** %7, align 8
  br label %45

22:                                               ; preds = %13, %2
  %23 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VEN_MAUDIO1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MODEL_MAUDIO_AUDIOPHILE_BOTH, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %36 = call i32 @check_audiophile_booted(%struct.fw_unit* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store %struct.snd_bebob_spec* null, %struct.snd_bebob_spec** %7, align 8
  br label %44

39:                                               ; preds = %34, %28, %22
  %40 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.snd_bebob_spec*
  store %struct.snd_bebob_spec* %43, %struct.snd_bebob_spec** %7, align 8
  br label %44

44:                                               ; preds = %39, %38
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.snd_bebob_spec*, %struct.snd_bebob_spec** %7, align 8
  %47 = icmp eq %struct.snd_bebob_spec* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VEN_MAUDIO1, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VEN_MAUDIO2, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %48
  %61 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %62 = call i32 @snd_bebob_maudio_load_firmware(%struct.fw_unit* %61)
  store i32 %62, i32* %3, align 4
  br label %135

63:                                               ; preds = %54
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %135

66:                                               ; preds = %45
  %67 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %68 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %67, i32 0, i32 0
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.snd_bebob* @devm_kzalloc(i32* %68, i32 40, i32 %69)
  store %struct.snd_bebob* %70, %struct.snd_bebob** %6, align 8
  %71 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %72 = icmp ne %struct.snd_bebob* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %135

76:                                               ; preds = %66
  %77 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %78 = call i32 @fw_unit_get(%struct.fw_unit* %77)
  %79 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %80 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %82 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %81, i32 0, i32 0
  %83 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %84 = call i32 @dev_set_drvdata(i32* %82, %struct.snd_bebob* %83)
  %85 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %86 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %87 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %86, i32 0, i32 6
  store %struct.ieee1394_device_id* %85, %struct.ieee1394_device_id** %87, align 8
  %88 = load %struct.snd_bebob_spec*, %struct.snd_bebob_spec** %7, align 8
  %89 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %90 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %89, i32 0, i32 5
  store %struct.snd_bebob_spec* %88, %struct.snd_bebob_spec** %90, align 8
  %91 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %92 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %91, i32 0, i32 4
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %95 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %94, i32 0, i32 3
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %98 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %97, i32 0, i32 2
  %99 = call i32 @init_waitqueue_head(i32* %98)
  %100 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %101 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %100, i32 0, i32 1
  %102 = load i32, i32* @do_registration, align 4
  %103 = call i32 @INIT_DEFERRABLE_WORK(i32* %101, i32 %102)
  %104 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %105 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VEN_MAUDIO1, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %76
  %110 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %111 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MODEL_MAUDIO_FW1814, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %5, align 8
  %117 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MODEL_MAUDIO_PROJECTMIX, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115, %76
  %122 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %123 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %124 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %123, i32 0, i32 1
  %125 = call i32 @snd_fw_schedule_registration(%struct.fw_unit* %122, i32* %124)
  br label %134

126:                                              ; preds = %115, %109
  %127 = load %struct.snd_bebob*, %struct.snd_bebob** %6, align 8
  %128 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_2__* @fw_parent_device(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @fw_schedule_bus_reset(i32 %132, i32 0, i32 1)
  br label %134

134:                                              ; preds = %126, %121
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %73, %63, %60
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.snd_bebob_spec* @get_saffire_spec(%struct.fw_unit*) #1

declare dso_local i32 @check_audiophile_booted(%struct.fw_unit*) #1

declare dso_local i32 @snd_bebob_maudio_load_firmware(%struct.fw_unit*) #1

declare dso_local %struct.snd_bebob* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @fw_unit_get(%struct.fw_unit*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.snd_bebob*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @snd_fw_schedule_registration(%struct.fw_unit*, i32*) #1

declare dso_local i32 @fw_schedule_bus_reset(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @fw_parent_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
