; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_commit_pager_choice.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_commit_pager_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_pager = common dso_local global i32 0, align 4
@PERF_PAGER_ENVIRONMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @commit_pager_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_pager_choice() #0 {
  %1 = load i32, i32* @use_pager, align 4
  switch i32 %1, label %6 [
    i32 0, label %2
    i32 1, label %5
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @PERF_PAGER_ENVIRONMENT, align 4
  %4 = call i32 @setenv(i32 %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %7

5:                                                ; preds = %0
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %5, %2
  ret void
}

declare dso_local i32 @setenv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
