; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_add_auto_cfg_input_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_add_auto_cfg_input_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AUTO_CFG_MAX_INS = common dso_local global i64 0, align 8
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.auto_pin_cfg*, i32, i32)* @add_auto_cfg_input_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_auto_cfg_input_pin(%struct.hda_codec* %0, %struct.auto_pin_cfg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.auto_pin_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.auto_pin_cfg* %1, %struct.auto_pin_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %10 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTO_CFG_MAX_INS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %17 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %20 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %15, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %26 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %24, i32* %32, align 4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @HDA_INPUT, align 4
  %36 = call i32 @nid_has_volume(%struct.hda_codec* %33, i32 %34, i32 %35)
  %37 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %41 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %36, i32* %44, align 4
  %45 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %46 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %14, %4
  ret void
}

declare dso_local i32 @nid_has_volume(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
