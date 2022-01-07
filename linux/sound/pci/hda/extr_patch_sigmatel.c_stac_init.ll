; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__, %struct.sigmatel_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.sigmatel_spec = type { i32, %struct.TYPE_4__, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@AC_VERB_IDT_SET_POWER_MAP = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @stac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 1
  %7 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  store %struct.sigmatel_spec* %7, %struct.sigmatel_spec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @stac_store_hints(%struct.hda_codec* %8)
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %11 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %16 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %25 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %28 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %31 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @stac_gpio_set(%struct.hda_codec* %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = call i32 @snd_hda_gen_init(%struct.hda_codec* %34)
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %22
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AC_VERB_IDT_SET_POWER_MAP, align 4
  %47 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %48 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_hda_codec_write(%struct.hda_codec* %41, i32 %45, i32 0, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %40, %22
  %52 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %53 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %86, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %66 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %86

73:                                               ; preds = %64
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %84 = load i32, i32* @AC_PWRST_D3, align 4
  %85 = call i32 @snd_hda_codec_write(%struct.hda_codec* %74, i32 %82, i32 0, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %72
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %57

89:                                               ; preds = %57
  br label %90

90:                                               ; preds = %89, %51
  ret i32 0
}

declare dso_local i32 @stac_store_hints(%struct.hda_codec*) #1

declare dso_local i32 @stac_gpio_set(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
