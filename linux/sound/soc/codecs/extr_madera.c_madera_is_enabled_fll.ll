; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_is_enabled_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_is_enabled_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { %struct.madera* }
%struct.madera = type { i32 }

@MADERA_FLL_CONTROL_1_OFFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to read current state: %d\0A\00", align 1
@MADERA_FLL1_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, i32)* @madera_is_enabled_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_is_enabled_fll(%struct.madera_fll* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.madera_fll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %10 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %9, i32 0, i32 0
  %11 = load %struct.madera*, %struct.madera** %10, align 8
  store %struct.madera* %11, %struct.madera** %6, align 8
  %12 = load %struct.madera*, %struct.madera** %6, align 8
  %13 = getelementptr inbounds %struct.madera, %struct.madera* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @regmap_read(i32 %14, i64 %18, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @madera_fll_err(%struct.madera_fll* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MADERA_FLL1_ENA, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
