; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cs_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.cs_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.cs_spec*, %struct.cs_spec** %10, align 8
  store %struct.cs_spec* %11, %struct.cs_spec** %4, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %14 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %12, i32* %15, i32* null, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %24 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %22, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %21
  %32 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %33 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %41 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %38
  %47 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %48 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %76

61:                                               ; preds = %46
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %64 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @snd_hda_gen_fix_pin_power(%struct.hda_codec* %62, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %61, %60
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %38

79:                                               ; preds = %38
  br label %80

80:                                               ; preds = %79, %31
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %29, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, i32*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_gen_fix_pin_power(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
