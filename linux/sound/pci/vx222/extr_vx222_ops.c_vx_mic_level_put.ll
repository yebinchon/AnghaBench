; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx_mic_level_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx_mic_level_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.vx_core = type { i32 }
%struct.snd_vx222 = type { i64 }

@MIC_LEVEL_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @vx_mic_level_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_mic_level_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca %struct.snd_vx222*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.vx_core* %9, %struct.vx_core** %6, align 8
  %10 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %11 = call %struct.snd_vx222* @to_vx222(%struct.vx_core* %10)
  store %struct.snd_vx222* %11, %struct.snd_vx222** %7, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MIC_LEVEL_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %20
  %34 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %35 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.snd_vx222*, %struct.snd_vx222** %7, align 8
  %38 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %39, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %33
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.snd_vx222*, %struct.snd_vx222** %7, align 8
  %57 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.snd_vx222*, %struct.snd_vx222** %7, align 8
  %59 = call i32 @vx2_set_input_level(%struct.snd_vx222* %58)
  %60 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %61 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 1, i32* %3, align 4
  br label %67

63:                                               ; preds = %33
  %64 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %65 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %48, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.vx_core* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.snd_vx222* @to_vx222(%struct.vx_core*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vx2_set_input_level(%struct.snd_vx222*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
