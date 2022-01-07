; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ctrl.c_hda_dsp_ctrl_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ctrl.c_hda_dsp_ctrl_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32* }
%struct.hdac_bus = type { i32, i32, i32, i32, i32, i32 }

@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@SOF_HDA_LLCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"checking for capabilities at offset 0x%x\0A\00", align 1
@SOF_HDA_CAP_NEXT_MASK = common dso_local global i32 0, align 4
@SOF_HDA_CAP_ID_MASK = common dso_local global i32 0, align 4
@SOF_HDA_CAP_ID_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"found DSP capability at 0x%x\0A\00", align 1
@HDA_DSP_PP_BAR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"found SPIB capability at 0x%x\0A\00", align 1
@HDA_DSP_SPIB_BAR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"found DRSM capability at 0x%x\0A\00", align 1
@HDA_DSP_DRSM_BAR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"found GTS capability at 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"found ML capability at 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"found capability %d at 0x%x\0A\00", align 1
@SOF_HDA_MAX_CAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_ctrl_get_caps(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca %struct.hdac_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %8 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %9 = call %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev* %8)
  store %struct.hdac_bus* %9, %struct.hdac_bus** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %11 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %12 = load i32, i32* @SOF_HDA_LLCH, align 4
  %13 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %140, %1
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %16 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SOF_HDA_CAP_NEXT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SOF_HDA_CAP_ID_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @SOF_HDA_CAP_ID_OFF, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %121 [
    i32 129, label %32
    i32 128, label %53
    i32 132, label %74
    i32 131, label %95
    i32 130, label %108
  ]

32:                                               ; preds = %14
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %34 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %39 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %44 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %46 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %49 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @HDA_DSP_PP_BAR, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %47, i32* %52, align 4
  br label %128

53:                                               ; preds = %14
  %54 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %55 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %60 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %65 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %67 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %70 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @HDA_DSP_SPIB_BAR, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  br label %128

74:                                               ; preds = %14
  %75 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %76 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %81 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %86 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %88 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %91 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @HDA_DSP_DRSM_BAR, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 %89, i32* %94, align 4
  br label %128

95:                                               ; preds = %14
  %96 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %97 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %102 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %107 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %128

108:                                              ; preds = %14
  %109 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %110 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %115 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %120 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %128

121:                                              ; preds = %14
  %122 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %123 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @dev_vdbg(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %108, %95, %74, %53, %32
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @SOF_HDA_CAP_NEXT_MASK, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* @SOF_HDA_MAX_CAPS, align 4
  %136 = icmp sle i32 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi i1 [ false, %132 ], [ %139, %137 ]
  br i1 %141, label %14, label %142

142:                                              ; preds = %140
  ret i32 0
}

declare dso_local %struct.hdac_bus* @sof_to_bus(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
