; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_slot_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_slot_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.sst_data = type { i32 }
%struct.sst_enum = type { i32, i32, i32, i32* }

@sst_ssp_rx_map = common dso_local global i32* null, align 8
@sst_ssp_tx_map = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s %s map = %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tx channel\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rx slot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sst_slot_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_slot_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.sst_data*, align 8
  %8 = alloca %struct.sst_enum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %18 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %6, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = call %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.sst_data* %20, %struct.sst_data** %7, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.sst_enum*
  store %struct.sst_enum* %25, %struct.sst_enum** %8, align 8
  store i32 0, i32* %10, align 4
  %26 = load %struct.sst_enum*, %struct.sst_enum** %8, align 8
  %27 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sst_enum*, %struct.sst_enum** %8, align 8
  %30 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32*, i32** @sst_ssp_rx_map, align 8
  br label %38

36:                                               ; preds = %2
  %37 = load i32*, i32** @sst_ssp_tx_map, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32* [ %35, %34 ], [ %37, %36 ]
  store i32* %39, i32** %16, align 8
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 1, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.sst_enum*, %struct.sst_enum** %8, align 8
  %51 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = icmp ugt i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %128

58:                                               ; preds = %38
  %59 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %60 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %77, %58
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.sst_enum*, %struct.sst_enum** %8, align 8
  %65 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* %14, align 4
  %70 = xor i32 %69, -1
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %70
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %85 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %86 = call i32 @sst_check_and_send_slot_map(%struct.sst_data* %84, %struct.snd_kcontrol* %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %88 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %128

91:                                               ; preds = %80
  %92 = load i32, i32* %15, align 4
  %93 = sub i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 4
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %102 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %108 = load %struct.sst_enum*, %struct.sst_enum** %8, align 8
  %109 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %16, align 8
  %116 = load i32, i32* %13, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %114, i32 %119)
  %121 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %122 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %123 = call i32 @sst_check_and_send_slot_map(%struct.sst_data* %121, %struct.snd_kcontrol* %122)
  store i32 %123, i32* %10, align 4
  %124 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %125 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %91, %83, %55
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_check_and_send_slot_map(%struct.sst_data*, %struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
