; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dbpro_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dbpro_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32*, i32*, i32, i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @dbpro_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbpro_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  store %struct.ca0132_spec* %8, %struct.ca0132_spec** %3, align 8
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %10 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %9, i32 0, i32 5
  store %struct.auto_pin_cfg* %10, %struct.auto_pin_cfg** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %18 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @init_output(%struct.hda_codec* %11, i32 %16, i32 %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %23 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @init_input(%struct.hda_codec* %21, i32 %24, i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %52, %1
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %32 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %38 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %45 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @init_input(%struct.hda_codec* %36, i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %29

55:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @init_output(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @init_input(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
