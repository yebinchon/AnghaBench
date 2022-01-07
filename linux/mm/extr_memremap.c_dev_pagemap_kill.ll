; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memremap.c_dev_pagemap_kill.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memremap.c_dev_pagemap_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pagemap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dev_pagemap*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_pagemap*)* @dev_pagemap_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_pagemap_kill(%struct.dev_pagemap* %0) #0 {
  %2 = alloca %struct.dev_pagemap*, align 8
  store %struct.dev_pagemap* %0, %struct.dev_pagemap** %2, align 8
  %3 = load %struct.dev_pagemap*, %struct.dev_pagemap** %2, align 8
  %4 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.dev_pagemap*, %struct.dev_pagemap** %2, align 8
  %9 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.dev_pagemap*)*, i32 (%struct.dev_pagemap*)** %11, align 8
  %13 = icmp ne i32 (%struct.dev_pagemap*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.dev_pagemap*, %struct.dev_pagemap** %2, align 8
  %16 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dev_pagemap*)*, i32 (%struct.dev_pagemap*)** %18, align 8
  %20 = load %struct.dev_pagemap*, %struct.dev_pagemap** %2, align 8
  %21 = call i32 %19(%struct.dev_pagemap* %20)
  br label %27

22:                                               ; preds = %7, %1
  %23 = load %struct.dev_pagemap*, %struct.dev_pagemap** %2, align 8
  %24 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @percpu_ref_kill(i32 %25)
  br label %27

27:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @percpu_ref_kill(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
