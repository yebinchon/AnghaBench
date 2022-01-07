; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_bytes_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_bytes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_component = type { i32, i64 }
%struct.soc_bytes = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_bytes_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_bytes*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.soc_bytes*
  store %struct.soc_bytes* %15, %struct.soc_bytes** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %25 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %33 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = call i32 @regmap_raw_read(i64 %23, i32 %26, i64* %31, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %20
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %43
  %47 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %48 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %46
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %96 [
    i32 1, label %55
    i32 2, label %68
    i32 4, label %82
  ]

55:                                               ; preds = %51
  %56 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %57 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = xor i64 %58, -1
  %60 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, %59
  store i64 %67, i64* %65, align 8
  br label %99

68:                                               ; preds = %51
  %69 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %70 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = xor i64 %71, -1
  %73 = call i32 @cpu_to_be16(i64 %72)
  %74 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = bitcast i64** %77 to i32*
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %73
  store i32 %81, i32* %79, align 8
  br label %99

82:                                               ; preds = %51
  %83 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %84 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = xor i64 %85, -1
  %87 = call i32 @cpu_to_be32(i64 %86)
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = bitcast i64** %91 to i32*
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %87
  store i32 %95, i32* %93, align 8
  br label %99

96:                                               ; preds = %51
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %102

99:                                               ; preds = %82, %68, %55
  br label %100

100:                                              ; preds = %99, %46, %43
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @regmap_raw_read(i64, i32, i64*, i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
