; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AC_PAR_GPIO_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"GPIO: io=%d, o=%d, i=%d, unsolicited=%d, wake=%d\0A\00", align 1
@AC_GPIO_IO_COUNT = common dso_local global i32 0, align 4
@AC_GPIO_O_COUNT = common dso_local global i32 0, align 4
@AC_GPIO_O_COUNT_SHIFT = common dso_local global i32 0, align 4
@AC_GPIO_I_COUNT = common dso_local global i32 0, align 4
@AC_GPIO_I_COUNT_SHIFT = common dso_local global i32 0, align 4
@AC_GPIO_UNSOLICITED = common dso_local global i32 0, align 4
@AC_GPIO_WAKE = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_WAKE_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_UNSOLICITED_RSP_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_STICKY_MASK = common dso_local global i32 0, align 4
@AC_VERB_GET_GPIO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"  IO[%d]: enable=%d, dir=%d, wake=%d, sticky=%d, data=%d, unsol=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* @print_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_gpio(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AC_PAR_GPIO_CAP, align 4
  %22 = call i32 @param_read(%struct.hda_codec* %16, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AC_GPIO_IO_COUNT, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AC_GPIO_O_COUNT, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @AC_GPIO_O_COUNT_SHIFT, align 4
  %31 = lshr i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @AC_GPIO_I_COUNT, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @AC_GPIO_I_COUNT_SHIFT, align 4
  %36 = lshr i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @AC_GPIO_UNSOLICITED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @AC_GPIO_WAKE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = call i32 (%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i32 %36, i32 %42, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AC_GPIO_IO_COUNT, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %3
  %56 = load i32, i32* %15, align 4
  %57 = icmp sgt i32 %56, 8
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %3
  br label %150

59:                                               ; preds = %55
  %60 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @AC_VERB_GET_GPIO_MASK, align 4
  %63 = call i32 @snd_hda_codec_read(%struct.hda_codec* %60, i32 %61, i32 0, i32 %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @AC_VERB_GET_GPIO_DIRECTION, align 4
  %67 = call i32 @snd_hda_codec_read(%struct.hda_codec* %64, i32 %65, i32 0, i32 %66, i32 0)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @AC_VERB_GET_GPIO_WAKE_MASK, align 4
  %71 = call i32 @snd_hda_codec_read(%struct.hda_codec* %68, i32 %69, i32 0, i32 %70, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @AC_VERB_GET_GPIO_UNSOLICITED_RSP_MASK, align 4
  %75 = call i32 @snd_hda_codec_read(%struct.hda_codec* %72, i32 %73, i32 0, i32 %74, i32 0)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @AC_VERB_GET_GPIO_STICKY_MASK, align 4
  %79 = call i32 @snd_hda_codec_read(%struct.hda_codec* %76, i32 %77, i32 0, i32 %78, i32 0)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @AC_VERB_GET_GPIO_DATA, align 4
  %83 = call i32 @snd_hda_codec_read(%struct.hda_codec* %80, i32 %81, i32 0, i32 %82, i32 0)
  store i32 %83, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %134, %59
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %84
  %89 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %14, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %14, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %14, align 4
  %107 = shl i32 1, %106
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = shl i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %14, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  %133 = call i32 (%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %89, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %97, i32 %104, i32 %111, i32 %118, i32 %125, i32 %132)
  br label %134

134:                                              ; preds = %88
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %84

137:                                              ; preds = %84
  %138 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %139 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %142 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %141, i32 0, i32 1
  %143 = call i32 @print_nid_array(%struct.snd_info_buffer* %138, %struct.hda_codec* %139, i32 %140, i32* %142)
  %144 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %145 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %148 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %147, i32 0, i32 0
  %149 = call i32 @print_nid_array(%struct.snd_info_buffer* %144, %struct.hda_codec* %145, i32 %146, i32* %148)
  br label %150

150:                                              ; preds = %137, %58
  ret void
}

declare dso_local i32 @param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @print_nid_array(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
