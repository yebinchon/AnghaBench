; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_slot_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_slot_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.sst_enum = type { i32, i32, i32, i32* }
%struct.snd_soc_component = type { i32 }
%struct.sst_data = type { i32 }

@sst_ssp_rx_map = common dso_local global i32* null, align 8
@sst_ssp_tx_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s - %s map = %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tx channel\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rx slot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sst_slot_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_slot_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.sst_enum*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.sst_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.sst_enum*
  store %struct.sst_enum* %17, %struct.sst_enum** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %6, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = call %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.sst_data* %21, %struct.sst_data** %7, align 8
  %22 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %23 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %26 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32*, i32** @sst_ssp_rx_map, align 8
  br label %34

32:                                               ; preds = %2
  %33 = load i32*, i32** @sst_ssp_tx_map, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32* [ %31, %30 ], [ %33, %32 ]
  store i32* %35, i32** %12, align 8
  %36 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %37 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %42 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %59, %34
  %45 = load i32, i32* %11, align 4
  %46 = icmp ugt i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sub i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %11, align 4
  br label %44

62:                                               ; preds = %57, %44
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %63, i32* %69, align 4
  %70 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %71 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %74 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %80 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %81 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %62
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sub i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  br label %97

96:                                               ; preds = %62
  br label %97

97:                                               ; preds = %96, %89
  %98 = phi i32 [ %95, %89 ], [ -1, %96 ]
  %99 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %86, i32 %98)
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
