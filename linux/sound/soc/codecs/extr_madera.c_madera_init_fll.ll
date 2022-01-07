; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_init_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_init_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32 }
%struct.madera_fll = type { i32, i32, i8*, i8*, %struct.madera* }

@MADERA_FLL_SRC_NONE = common dso_local global i8* null, align 8
@MADERA_FLL_CONTROL_1_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_FREERUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_init_fll(%struct.madera* %0, i32 %1, i32 %2, %struct.madera_fll* %3) #0 {
  %5 = alloca %struct.madera*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.madera_fll*, align 8
  store %struct.madera* %0, %struct.madera** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.madera_fll* %3, %struct.madera_fll** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.madera_fll*, %struct.madera_fll** %8, align 8
  %11 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.madera_fll*, %struct.madera_fll** %8, align 8
  %14 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.madera*, %struct.madera** %5, align 8
  %16 = load %struct.madera_fll*, %struct.madera_fll** %8, align 8
  %17 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %16, i32 0, i32 4
  store %struct.madera* %15, %struct.madera** %17, align 8
  %18 = load i8*, i8** @MADERA_FLL_SRC_NONE, align 8
  %19 = load %struct.madera_fll*, %struct.madera_fll** %8, align 8
  %20 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @MADERA_FLL_SRC_NONE, align 8
  %22 = load %struct.madera_fll*, %struct.madera_fll** %8, align 8
  %23 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.madera*, %struct.madera** %5, align 8
  %25 = getelementptr inbounds %struct.madera, %struct.madera* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.madera_fll*, %struct.madera_fll** %8, align 8
  %28 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @MADERA_FLL_CONTROL_1_OFFS, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @MADERA_FLL1_FREERUN, align 4
  %34 = call i32 @regmap_update_bits(i32 %26, i64 %32, i32 %33, i32 0)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
