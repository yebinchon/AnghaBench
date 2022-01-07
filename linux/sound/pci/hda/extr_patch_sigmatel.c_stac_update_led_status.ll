; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_update_led_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_update_led_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, i64 }

@AC_PINCTL_VREF_50 = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_GRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @stac_update_led_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_update_led_status(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigmatel_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %8, align 8
  store %struct.sigmatel_spec* %9, %struct.sigmatel_spec** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %15 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %21 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %31 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %42 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %54

45:                                               ; preds = %34
  %46 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %47 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %51 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %45, %37
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %57 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %63 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @stac_gpio_set(%struct.hda_codec* %55, i32 %58, i32 %61, i32 %64)
  br label %85

66:                                               ; preds = %29
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @AC_PINCTL_VREF_50, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @AC_PINCTL_VREF_GRD, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %78 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %79 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  %82 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @stac_vrefout_set(%struct.hda_codec* %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %18, %73, %54
  ret void
}

declare dso_local i32 @stac_gpio_set(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @stac_vrefout_set(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
