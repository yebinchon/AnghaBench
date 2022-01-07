; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_choose_cvt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_choose_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32, i64*, i32 }
%struct.hdmi_spec_per_cvt = type { i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32*)* @hdmi_choose_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_choose_cvt(%struct.hda_codec* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca %struct.hdmi_spec_per_pin*, align 8
  %10 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hdmi_spec*, %struct.hdmi_spec** %14, align 8
  store %struct.hdmi_spec* %15, %struct.hdmi_spec** %8, align 8
  store %struct.hdmi_spec_per_cvt* null, %struct.hdmi_spec_per_cvt** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.hdmi_spec_per_pin* null, %struct.hdmi_spec_per_pin** %9, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %20, i32 %21)
  store %struct.hdmi_spec_per_pin* %22, %struct.hdmi_spec_per_pin** %9, align 8
  br label %23

23:                                               ; preds = %19, %18
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %75, %23
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %27 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %24
  %31 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %31, i32 %32)
  store %struct.hdmi_spec_per_cvt* %33, %struct.hdmi_spec_per_cvt** %10, align 8
  %34 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %10, align 8
  %35 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %75

39:                                               ; preds = %30
  %40 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %41 = icmp eq %struct.hdmi_spec_per_pin* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %78

43:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %47 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %52 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %10, align 8
  %59 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %67

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %44

67:                                               ; preds = %62, %44
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %70 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %75

74:                                               ; preds = %67
  br label %78

75:                                               ; preds = %73, %38
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %24

78:                                               ; preds = %74, %42, %24
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %81 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %101

87:                                               ; preds = %78
  %88 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %89 = icmp ne %struct.hdmi_spec_per_pin* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %9, align 8
  %93 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32*, i32** %7, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %84
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
