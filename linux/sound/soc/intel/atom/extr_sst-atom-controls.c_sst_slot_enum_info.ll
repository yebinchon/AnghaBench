; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_slot_enum_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_slot_enum_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sst_enum = type { i32, i32* }

@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @sst_slot_enum_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_slot_enum_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.sst_enum*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.sst_enum*
  store %struct.sst_enum* %9, %struct.sst_enum** %5, align 8
  %10 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %11 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %16 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %28 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %34 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %2
  %42 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sst_enum*, %struct.sst_enum** %5, align 8
  %48 = getelementptr inbounds %struct.sst_enum, %struct.sst_enum* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcpy(i32 %46, i32 %57)
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
