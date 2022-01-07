; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0113_mmio_command_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0113_mmio_command_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, i32)* @ca0113_mmio_command_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0113_mmio_command_set(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ca0132_spec*, align 8
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.ca0132_spec*, %struct.ca0132_spec** %12, align 8
  store %struct.ca0132_spec* %13, %struct.ca0132_spec** %9, align 8
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %15 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 528
  %18 = call i32 @writel(i32 126, i64 %17)
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %20 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 528
  %23 = call i32 @readl(i64 %22)
  %24 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %25 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 528
  %28 = call i32 @writel(i32 90, i64 %27)
  %29 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %30 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 528
  %33 = call i32 @readl(i64 %32)
  %34 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %35 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 528
  %38 = call i32 @readl(i64 %37)
  %39 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %40 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 524
  %43 = call i32 @writel(i32 8388613, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %46 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 2052
  %49 = call i32 @writel(i32 %44, i64 %48)
  %50 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %51 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 524
  %54 = call i32 @writel(i32 8388613, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %63 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 516
  %66 = call i32 @writel(i32 %61, i64 %65)
  %67 = call i32 @msleep(i32 20)
  %68 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %69 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2144
  %72 = call i32 @readl(i64 %71)
  %73 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %74 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 2132
  %77 = call i32 @readl(i64 %76)
  %78 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %79 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 2112
  %82 = call i32 @readl(i64 %81)
  %83 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %84 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 524
  %87 = call i32 @writel(i32 8388612, i64 %86)
  %88 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %89 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 528
  %92 = call i32 @writel(i32 0, i64 %91)
  %93 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %94 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 528
  %97 = call i32 @readl(i64 %96)
  %98 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  %99 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 528
  %102 = call i32 @readl(i64 %101)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
