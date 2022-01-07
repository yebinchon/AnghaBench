; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_fake_paths.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_fake_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.nid_path = type { i32, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64, i32, i64*)* @add_fake_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_fake_paths(%struct.hda_codec* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca %struct.nid_path*, align 8
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  store %struct.hda_gen_spec* %15, %struct.hda_gen_spec** %10, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %69, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = load i64*, i64** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %72

28:                                               ; preds = %20
  %29 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @get_nid_path(%struct.hda_codec* %29, i64 %30, i64 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %69

39:                                               ; preds = %28
  %40 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %41 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %40, i32 0, i32 0
  %42 = call %struct.nid_path* @snd_array_new(i32* %41)
  store %struct.nid_path* %42, %struct.nid_path** %11, align 8
  %43 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %44 = icmp ne %struct.nid_path* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %73

48:                                               ; preds = %39
  %49 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %50 = call i32 @memset(%struct.nid_path* %49, i32 0, i32 16)
  %51 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %52 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %51, i32 0, i32 0
  store i32 2, i32* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %55 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %53, i64* %57, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %64 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 %62, i64* %66, align 8
  %67 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %68 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %48, %38
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %16

72:                                               ; preds = %27, %16
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @get_nid_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local %struct.nid_path* @snd_array_new(i32*) #1

declare dso_local i32 @memset(%struct.nid_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
