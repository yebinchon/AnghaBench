; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_region2_exit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_sbz_region2_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sbz_region2_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbz_region2_exit(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %13 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 256
  %16 = call i32 @writeb(i32 0, i64 %15)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %8

20:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 772
  %29 = call i32 @writeb(i32 179, i64 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %21

33:                                               ; preds = %21
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %34, i32 0, i32 0)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %36, i32 1, i32 0)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %38, i32 4, i32 1)
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %40, i32 5, i32 0)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %42, i32 7, i32 0)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @ca0113_mmio_gpio_set(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
