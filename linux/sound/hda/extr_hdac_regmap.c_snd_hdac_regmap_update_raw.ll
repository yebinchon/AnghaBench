; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_snd_hdac_regmap_update_raw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_snd_hdac_regmap_update_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_regmap_update_raw(%struct.hdac_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %9, align 4
  %15 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @snd_hdac_regmap_read_raw(%struct.hdac_device* %15, i32 %16, i32* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %43

33:                                               ; preds = %22
  %34 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @snd_hdac_regmap_write_raw(%struct.hdac_device* %34, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %40, %32, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @snd_hdac_regmap_read_raw(%struct.hdac_device*, i32, i32*) #1

declare dso_local i32 @snd_hdac_regmap_write_raw(%struct.hdac_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
