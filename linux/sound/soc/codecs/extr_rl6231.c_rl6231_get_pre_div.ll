; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rl6231.c_rl6231_get_pre_div.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rl6231.c_rl6231_get_pre_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl6231_get_pre_div(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.regmap*, %struct.regmap** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @regmap_read(%struct.regmap* %9, i32 %10, i32* %8)
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %12, %13
  %15 = and i32 %14, 7
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %24 [
    i32 0, label %17
    i32 1, label %17
    i32 2, label %17
    i32 3, label %17
    i32 4, label %20
    i32 5, label %21
    i32 6, label %22
    i32 7, label %23
  ]

17:                                               ; preds = %3, %3, %3, %3
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %27

20:                                               ; preds = %3
  store i32 6, i32* %7, align 4
  br label %27

21:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  br label %27

22:                                               ; preds = %3
  store i32 12, i32* %7, align 4
  br label %27

23:                                               ; preds = %3
  store i32 16, i32* %7, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %23, %22, %21, %20, %17
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
