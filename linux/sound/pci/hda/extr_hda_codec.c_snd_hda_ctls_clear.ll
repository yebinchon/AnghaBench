; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_ctls_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_ctls_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.hda_nid_item* }
%struct.hda_nid_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_ctls_clear(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_nid_item*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.hda_nid_item*, %struct.hda_nid_item** %7, align 8
  store %struct.hda_nid_item* %8, %struct.hda_nid_item** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hda_nid_item*, %struct.hda_nid_item** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %20, i64 %22
  %24 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_ctl_remove(i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 1
  %33 = call i32 @snd_array_free(%struct.TYPE_2__* %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %34, i32 0, i32 0
  %36 = call i32 @snd_array_free(%struct.TYPE_2__* %35)
  ret void
}

declare dso_local i32 @snd_ctl_remove(i32, i32) #1

declare dso_local i32 @snd_array_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
