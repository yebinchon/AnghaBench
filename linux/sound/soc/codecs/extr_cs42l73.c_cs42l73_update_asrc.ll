; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_update_asrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_update_asrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@CS42L73_VXSPFS = common dso_local global i32 0, align 4
@CS42L73_ASPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @cs42l73_update_asrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs42l73_update_asrc(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @cs42l73_get_xspfs_coeff(i32 %11)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %32 [
    i32 128, label %15
    i32 130, label %20
    i32 129, label %26
  ]

15:                                               ; preds = %13
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %17 = load i32, i32* @CS42L73_VXSPFS, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 15, i32 %18)
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %22 = load i32, i32* @CS42L73_ASPC, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 2
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 60, i32 %24)
  br label %33

26:                                               ; preds = %13
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %28 = load i32, i32* @CS42L73_VXSPFS, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 240, i32 %30)
  br label %33

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %26, %20, %15
  ret void
}

declare dso_local i32 @cs42l73_get_xspfs_coeff(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
