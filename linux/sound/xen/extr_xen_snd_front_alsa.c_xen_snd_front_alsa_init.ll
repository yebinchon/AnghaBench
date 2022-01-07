; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_xen_snd_front_alsa_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_xen_snd_front_alsa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { %struct.xen_snd_front_card_info*, %struct.xen_front_cfg_card, %struct.TYPE_2__* }
%struct.xen_snd_front_card_info = type { i32, i32*, i32, %struct.snd_card*, %struct.xen_snd_front_info* }
%struct.snd_card = type { i32, i32, i32, %struct.xen_snd_front_card_info* }
%struct.xen_front_cfg_card = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Creating virtual sound card\0A\00", align 1
@XENSND_DRIVER_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_alsa_init(%struct.xen_snd_front_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_snd_front_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xen_front_cfg_card*, align 8
  %6 = alloca %struct.xen_snd_front_card_info*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %3, align 8
  %10 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %11 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %15 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %14, i32 0, i32 1
  store %struct.xen_front_cfg_card* %15, %struct.xen_front_cfg_card** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @XENSND_DRIVER_NAME, align 4
  %20 = load i32, i32* @THIS_MODULE, align 4
  %21 = call i32 @snd_card_new(%struct.device* %18, i32 0, i32 %19, i32 %20, i32 40, %struct.snd_card** %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %123

26:                                               ; preds = %1
  %27 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 3
  %29 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %28, align 8
  store %struct.xen_snd_front_card_info* %29, %struct.xen_snd_front_card_info** %6, align 8
  %30 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %31 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %32 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %31, i32 0, i32 4
  store %struct.xen_snd_front_info* %30, %struct.xen_snd_front_info** %32, align 8
  %33 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %34 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %35 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %34, i32 0, i32 0
  store %struct.xen_snd_front_card_info* %33, %struct.xen_snd_front_card_info** %35, align 8
  %36 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %37 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %38 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %37, i32 0, i32 3
  store %struct.snd_card* %36, %struct.snd_card** %38, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %5, align 8
  %41 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @devm_kcalloc(%struct.device* %39, i32 %42, i32 4, i32 %43)
  %45 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %46 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %48 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %26
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %119

54:                                               ; preds = %26
  %55 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %5, align 8
  %56 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %59 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %5, align 8
  %61 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %64 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %90, %54
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %5, align 8
  %68 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %73 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %5, align 8
  %74 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load %struct.xen_snd_front_card_info*, %struct.xen_snd_front_card_info** %6, align 8
  %80 = getelementptr inbounds %struct.xen_snd_front_card_info, %struct.xen_snd_front_card_info* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @new_pcm_instance(%struct.xen_snd_front_card_info* %72, i32* %78, i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  br label %119

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %65

93:                                               ; preds = %65
  %94 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %95 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @XENSND_DRIVER_NAME, align 4
  %98 = call i32 @strncpy(i32 %96, i32 %97, i32 4)
  %99 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %100 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %5, align 8
  %103 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @strncpy(i32 %101, i32 %104, i32 4)
  %106 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %107 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %5, align 8
  %110 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strncpy(i32 %108, i32 %111, i32 4)
  %113 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %114 = call i32 @snd_card_register(%struct.snd_card* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %93
  br label %119

118:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %123

119:                                              ; preds = %117, %88, %51
  %120 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %121 = call i32 @snd_card_free(%struct.snd_card* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %118, %24
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @snd_card_new(%struct.device*, i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @new_pcm_instance(%struct.xen_snd_front_card_info*, i32*, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
