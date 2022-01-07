; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_store_hints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_store_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"gpio_mask\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gpio_dir\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gpio_data\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"eapd_mask\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gpio_mute\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"eapd_switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @stac_store_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_store_hints(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %6, align 8
  store %struct.sigmatel_spec* %7, %struct.sigmatel_spec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %10 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %9, i32 0, i32 1
  %11 = call i64 @get_int_hint(%struct.hda_codec* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %15 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %18 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %20 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %19, i32 0, i32 5
  store i32 %16, i32* %20, align 4
  %21 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %22 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %21, i32 0, i32 3
  store i32 %16, i32* %22, align 4
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %26 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %25, i32 0, i32 5
  %27 = call i64 @get_int_hint(%struct.hda_codec* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %31 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %34 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %29, %23
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %40 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %39, i32 0, i32 4
  %41 = call i64 @get_int_hint(%struct.hda_codec* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %45 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %48 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %53 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %54 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %53, i32 0, i32 3
  %55 = call i64 @get_int_hint(%struct.hda_codec* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %59 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %62 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %67 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %68 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %67, i32 0, i32 2
  %69 = call i64 @get_int_hint(%struct.hda_codec* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %73 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %71, %65
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %87 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %79
  ret void
}

declare dso_local i64 @get_int_hint(%struct.hda_codec*, i8*, i32*) #1

declare dso_local i32 @snd_hda_get_bool_hint(%struct.hda_codec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
