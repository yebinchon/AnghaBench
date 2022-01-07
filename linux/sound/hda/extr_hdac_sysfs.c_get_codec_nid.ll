; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_get_codec_nid.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_get_codec_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hdac_device = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.hdac_device**)* @get_codec_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_codec_nid(%struct.kobject* %0, %struct.hdac_device** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.hdac_device**, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.hdac_device** %1, %struct.hdac_device*** %5, align 8
  %9 = load %struct.kobject*, %struct.kobject** %4, align 8
  %10 = getelementptr inbounds %struct.kobject, %struct.kobject* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device* @kobj_to_dev(i32 %13)
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.kobject*, %struct.kobject** %4, align 8
  %16 = getelementptr inbounds %struct.kobject, %struct.kobject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @kstrtoint(i32 %17, i32 16, i32* %7)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.hdac_device* @dev_to_hdac_dev(%struct.device* %25)
  %27 = load %struct.hdac_device**, %struct.hdac_device*** %5, align 8
  store %struct.hdac_device* %26, %struct.hdac_device** %27, align 8
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.device* @kobj_to_dev(i32) #1

declare dso_local i64 @kstrtoint(i32, i32, i32*) #1

declare dso_local %struct.hdac_device* @dev_to_hdac_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
