; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_spdif_default_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_mixer.c_spdif_default_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i64, i32, i32 }
%struct.snd_ctl_elem_value = type { i32 }

@PCM_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @spdif_default_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_default_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 0
  %10 = load %struct.oxygen*, %struct.oxygen** %9, align 8
  store %struct.oxygen* %10, %struct.oxygen** %5, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = call i64 @iec958_to_oxygen(%struct.snd_ctl_elem_value* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %14 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %18 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %27 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PCM_SPDIF, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @write_spdif_bits(%struct.oxygen* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %24
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %42 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %41, i32 0, i32 2
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i64 @iec958_to_oxygen(%struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_spdif_bits(%struct.oxygen*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
