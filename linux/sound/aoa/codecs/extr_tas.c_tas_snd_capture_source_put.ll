; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_snd_capture_source_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_snd_capture_source_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tas = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TAS_ACR_INPUT_B = common dso_local global i32 0, align 4
@TAS_ACR_B_MONAUREAL = common dso_local global i32 0, align 4
@TAS_ACR_B_MON_SEL_RIGHT = common dso_local global i32 0, align 4
@TAS_REG_ACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tas_snd_capture_source_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas_snd_capture_source_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.tas*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.tas* %9, %struct.tas** %6, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.tas*, %struct.tas** %6, align 8
  %23 = getelementptr inbounds %struct.tas, %struct.tas* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.tas*, %struct.tas** %6, align 8
  %26 = getelementptr inbounds %struct.tas, %struct.tas* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @TAS_ACR_INPUT_B, align 4
  %29 = load i32, i32* @TAS_ACR_B_MONAUREAL, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.tas*, %struct.tas** %6, align 8
  %33 = getelementptr inbounds %struct.tas, %struct.tas* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %21
  %45 = load i32, i32* @TAS_ACR_INPUT_B, align 4
  %46 = load i32, i32* @TAS_ACR_B_MONAUREAL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TAS_ACR_B_MON_SEL_RIGHT, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.tas*, %struct.tas** %6, align 8
  %51 = getelementptr inbounds %struct.tas, %struct.tas* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %44, %21
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.tas*, %struct.tas** %6, align 8
  %57 = getelementptr inbounds %struct.tas, %struct.tas* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.tas*, %struct.tas** %6, align 8
  %62 = getelementptr inbounds %struct.tas, %struct.tas* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  store i32 0, i32* %3, align 4
  br label %79

64:                                               ; preds = %54
  %65 = load %struct.tas*, %struct.tas** %6, align 8
  %66 = getelementptr inbounds %struct.tas, %struct.tas* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.tas*, %struct.tas** %6, align 8
  %71 = load i32, i32* @TAS_REG_ACR, align 4
  %72 = load %struct.tas*, %struct.tas** %6, align 8
  %73 = getelementptr inbounds %struct.tas, %struct.tas* %72, i32 0, i32 0
  %74 = call i32 @tas_write_reg(%struct.tas* %70, i32 %71, i32 1, i32* %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.tas*, %struct.tas** %6, align 8
  %77 = getelementptr inbounds %struct.tas, %struct.tas* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %60, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tas_write_reg(%struct.tas*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
