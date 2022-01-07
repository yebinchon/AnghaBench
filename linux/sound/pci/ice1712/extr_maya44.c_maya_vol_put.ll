; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_maya_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_maya_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maya_vol_info = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_maya44 = type { i32, i32, %struct.snd_wm8776* }
%struct.snd_wm8776 = type { i32** }

@vol_info = common dso_local global %struct.maya_vol_info* null, align 8
@WM8776_REG_ADC_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @maya_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maya_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_maya44*, align 8
  %6 = alloca %struct.snd_wm8776*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.maya_vol_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_maya44* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_maya44* %14, %struct.snd_maya44** %5, align 8
  %15 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %16 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %15, i32 0, i32 2
  %17 = load %struct.snd_wm8776*, %struct.snd_wm8776** %16, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 1
  %21 = call i64 @snd_ctl_get_ioff(%struct.snd_kcontrol* %18, i32* %20)
  %22 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %17, i64 %21
  store %struct.snd_wm8776* %22, %struct.snd_wm8776** %6, align 8
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.maya_vol_info*, %struct.maya_vol_info** @vol_info, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %26, i64 %28
  store %struct.maya_vol_info* %29, %struct.maya_vol_info** %8, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %31 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %159, %2
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %162

36:                                               ; preds = %33
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %48 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %53 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %36
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %58 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %56, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %159

70:                                               ; preds = %55
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %75 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  br label %84

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = sub i32 %78, 1
  %80 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %81 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add i32 %79, %82
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %77, %73
  %85 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %86 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %91 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %94 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %95 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %102 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %105 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @wm8776_write_bits(i32 %92, %struct.snd_wm8776* %93, i32 %100, i32 %107, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %113 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %84
  %121 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %122 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %125 = load i32, i32* @WM8776_REG_ADC_MUX, align 4
  %126 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %127 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  br label %144

136:                                              ; preds = %120
  %137 = load %struct.maya_vol_info*, %struct.maya_vol_info** %8, align 8
  %138 = getelementptr inbounds %struct.maya_vol_info, %struct.maya_vol_info* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  br label %144

144:                                              ; preds = %136, %135
  %145 = phi i32 [ 0, %135 ], [ %143, %136 ]
  %146 = call i32 @wm8776_write_bits(i32 %123, %struct.snd_wm8776* %124, i32 %125, i32 %132, i32 %145)
  br label %147

147:                                              ; preds = %144, %84
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %150 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %149, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %148, i32* %158, align 4
  br label %159

159:                                              ; preds = %147, %69
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %33

162:                                              ; preds = %33
  %163 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %164 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i32, i32* %12, align 4
  ret i32 %166
}

declare dso_local %struct.snd_maya44* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8776_write_bits(i32, %struct.snd_wm8776*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
