; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_xen_snd_front_cfg_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_xen_snd_front_cfg_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { %struct.xenbus_device*, %struct.xen_front_cfg_card }
%struct.xenbus_device = type { i32, i32 }
%struct.xen_front_cfg_card = type { i32, i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@SNDRV_PCM_DEVICES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"No devices configured for sound card at %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_cfg_card(%struct.xen_snd_front_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_snd_front_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.xen_front_cfg_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %13 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %12, i32 0, i32 0
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %13, align 8
  store %struct.xenbus_device* %14, %struct.xenbus_device** %6, align 8
  %15 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %16 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %15, i32 0, i32 1
  store %struct.xen_front_cfg_card* %16, %struct.xen_front_cfg_card** %7, align 8
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @snprintf(i8* %19, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @XBT_NIL, align 4
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %24 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %27 = call i32 @xenbus_exists(i32 %22, i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %37

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SNDRV_PCM_DEVICES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %18, label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %42 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %41, i32 0, i32 1
  %43 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %44 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %105

49:                                               ; preds = %37
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %51 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %7, align 8
  %54 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %53, i32 0, i32 1
  %55 = call i32 @cfg_read_pcm_hw(i32 %52, i32* null, i32* %54)
  %56 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %57 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %56, i32 0, i32 0
  %58 = load %struct.xenbus_device*, %struct.xenbus_device** %57, align 8
  %59 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %58, i32 0, i32 1
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @devm_kcalloc(i32* %59, i32 %60, i32 4, i32 %61)
  %63 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %7, align 8
  %64 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %7, align 8
  %66 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %105

72:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %79 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %7, align 8
  %80 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %7, align 8
  %86 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %85, i32 0, i32 1
  %87 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %88 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @cfg_device(%struct.xen_snd_front_info* %78, i32* %84, i32* %86, i32 %89, i32 %90, i32* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %77
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %105

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %73

101:                                              ; preds = %73
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %7, align 8
  %104 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %95, %69, %40
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @xenbus_exists(i32, i32, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @cfg_read_pcm_hw(i32, i32*, i32*) #1

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @cfg_device(%struct.xen_snd_front_info*, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
