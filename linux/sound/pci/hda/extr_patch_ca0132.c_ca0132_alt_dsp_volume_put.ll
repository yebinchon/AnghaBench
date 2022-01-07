; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_dsp_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_dsp_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32*, i32* }

@VNID_SPK = common dso_local global i64 0, align 8
@DSP_VOL_OUT = common dso_local global i32 0, align 4
@DSP_VOL_IN = common dso_local global i32 0, align 4
@VNODE_START_NID = common dso_local global i64 0, align 8
@ca0132_alt_vol_ctls = common dso_local global %struct.TYPE_2__* null, align 8
@float_vol_db_lookup = common dso_local global i32* null, align 8
@FLOAT_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i64)* @ca0132_alt_dsp_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_alt_dsp_volume_put(%struct.hda_codec* %0, i64 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ca0132_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @VNID_SPK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DSP_VOL_OUT, align 4
  store i32 %15, i32* %6, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @DSP_VOL_IN, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %20 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @VNODE_START_NID, align 8
  %24 = sub nsw i64 %22, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_alt_vol_ctls, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_alt_vol_ctls, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @float_vol_db_lookup, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dspio_set_uint_param(%struct.hda_codec* %27, i32 %33, i32 %41, i32 %46)
  %48 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %49 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @VNODE_START_NID, align 8
  %53 = sub nsw i64 %51, %52
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_alt_vol_ctls, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_alt_vol_ctls, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @float_vol_db_lookup, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dspio_set_uint_param(%struct.hda_codec* %56, i32 %62, i32 %70, i32 %75)
  %77 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_alt_vol_ctls, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_alt_vol_ctls, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FLOAT_ZERO, align 4
  %93 = call i32 @dspio_set_uint_param(%struct.hda_codec* %77, i32 %83, i32 %91, i32 %92)
  ret void
}

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
