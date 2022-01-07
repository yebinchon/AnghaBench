; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_snd_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_snd_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.tas = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tas_snd_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas_snd_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.tas*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.tas* %8, %struct.tas** %6, align 8
  %9 = load %struct.tas*, %struct.tas** %6, align 8
  %10 = getelementptr inbounds %struct.tas, %struct.tas* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tas*, %struct.tas** %6, align 8
  %13 = getelementptr inbounds %struct.tas, %struct.tas* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = icmp eq i32 %14, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %2
  %27 = load %struct.tas*, %struct.tas** %6, align 8
  %28 = getelementptr inbounds %struct.tas, %struct.tas* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = icmp eq i32 %29, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.tas*, %struct.tas** %6, align 8
  %43 = getelementptr inbounds %struct.tas, %struct.tas* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  store i32 0, i32* %3, align 4
  br label %81

45:                                               ; preds = %26, %2
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.tas*, %struct.tas** %6, align 8
  %57 = getelementptr inbounds %struct.tas, %struct.tas* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.tas*, %struct.tas** %6, align 8
  %69 = getelementptr inbounds %struct.tas, %struct.tas* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.tas*, %struct.tas** %6, align 8
  %71 = getelementptr inbounds %struct.tas, %struct.tas* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %45
  %75 = load %struct.tas*, %struct.tas** %6, align 8
  %76 = call i32 @tas_set_volume(%struct.tas* %75)
  br label %77

77:                                               ; preds = %74, %45
  %78 = load %struct.tas*, %struct.tas** %6, align 8
  %79 = getelementptr inbounds %struct.tas, %struct.tas* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %41
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.tas* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tas_set_volume(%struct.tas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
