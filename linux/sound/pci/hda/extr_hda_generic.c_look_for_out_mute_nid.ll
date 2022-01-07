; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_out_mute_nid.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_out_mute_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32, i32* }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.nid_path*)* @look_for_out_mute_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @look_for_out_mute_nid(%struct.hda_codec* %0, %struct.nid_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.nid_path* %1, %struct.nid_path** %5, align 8
  %7 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %8 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %65, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %11
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %17 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HDA_OUTPUT, align 4
  %24 = call i64 @nid_has_mute(%struct.hda_codec* %15, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %28 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %14
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %37 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %46 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %47 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HDA_INPUT, align 4
  %54 = call i64 @nid_has_mute(%struct.hda_codec* %45, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %44
  %57 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %58 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %44, %41, %34
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %6, align 4
  br label %11

68:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %56, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @nid_has_mute(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
