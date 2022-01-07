; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_iomap.c_nfit_test_kill.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_iomap.c_nfit_test_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pagemap = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dev_pagemap*)*, i32 (%struct.dev_pagemap*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfit_test_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfit_test_kill(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dev_pagemap*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.dev_pagemap*
  store %struct.dev_pagemap* %5, %struct.dev_pagemap** %3, align 8
  %6 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %7 = icmp ne %struct.dev_pagemap* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %10 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %19 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %24 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.dev_pagemap*)*, i32 (%struct.dev_pagemap*)** %26, align 8
  %28 = icmp ne i32 (%struct.dev_pagemap*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %31 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.dev_pagemap*)*, i32 (%struct.dev_pagemap*)** %33, align 8
  %35 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %36 = call i32 %34(%struct.dev_pagemap* %35)
  br label %42

37:                                               ; preds = %22, %14
  %38 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %39 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @percpu_ref_kill(i32 %40)
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %44 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %49 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dev_pagemap*)*, i32 (%struct.dev_pagemap*)** %51, align 8
  %53 = icmp ne i32 (%struct.dev_pagemap*)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %56 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dev_pagemap*)*, i32 (%struct.dev_pagemap*)** %58, align 8
  %60 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %61 = call i32 %59(%struct.dev_pagemap* %60)
  br label %70

62:                                               ; preds = %47, %42
  %63 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %64 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %63, i32 0, i32 1
  %65 = call i32 @wait_for_completion(i32* %64)
  %66 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  %67 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @percpu_ref_exit(i32 %68)
  br label %70

70:                                               ; preds = %62, %54
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @percpu_ref_kill(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @percpu_ref_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
