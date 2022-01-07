; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_chipio_startup_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_chipio_startup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Startup Data entered, mutex locked and loaded.\0A\00", align 1
@QUIRK_SBZ = common dso_local global i64 0, align 8
@QUIRK_ZXR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Startup Data exited, mutex released.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sbz_chipio_startup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbz_chipio_startup_data(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %8 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @codec_dbg(%struct.hda_codec* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %12, i32 1638496, i32 129216)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %14, i32 1638500, i32 129473)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %16, i32 1638504, i32 129734)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %18, i32 1638508, i32 129991)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %20, i32 1639468, i32 1)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @chipio_set_stream_channels(%struct.hda_codec* %22, i32 12, i32 6)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @chipio_set_stream_control(%struct.hda_codec* %24, i32 12, i32 1)
  %26 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %27 = call i64 @ca0132_quirk(%struct.ca0132_spec* %26)
  %28 = load i64, i64* @QUIRK_SBZ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %1
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %31, i32 1638448, i32 123072)
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %33, i32 1638452, i32 123329)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %35, i32 1638456, i32 124098)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %37, i32 1638460, i32 124355)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %39, i32 1638464, i32 123588)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %41, i32 1638468, i32 123845)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %43, i32 1638472, i32 125126)
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %45, i32 1638476, i32 125383)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %47, i32 1638480, i32 126152)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %50 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %49, i32 1638484, i32 126409)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %51, i32 1638488, i32 125642)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %53, i32 1638492, i32 125899)
  br label %78

55:                                               ; preds = %1
  %56 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %57 = call i64 @ca0132_quirk(%struct.ca0132_spec* %56)
  %58 = load i64, i64* @QUIRK_ZXR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %62 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %61, i32 1638456, i32 82114)
  %63 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %64 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %63, i32 1638460, i32 82371)
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %65, i32 1638464, i32 86212)
  %67 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %68 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %67, i32 1638468, i32 86469)
  %69 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %70 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %69, i32 1638480, i32 82632)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %71, i32 1638484, i32 82889)
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %73, i32 1638488, i32 86730)
  %75 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %76 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %75, i32 1638492, i32 86987)
  br label %77

77:                                               ; preds = %60, %55
  br label %78

78:                                               ; preds = %77, %30
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = call i32 @chipio_write_no_mutex(%struct.hda_codec* %79, i32 1639468, i32 1)
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = call i32 @codec_dbg(%struct.hda_codec* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %84 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @chipio_write_no_mutex(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_stream_channels(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_stream_control(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
