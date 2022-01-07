; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_snd_ice1712_delta_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_snd_ice1712_delta_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@snd_ice1712_delta1010_wordclock_select = common dso_local global i32 0, align 4
@snd_ice1712_delta1010_wordclock_status = common dso_local global i32 0, align 4
@snd_ice1712_deltadio2496_spdif_in_select = common dso_local global i32 0, align 4
@snd_ice1712_delta1010lt_wordclock_select = common dso_local global i32 0, align 4
@snd_ice1712_delta1010lt_wordclock_status = common dso_local global i32 0, align 4
@snd_ice1712_delta_spdif_in_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_ice1712_delta_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_delta_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %5 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %6 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %67 [
    i32 138, label %9
    i32 129, label %9
    i32 131, label %32
    i32 137, label %44
    i32 136, label %44
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %14 = call i32 @snd_ctl_new1(i32* @snd_ice1712_delta1010_wordclock_select, %struct.snd_ice1712* %13)
  %15 = call i32 @snd_ctl_add(i32 %12, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %111

20:                                               ; preds = %9
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %25 = call i32 @snd_ctl_new1(i32* @snd_ice1712_delta1010_wordclock_status, %struct.snd_ice1712* %24)
  %26 = call i32 @snd_ctl_add(i32 %23, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %111

31:                                               ; preds = %20
  br label %67

32:                                               ; preds = %1
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %34 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %37 = call i32 @snd_ctl_new1(i32* @snd_ice1712_deltadio2496_spdif_in_select, %struct.snd_ice1712* %36)
  %38 = call i32 @snd_ctl_add(i32 %35, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %111

43:                                               ; preds = %32
  br label %67

44:                                               ; preds = %1, %1
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %49 = call i32 @snd_ctl_new1(i32* @snd_ice1712_delta1010lt_wordclock_select, %struct.snd_ice1712* %48)
  %50 = call i32 @snd_ctl_add(i32 %47, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %111

55:                                               ; preds = %44
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %57 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %60 = call i32 @snd_ctl_new1(i32* @snd_ice1712_delta1010lt_wordclock_status, %struct.snd_ice1712* %59)
  %61 = call i32 @snd_ctl_add(i32 %58, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %111

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %1, %66, %43, %31
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %80 [
    i32 138, label %72
    i32 131, label %72
    i32 133, label %72
    i32 129, label %72
  ]

72:                                               ; preds = %67, %67, %67, %67
  %73 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %74 = call i32 @snd_ice1712_spdif_build_controls(%struct.snd_ice1712* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %111

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %67, %79
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %97 [
    i32 138, label %85
    i32 131, label %85
    i32 133, label %85
    i32 129, label %85
  ]

85:                                               ; preds = %80, %80, %80, %80
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %87 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %90 = call i32 @snd_ctl_new1(i32* @snd_ice1712_delta_spdif_in_status, %struct.snd_ice1712* %89)
  %91 = call i32 @snd_ctl_add(i32 %88, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %111

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %80, %96
  %98 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %99 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %110 [
    i32 136, label %102
    i32 139, label %102
    i32 135, label %102
    i32 134, label %102
    i32 133, label %102
    i32 128, label %102
    i32 132, label %102
    i32 130, label %102
  ]

102:                                              ; preds = %97, %97, %97, %97, %97, %97, %97, %97
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %104 = call i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %97, %109
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %107, %94, %77, %64, %53, %41, %29, %18
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_spdif_build_controls(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
