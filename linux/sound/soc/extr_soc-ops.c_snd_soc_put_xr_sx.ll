; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_xr_sx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_xr_sx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32 }
%struct.soc_mreg_control = type { i32, i32, i32, i64, i64 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_xr_sx(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %16 = alloca i32, align 4
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
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %2
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = sub nsw i64 %61, %62
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %60, %2
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %15, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %111, %64
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %114

72:                                               ; preds = %68
  %73 = load i64, i64* %15, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sub i32 %75, %76
  %78 = sub i32 %77, 1
  %79 = mul i32 %74, %78
  %80 = zext i32 %79 to i64
  %81 = ashr i64 %73, %80
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = and i64 %81, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %17, align 4
  %86 = load i64, i64* %13, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sub i32 %88, %89
  %91 = sub i32 %90, 1
  %92 = mul i32 %87, %91
  %93 = zext i32 %92 to i64
  %94 = lshr i64 %86, %93
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = and i64 %94, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %18, align 4
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %16, align 4
  %102 = add i32 %100, %101
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %99, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %72
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %3, align 4
  br label %115

110:                                              ; preds = %72
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %16, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %68

114:                                              ; preds = %68
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
