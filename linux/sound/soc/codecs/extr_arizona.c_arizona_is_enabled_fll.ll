; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_is_enabled_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_is_enabled_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_fll = type { %struct.arizona* }
%struct.arizona = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to read current state: %d\0A\00", align 1
@ARIZONA_FLL1_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_fll*, i32)* @arizona_is_enabled_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_is_enabled_fll(%struct.arizona_fll* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arizona_fll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.arizona_fll* %0, %struct.arizona_fll** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.arizona_fll*, %struct.arizona_fll** %4, align 8
  %10 = getelementptr inbounds %struct.arizona_fll, %struct.arizona_fll* %9, i32 0, i32 0
  %11 = load %struct.arizona*, %struct.arizona** %10, align 8
  store %struct.arizona* %11, %struct.arizona** %6, align 8
  %12 = load %struct.arizona*, %struct.arizona** %6, align 8
  %13 = getelementptr inbounds %struct.arizona, %struct.arizona* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @regmap_read(i32 %14, i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.arizona_fll*, %struct.arizona_fll** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @arizona_fll_err(%struct.arizona_fll* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ARIZONA_FLL1_ENA, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @arizona_fll_err(%struct.arizona_fll*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
