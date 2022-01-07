; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_cvt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i64, i8**, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_spec_per_cvt = type { i32, i32, i32, i32, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*)* @hdmi_add_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_add_cvt(%struct.hda_codec* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %11, align 8
  store %struct.hdmi_spec* %12, %struct.hdmi_spec** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @get_wcaps(%struct.hda_codec* %13, i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @get_wcaps_channels(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %18, i32 0, i32 3
  %20 = call %struct.hdmi_spec_per_cvt* @snd_array_new(i32* %19)
  store %struct.hdmi_spec_per_cvt* %20, %struct.hdmi_spec_per_cvt** %7, align 8
  %21 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %22 = icmp ne %struct.hdmi_spec_per_cvt* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %87

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %29 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %30, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ule i32 %32, 16
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %37 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %40 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ugt i32 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %47 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %54 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %53, i32 0, i32 4
  %55 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %56 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %55, i32 0, i32 3
  %57 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %7, align 8
  %58 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %57, i32 0, i32 2
  %59 = call i32 @snd_hda_query_supported_pcm(%struct.hda_codec* %51, i8* %52, i32* %54, i32* %56, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %87

64:                                               ; preds = %50
  %65 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %66 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %69 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = call i64 @ARRAY_SIZE(i8** %70)
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %76 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %79 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %74, i8** %81, align 8
  br label %82

82:                                               ; preds = %73, %64
  %83 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %84 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %62, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i8*) #1

declare dso_local i32 @get_wcaps_channels(i32) #1

declare dso_local %struct.hdmi_spec_per_cvt* @snd_array_new(i32*) #1

declare dso_local i32 @snd_hda_query_supported_pcm(%struct.hda_codec*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
