; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_prepare_verbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_prepare_verbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ca0132_init_verbs0 = common dso_local global i32 0, align 4
@ca0132_init_verbs1 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_SPEC_VERBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_prepare_verbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_prepare_verbs(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %4, align 8
  %8 = load i32, i32* @ca0132_init_verbs0, align 4
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %10 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %12 = call i64 @ca0132_use_pci_mmio(%struct.ca0132_spec* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @ca0132_init_verbs1, align 4
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %17 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_2__* @kcalloc(i32 2, i32 4, i32 %19)
  %21 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %22 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %21, i32 0, i32 0
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %24 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %18
  %31 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %32 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 11, i32* %35, align 4
  %36 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %37 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 1933, i32* %40, align 4
  %41 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %42 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %30, %27
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @ca0132_use_pci_mmio(%struct.ca0132_spec*) #1

declare dso_local %struct.TYPE_2__* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
