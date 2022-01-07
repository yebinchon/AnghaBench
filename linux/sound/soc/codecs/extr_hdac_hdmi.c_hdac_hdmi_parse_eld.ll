; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_parse_eld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_parse_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRM_ELD_VER = common dso_local global i64 0, align 8
@DRM_ELD_VER_MASK = common dso_local global i32 0, align 4
@DRM_ELD_VER_SHIFT = common dso_local global i32 0, align 4
@ELD_VER_CEA_861D = common dso_local global i32 0, align 4
@ELD_VER_PARTIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"HDMI: Unknown ELD version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_ELD_CEA_EDID_VER_MNL = common dso_local global i64 0, align 8
@DRM_ELD_MNL_MASK = common dso_local global i32 0, align 4
@DRM_ELD_MNL_SHIFT = common dso_local global i32 0, align 4
@ELD_MAX_MNL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"HDMI: MNL Invalid %d\0A\00", align 1
@DRM_ELD_SPEAKER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, %struct.hdac_hdmi_port*)* @hdac_hdmi_parse_eld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_parse_eld(%struct.hdac_device* %0, %struct.hdac_hdmi_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca %struct.hdac_hdmi_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store %struct.hdac_hdmi_port* %1, %struct.hdac_hdmi_port** %5, align 8
  %8 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %9 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @DRM_ELD_VER, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DRM_ELD_VER_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @DRM_ELD_VER_SHIFT, align 4
  %18 = lshr i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ELD_VER_CEA_861D, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ELD_VER_PARTIAL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %28 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %22, %2
  %34 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %35 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DRM_ELD_CEA_EDID_VER_MNL, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DRM_ELD_MNL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @DRM_ELD_MNL_SHIFT, align 4
  %44 = lshr i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ELD_MAX_MNL, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %33
  %49 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %50 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %67

55:                                               ; preds = %33
  %56 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %57 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @DRM_ELD_SPEAKER, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %64 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %48, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
