; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_ctls_assign.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_spdif_ctls_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_spdif_out = type { i64, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_spdif_ctls_assign(%struct.hda_codec* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.hda_spdif_out*, align 8
  %8 = alloca i16, align 2
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 1
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.hda_spdif_out* @snd_array_elem(%struct.TYPE_2__* %24, i32 %25)
  store %struct.hda_spdif_out* %26, %struct.hda_spdif_out** %7, align 8
  %27 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %28 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %35 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %7, align 8
  %37 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 8
  store i16 %38, i16* %8, align 2
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i16, i16* %8, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i16
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i32
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i16
  %50 = call i32 @set_spdif_ctls(%struct.hda_codec* %39, i64 %40, i16 zeroext %44, i16 zeroext %49)
  br label %51

51:                                               ; preds = %32, %19
  %52 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %53 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %51, %18
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_spdif_out* @snd_array_elem(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @set_spdif_ctls(%struct.hda_codec*, i64, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
