; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_put_pin_switch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_put_pin_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_card = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_put_pin_switch(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca i8*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_card* %8, %struct.snd_soc_card** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %22, i32 0, i32 0
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @snd_soc_dapm_enable_pin(i32* %23, i8* %24)
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @snd_soc_dapm_disable_pin(i32* %28, i8* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %32, i32 0, i32 0
  %34 = call i32 @snd_soc_dapm_sync(i32* %33)
  ret i32 0
}

declare dso_local %struct.snd_soc_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(i32*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(i32*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
