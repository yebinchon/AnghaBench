; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_cs8415_mux_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_cs8415_mux_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@aureon_cs8415_mux_info.aureon_texts = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@aureon_cs8415_mux_info.prodigy_texts = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"Coax\00", align 1
@VT1724_SUBDEVICE_PRODIGY71 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @aureon_cs8415_mux_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_cs8415_mux_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_ice1712* %8, %struct.snd_ice1712** %6, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %17 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %16, i32 1, i32 2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @aureon_cs8415_mux_info.prodigy_texts, i64 0, i64 0))
  store i32 %17, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %20 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %19, i32 1, i32 2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @aureon_cs8415_mux_info.aureon_texts, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
