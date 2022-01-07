; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_claro_halo_mixer_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_claro_halo_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@claro_dig_source_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @claro_halo_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claro_halo_mixer_init(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %6 = call i32 @generic_mixer_init(%struct.oxygen* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %13 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %16 = call i32 @snd_ctl_new1(i32* @claro_dig_source_control, %struct.oxygen* %15)
  %17 = call i32 @snd_ctl_add(i32 %14, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @generic_mixer_init(%struct.oxygen*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
