; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_enum_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_get_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.soc_enum = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_get_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.soc_enum*
  store %struct.soc_enum* %17, %struct.soc_enum** %7, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %20 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %18, i32 %21, i32* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %75

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %30 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = lshr i32 %28, %31
  %33 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %34 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snd_soc_enum_val_to_item(%struct.soc_enum* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %40, i32* %46, align 4
  %47 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %48 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %51 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %27
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %57 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = lshr i32 %55, %58
  %60 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %61 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @snd_soc_enum_val_to_item(%struct.soc_enum* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %69 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %54, %27
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @snd_soc_enum_val_to_item(%struct.soc_enum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
