; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak4xxx_capture_source_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4xxx-adda.c_ak4xxx_capture_source_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.snd_akm4xxx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @ak4xxx_capture_source_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4xxx_capture_source_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.snd_akm4xxx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_akm4xxx* %10, %struct.snd_akm4xxx** %6, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AK_GET_SHIFT(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ak4xxx_capture_num_inputs(%struct.snd_akm4xxx* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %27 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %24, i32 1, i32 %25, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.snd_akm4xxx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @AK_GET_SHIFT(i32) #1

declare dso_local i32 @ak4xxx_capture_num_inputs(%struct.snd_akm4xxx*, i32) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
