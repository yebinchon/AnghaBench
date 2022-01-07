; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_check_and_send_slot_map.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_check_and_send_slot_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sst_enum = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"Slot control: %s doesn't have DAPM widget!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_data*, %struct.snd_kcontrol*)* @sst_check_and_send_slot_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_check_and_send_slot_map(%struct.sst_data* %0, %struct.snd_kcontrol* %1) #0 {
  %3 = alloca %struct.sst_data*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.sst_enum*, align 8
  %6 = alloca i32, align 4
  store %struct.sst_data* %0, %struct.sst_data** %3, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.sst_enum*
  store %struct.sst_enum* %11, %struct.sst_enum** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %13 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %18 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.sst_data*, %struct.sst_data** %3, align 8
  %25 = call i32 @sst_send_slot_map(%struct.sst_data* %24)
  store i32 %25, i32* %6, align 4
  br label %42

26:                                               ; preds = %16, %2
  %27 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %28 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.sst_data*, %struct.sst_data** %3, align 8
  %33 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %31, %26
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @sst_send_slot_map(%struct.sst_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
