; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i64, i64, i64, i64 }

@CS420X_VENDOR_NID = common dso_local global i64 0, align 8
@cs_errata_init_verbs = common dso_local global i32 0, align 4
@cs_coef_init_verbs = common dso_local global i32 0, align 4
@CS4208_VENDOR_NID = common dso_local global i64 0, align 8
@cs4208_coef_init_verbs = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cs_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.cs_spec*, %struct.cs_spec** %5, align 8
  store %struct.cs_spec* %6, %struct.cs_spec** %3, align 8
  %7 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %8 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CS420X_VENDOR_NID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load i32, i32* @cs_errata_init_verbs, align 4
  %15 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %13, i32 %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = load i32, i32* @cs_coef_init_verbs, align 4
  %18 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %16, i32 %17)
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %21 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CS4208_VENDOR_NID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = load i32, i32* @cs4208_coef_init_verbs, align 4
  %28 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %12
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @snd_hda_gen_init(%struct.hda_codec* %31)
  %33 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %34 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load i32, i32* @AC_VERB_SET_GPIO_MASK, align 4
  %40 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %41 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @snd_hda_codec_write(%struct.hda_codec* %38, i32 1, i32 0, i32 %39, i64 %42)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = load i32, i32* @AC_VERB_SET_GPIO_DIRECTION, align 4
  %46 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %47 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @snd_hda_codec_write(%struct.hda_codec* %44, i32 1, i32 0, i32 %45, i64 %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load i32, i32* @AC_VERB_SET_GPIO_DATA, align 4
  %52 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %53 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @snd_hda_codec_write(%struct.hda_codec* %50, i32 1, i32 0, i32 %51, i64 %54)
  br label %56

56:                                               ; preds = %37, %30
  %57 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %58 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CS420X_VENDOR_NID, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %64 = call i32 @init_input_coef(%struct.hda_codec* %63)
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = call i32 @init_digital_coef(%struct.hda_codec* %65)
  br label %67

67:                                               ; preds = %62, %56
  ret i32 0
}

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i64) #1

declare dso_local i32 @init_input_coef(%struct.hda_codec*) #1

declare dso_local i32 @init_digital_coef(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
