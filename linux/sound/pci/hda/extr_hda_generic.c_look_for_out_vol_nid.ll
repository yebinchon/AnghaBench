; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_out_vol_nid.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_look_for_out_vol_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.nid_path = type { i32, i32* }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.nid_path*)* @look_for_out_vol_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @look_for_out_vol_nid(%struct.hda_codec* %0, %struct.nid_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca %struct.hda_gen_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.nid_path* %1, %struct.nid_path** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %6, align 8
  %12 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %13 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %21 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  %28 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %44

35:                                               ; preds = %19
  %36 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HDA_OUTPUT, align 4
  %39 = call i64 @nid_has_volume(%struct.hda_codec* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  br label %16

47:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @nid_has_volume(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
