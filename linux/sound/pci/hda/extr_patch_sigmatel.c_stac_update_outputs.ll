; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_update_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_update_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__, %struct.sigmatel_spec* }
%struct.TYPE_3__ = type { i32 }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@AC_VERB_GET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @stac_update_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_update_outputs(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 1
  %7 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  store %struct.sigmatel_spec* %7, %struct.sigmatel_spec** %3, align 8
  %8 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %9 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AC_VERB_GET_GPIO_DATA, align 4
  %19 = call i32 @snd_hda_codec_read(%struct.hda_codec* %13, i32 %17, i32 0, i32 %18, i32 0)
  %20 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %21 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %28 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %30

30:                                               ; preds = %12, %1
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @snd_hda_gen_update_outputs(%struct.hda_codec* %31)
  %33 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %34 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %30
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %37
  %43 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %44 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  %46 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %47 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %53 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %42
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %51
  %65 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %66 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %73 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %79 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @stac_gpio_set(%struct.hda_codec* %74, i32 %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %70, %64
  br label %84

84:                                               ; preds = %83, %37, %30
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_gen_update_outputs(%struct.hda_codec*) #1

declare dso_local i32 @stac_gpio_set(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
