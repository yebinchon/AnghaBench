; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_xr_sx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_xr_sx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.soc_mreg_control = type { i32, i32, i32, i64, i64, i64 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_get_xr_sx(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_mreg_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %20)
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %6, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.soc_mreg_control*
  store %struct.soc_mreg_control* %25, %struct.soc_mreg_control** %7, align 8
  %26 = load %struct.soc_mreg_control*, %struct.soc_mreg_control** %7, align 8
  %27 = getelementptr inbounds %struct.soc_mreg_control, %struct.soc_mreg_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.soc_mreg_control*, %struct.soc_mreg_control** %7, align 8
  %30 = getelementptr inbounds %struct.soc_mreg_control, %struct.soc_mreg_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BITS_PER_BYTE, align 4
  %36 = mul i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = load %struct.soc_mreg_control*, %struct.soc_mreg_control** %7, align 8
  %41 = getelementptr inbounds %struct.soc_mreg_control, %struct.soc_mreg_control* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load %struct.soc_mreg_control*, %struct.soc_mreg_control** %7, align 8
  %44 = getelementptr inbounds %struct.soc_mreg_control, %struct.soc_mreg_control* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = shl i64 1, %45
  %47 = sub i64 %46, 1
  store i64 %47, i64* %13, align 8
  %48 = load %struct.soc_mreg_control*, %struct.soc_mreg_control** %7, align 8
  %49 = getelementptr inbounds %struct.soc_mreg_control, %struct.soc_mreg_control* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %14, align 8
  %51 = load %struct.soc_mreg_control*, %struct.soc_mreg_control** %7, align 8
  %52 = getelementptr inbounds %struct.soc_mreg_control, %struct.soc_mreg_control* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  br label %54

54:                                               ; preds = %82, %2
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %18, align 4
  %62 = add i32 %60, %61
  %63 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %59, i32 %62, i32* %17)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %19, align 4
  store i32 %67, i32* %3, align 4
  br label %115

68:                                               ; preds = %58
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sub i32 %73, %74
  %76 = sub i32 %75, 1
  %77 = mul i32 %72, %76
  %78 = shl i32 %71, %77
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %16, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %16, align 8
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %18, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %18, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %16, align 8
  %88 = and i64 %87, %86
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %14, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i64, i64* %13, align 8
  %97 = xor i64 %96, -1
  %98 = load i64, i64* %16, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %16, align 8
  br label %100

100:                                              ; preds = %95, %91, %85
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %16, align 8
  %106 = sub nsw i64 %104, %105
  store i64 %106, i64* %16, align 8
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i64, i64* %16, align 8
  %109 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %110 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  store i64 %108, i64* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %107, %66
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
