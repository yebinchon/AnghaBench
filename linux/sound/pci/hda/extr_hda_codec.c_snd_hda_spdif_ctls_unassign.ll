; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_ctls_unassign.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_ctls_unassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_spdif_out = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_spdif_ctls_unassign(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_spdif_out*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 1
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.hda_spdif_out* @snd_array_elem(%struct.TYPE_2__* %21, i32 %22)
  store %struct.hda_spdif_out* %23, %struct.hda_spdif_out** %5, align 8
  %24 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %5, align 8
  %25 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %24, i32 0, i32 0
  store i64 -1, i64* %25, align 8
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_spdif_out* @snd_array_elem(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
