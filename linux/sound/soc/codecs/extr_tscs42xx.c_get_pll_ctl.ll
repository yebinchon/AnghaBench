; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_get_pll_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_get_pll_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_ctl = type { i32 }

@pll_ctls = common dso_local global %struct.pll_ctl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pll_ctl* (i32)* @get_pll_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pll_ctl* @get_pll_ctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pll_ctl*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.pll_ctl* null, %struct.pll_ctl** %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pll_ctl*, %struct.pll_ctl** @pll_ctls, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.pll_ctl* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.pll_ctl*, %struct.pll_ctl** @pll_ctls, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pll_ctl, %struct.pll_ctl* %12, i64 %14
  %16 = getelementptr inbounds %struct.pll_ctl, %struct.pll_ctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.pll_ctl*, %struct.pll_ctl** @pll_ctls, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pll_ctl, %struct.pll_ctl* %20, i64 %22
  store %struct.pll_ctl* %23, %struct.pll_ctl** %4, align 8
  br label %28

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %19, %5
  %29 = load %struct.pll_ctl*, %struct.pll_ctl** %4, align 8
  ret %struct.pll_ctl* %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.pll_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
