; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_detect_enable_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_detect_enable_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_jack_callback = type { %struct.hda_jack_callback*, i32, i64 }
%struct.hda_codec = type { i64 }
%struct.hda_jack_tbl = type { i32, i32, %struct.hda_jack_callback*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AC_VERB_SET_UNSOLICITED_ENABLE = common dso_local global i32 0, align 4
@AC_USRSP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hda_jack_callback* @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.hda_jack_callback*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hda_jack_tbl*, align 8
  %9 = alloca %struct.hda_jack_callback*, align 8
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.hda_jack_callback* null, %struct.hda_jack_callback** %9, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec* %11, i32 %12)
  store %struct.hda_jack_tbl* %13, %struct.hda_jack_tbl** %8, align 8
  %14 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %15 = icmp ne %struct.hda_jack_tbl* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.hda_jack_callback* @ERR_PTR(i32 %18)
  store %struct.hda_jack_callback* %19, %struct.hda_jack_callback** %4, align 8
  br label %82

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.hda_jack_callback* @kzalloc(i32 24, i32 %24)
  store %struct.hda_jack_callback* %25, %struct.hda_jack_callback** %9, align 8
  %26 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  %27 = icmp ne %struct.hda_jack_callback* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.hda_jack_callback* @ERR_PTR(i32 %30)
  store %struct.hda_jack_callback* %31, %struct.hda_jack_callback** %4, align 8
  br label %82

32:                                               ; preds = %23
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  %35 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %37 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  %40 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %42 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %41, i32 0, i32 2
  %43 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %42, align 8
  %44 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  %45 = getelementptr inbounds %struct.hda_jack_callback, %struct.hda_jack_callback* %44, i32 0, i32 0
  store %struct.hda_jack_callback* %43, %struct.hda_jack_callback** %45, align 8
  %46 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  %47 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %48 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %47, i32 0, i32 2
  store %struct.hda_jack_callback* %46, %struct.hda_jack_callback** %48, align 8
  br label %49

49:                                               ; preds = %32, %20
  %50 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %51 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  store %struct.hda_jack_callback* %55, %struct.hda_jack_callback** %4, align 8
  br label %82

56:                                               ; preds = %49
  %57 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %58 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  store %struct.hda_jack_callback* %64, %struct.hda_jack_callback** %4, align 8
  br label %82

65:                                               ; preds = %56
  %66 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @AC_VERB_SET_UNSOLICITED_ENABLE, align 4
  %69 = load i32, i32* @AC_USRSP_EN, align 4
  %70 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %71 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %69, %72
  %74 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %66, i32 %67, i32 0, i32 %68, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.hda_jack_callback* @ERR_PTR(i32 %78)
  store %struct.hda_jack_callback* %79, %struct.hda_jack_callback** %4, align 8
  br label %82

80:                                               ; preds = %65
  %81 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %9, align 8
  store %struct.hda_jack_callback* %81, %struct.hda_jack_callback** %4, align 8
  br label %82

82:                                               ; preds = %80, %77, %63, %54, %28, %16
  %83 = load %struct.hda_jack_callback*, %struct.hda_jack_callback** %4, align 8
  ret %struct.hda_jack_callback* %83
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_new(%struct.hda_codec*, i32) #1

declare dso_local %struct.hda_jack_callback* @ERR_PTR(i32) #1

declare dso_local %struct.hda_jack_callback* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
