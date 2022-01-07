; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_si3054.c_si3054_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_si3054.c_si3054_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.si3054_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.si3054_spec = type { i32 }

@SI3054_VERB_WRITE_NODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AC_NODE_ROOT = common dso_local global i32 0, align 4
@AC_VERB_SET_CODEC_RESET = common dso_local global i32 0, align 4
@AC_VERB_SET_STREAM_FORMAT = common dso_local global i32 0, align 4
@SI3054_LINE_RATE = common dso_local global i32 0, align 4
@SI3054_LINE_LEVEL = common dso_local global i32 0, align 4
@SI3054_DTAG_MASK = common dso_local global i32 0, align 4
@SI3054_ATAG_MASK = common dso_local global i32 0, align 4
@SI3054_EXTENDED_MID = common dso_local global i32 0, align 4
@SI3054_MEI_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"si3054: cannot initialize. EXT MID = %04x\0A\00", align 1
@SI3054_GPIO_POLARITY = common dso_local global i32 0, align 4
@SI3054_GPIO_CFG = common dso_local global i32 0, align 4
@SI3054_MISC_AFE = common dso_local global i32 0, align 4
@SI3054_LINE_CFG1 = common dso_local global i32 0, align 4
@SI3054_LINE_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Link Frame Detect(FDT) is not ready (line status: %04x)\0A\00", align 1
@SI3054_CHIPID = common dso_local global i32 0, align 4
@SI3054_CHIPID_INTERNATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @si3054_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si3054_init(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.si3054_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 1
  %9 = load %struct.si3054_spec*, %struct.si3054_spec** %8, align 8
  store %struct.si3054_spec* %9, %struct.si3054_spec** %4, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load i32, i32* @SI3054_VERB_WRITE_NODE, align 4
  %13 = call i64 @snd_hdac_regmap_add_vendor_verb(%struct.TYPE_2__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load i32, i32* @AC_NODE_ROOT, align 4
  %21 = load i32, i32* @AC_VERB_SET_CODEC_RESET, align 4
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %19, i32 %20, i32 0, i32 %21, i32 0)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AC_VERB_SET_STREAM_FORMAT, align 4
  %29 = call i32 @snd_hda_codec_write(%struct.hda_codec* %23, i32 %27, i32 0, i32 %28, i32 0)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load i32, i32* @SI3054_LINE_RATE, align 4
  %32 = call i32 @SET_REG(%struct.hda_codec* %30, i32 %31, i32 9600)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load i32, i32* @SI3054_LINE_LEVEL, align 4
  %35 = load i32, i32* @SI3054_DTAG_MASK, align 4
  %36 = load i32, i32* @SI3054_ATAG_MASK, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @SET_REG(%struct.hda_codec* %33, i32 %34, i32 %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = load i32, i32* @SI3054_EXTENDED_MID, align 4
  %41 = call i32 @SET_REG(%struct.hda_codec* %39, i32 %40, i32 0)
  store i32 10, i32* %5, align 4
  br label %42

42:                                               ; preds = %57, %18
  %43 = call i32 @msleep(i32 2)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = load i32, i32* @SI3054_EXTENDED_MID, align 4
  %46 = call i32 @GET_REG(%struct.hda_codec* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SI3054_MEI_READY, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SI3054_MEI_READY, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %5, align 4
  %56 = icmp ne i32 %54, 0
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi i1 [ false, %47 ], [ %56, %53 ]
  br i1 %58, label %42, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SI3054_MEI_READY, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @SI3054_MEI_READY, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @codec_err(%struct.hda_codec* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %71 = load i32, i32* @SI3054_GPIO_POLARITY, align 4
  %72 = call i32 @SET_REG(%struct.hda_codec* %70, i32 %71, i32 65535)
  %73 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %74 = load i32, i32* @SI3054_GPIO_CFG, align 4
  %75 = call i32 @SET_REG(%struct.hda_codec* %73, i32 %74, i32 0)
  %76 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %77 = load i32, i32* @SI3054_MISC_AFE, align 4
  %78 = call i32 @SET_REG(%struct.hda_codec* %76, i32 %77, i32 0)
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = load i32, i32* @SI3054_LINE_CFG1, align 4
  %81 = call i32 @SET_REG(%struct.hda_codec* %79, i32 %80, i32 512)
  %82 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %83 = load i32, i32* @SI3054_LINE_STATUS, align 4
  %84 = call i32 @GET_REG(%struct.hda_codec* %82, i32 %83)
  %85 = and i32 %84, 64
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %69
  %88 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %89 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %90 = load i32, i32* @SI3054_LINE_STATUS, align 4
  %91 = call i32 @GET_REG(%struct.hda_codec* %89, i32 %90)
  %92 = call i32 @codec_dbg(%struct.hda_codec* %88, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %69
  %94 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %95 = load i32, i32* @SI3054_CHIPID, align 4
  %96 = call i32 @GET_REG(%struct.hda_codec* %94, i32 %95)
  %97 = load i32, i32* @SI3054_CHIPID_INTERNATIONAL, align 4
  %98 = and i32 %96, %97
  %99 = load %struct.si3054_spec*, %struct.si3054_spec** %4, align 8
  %100 = getelementptr inbounds %struct.si3054_spec, %struct.si3054_spec* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @snd_hdac_regmap_add_vendor_verb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @SET_REG(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @GET_REG(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
