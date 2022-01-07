; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.snd_ice1712 = type { i64, i32, i64, i32 }

@snd_vt1724_eeprom = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_vt1724_pro_internal_clock = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_vt1724_pro_rate_locking = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_vt1724_pro_rate_reset = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_vt1724_mixer_pro_analog_route = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_vt1724_mixer_pro_peak = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_vt1724_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_build_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_vt1724_eeprom, %struct.snd_ice1712* %9)
  %11 = call i32 @snd_ctl_add(i32 %8, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %21 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_vt1724_pro_internal_clock, %struct.snd_ice1712* %20)
  %22 = call i32 @snd_ctl_add(i32 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %95

27:                                               ; preds = %16
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %32 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_vt1724_pro_rate_locking, %struct.snd_ice1712* %31)
  %33 = call i32 @snd_ctl_add(i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %95

38:                                               ; preds = %27
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %43 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_vt1724_pro_rate_reset, %struct.snd_ice1712* %42)
  %44 = call i32 @snd_ctl_add(i32 %41, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %95

49:                                               ; preds = %38
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %51 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %49
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %56 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = bitcast %struct.snd_kcontrol_new* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 bitcast (%struct.snd_kcontrol_new* @snd_vt1724_mixer_pro_analog_route to i8*), i64 4, i1 false)
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %62 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %67 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 0
  store i32 2, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %70, %59
  %77 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %78 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %81 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %5, %struct.snd_ice1712* %80)
  %82 = call i32 @snd_ctl_add(i32 %79, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %95

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %54, %49
  %89 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %90 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %93 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_vt1724_mixer_pro_peak, %struct.snd_ice1712* %92)
  %94 = call i32 @snd_ctl_add(i32 %91, i32 %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %88, %85, %47, %36, %25, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ice1712*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
