; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@snd_ice1712_ewx2496_controls = common dso_local global i32* null, align 8
@snd_ice1712_ews88mt_input_sense = common dso_local global i32 0, align 4
@snd_ice1712_ews88mt_output_sense = common dso_local global i32 0, align 4
@snd_ice1712_ews88d_controls = common dso_local global i32* null, align 8
@snd_ice1712_6fire_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_ice1712_ews_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_ews_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = call i32 @snd_ice1712_spdif_build_controls(%struct.snd_ice1712* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %138

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %20 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %31 [
    i32 130, label %23
    i32 132, label %23
    i32 131, label %23
    i32 129, label %23
    i32 128, label %23
    i32 134, label %23
  ]

23:                                               ; preds = %18, %18, %18, %18, %18, %18
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %25 = call i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %138

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %18, %30
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %137 [
    i32 130, label %36
    i32 132, label %62
    i32 131, label %62
    i32 129, label %62
    i32 128, label %62
    i32 133, label %85
    i32 134, label %111
  ]

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32*, i32** @snd_ice1712_ewx2496_controls, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** @snd_ice1712_ewx2496_controls, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %51 = call i32 @snd_ctl_new1(i32* %49, %struct.snd_ice1712* %50)
  %52 = call i32 @snd_ctl_add(i32 %45, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %138

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %37

61:                                               ; preds = %37
  br label %137

62:                                               ; preds = %31, %31, %31, %31
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %64 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %67 = call i32 @snd_ctl_new1(i32* @snd_ice1712_ews88mt_input_sense, %struct.snd_ice1712* %66)
  %68 = call i32 @snd_ctl_add(i32 %65, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %138

73:                                               ; preds = %62
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %75 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %78 = call i32 @snd_ctl_new1(i32* @snd_ice1712_ews88mt_output_sense, %struct.snd_ice1712* %77)
  %79 = call i32 @snd_ctl_add(i32 %76, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %138

84:                                               ; preds = %73
  br label %137

85:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %107, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32*, i32** @snd_ice1712_ews88d_controls, align 8
  %89 = call i32 @ARRAY_SIZE(i32* %88)
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %93 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** @snd_ice1712_ews88d_controls, align 8
  %96 = load i32, i32* %4, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %100 = call i32 @snd_ctl_new1(i32* %98, %struct.snd_ice1712* %99)
  %101 = call i32 @snd_ctl_add(i32 %94, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %138

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %86

110:                                              ; preds = %86
  br label %137

111:                                              ; preds = %31
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %133, %111
  %113 = load i32, i32* %4, align 4
  %114 = load i32*, i32** @snd_ice1712_6fire_controls, align 8
  %115 = call i32 @ARRAY_SIZE(i32* %114)
  %116 = icmp ult i32 %113, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %119 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** @snd_ice1712_6fire_controls, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %126 = call i32 @snd_ctl_new1(i32* %124, %struct.snd_ice1712* %125)
  %127 = call i32 @snd_ctl_add(i32 %120, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %138

132:                                              ; preds = %117
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %112

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %31, %136, %110, %84, %61
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %130, %104, %82, %71, %55, %28, %15
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @snd_ice1712_spdif_build_controls(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
