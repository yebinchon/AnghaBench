; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_write_mode_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_write_mode_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i32, i32, i32, i32, i32)* @axg_spdifin_write_mode_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axg_spdifin_write_mode_param(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @do_div(i32 %18, i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = call i32 @regmap_get_reg_stride(%struct.regmap* %22)
  %24 = mul i32 %21, %23
  %25 = load i32, i32* %11, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 %28, 1
  %30 = load i32, i32* %16, align 4
  %31 = sub i32 %29, %30
  %32 = mul i32 %27, %31
  store i32 %32, i32* %15, align 4
  %33 = load %struct.regmap*, %struct.regmap** %7, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sub i32 %35, 1
  %37 = call i32 @GENMASK(i32 %36, i32 0)
  %38 = load i32, i32* %15, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %15, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @regmap_update_bits(%struct.regmap* %33, i32 %34, i32 %39, i32 %42)
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @regmap_get_reg_stride(%struct.regmap*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
