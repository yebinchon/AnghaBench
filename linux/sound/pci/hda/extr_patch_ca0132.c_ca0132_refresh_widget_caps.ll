; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_refresh_widget_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_refresh_widget_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ca0132_refresh_widget_caps.\0A\00", align 1
@HDA_OUTPUT = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_refresh_widget_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_refresh_widget_caps(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @codec_dbg(%struct.hda_codec* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @snd_hda_codec_update_widgets(%struct.hda_codec* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %15 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %22 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HDA_OUTPUT, align 4
  %29 = call i32 @refresh_amp_caps(%struct.hda_codec* %20, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %12

33:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %37 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %43 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HDA_OUTPUT, align 4
  %50 = call i32 @refresh_amp_caps(%struct.hda_codec* %41, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %34

54:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %58 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %64 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HDA_INPUT, align 4
  %71 = call i32 @refresh_amp_caps(%struct.hda_codec* %62, i32 %69, i32 %70)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %74 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HDA_INPUT, align 4
  %81 = call i32 @refresh_amp_caps(%struct.hda_codec* %72, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %61
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %55

85:                                               ; preds = %55
  ret void
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_codec_update_widgets(%struct.hda_codec*) #1

declare dso_local i32 @refresh_amp_caps(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
