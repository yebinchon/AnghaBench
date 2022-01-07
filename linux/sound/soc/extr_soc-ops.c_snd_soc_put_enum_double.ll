; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_enum_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_put_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.soc_enum = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_put_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.soc_enum*
  store %struct.soc_enum* %16, %struct.soc_enum** %7, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %26 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp uge i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %96

32:                                               ; preds = %2
  %33 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_soc_enum_item_to_val(%struct.soc_enum* %33, i32 %36)
  %38 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %39 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %43 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %46 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %44, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %50 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %53 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %32
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %61 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp uge i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %96

67:                                               ; preds = %56
  %68 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_soc_enum_item_to_val(%struct.soc_enum* %68, i32 %71)
  %73 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %74 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %72, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %80 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %83 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %81, %84
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %67, %32
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %90 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %91 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %88, %64, %29
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_enum_item_to_val(%struct.soc_enum*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
