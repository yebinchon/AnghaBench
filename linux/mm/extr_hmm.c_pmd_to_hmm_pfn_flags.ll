; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_pmd_to_hmm_pfn_flags.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_pmd_to_hmm_pfn_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_range = type { i32* }

@HMM_PFN_VALID = common dso_local global i64 0, align 8
@HMM_PFN_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmm_range*, i32)* @pmd_to_hmm_pfn_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmd_to_hmm_pfn_flags(%struct.hmm_range* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hmm_range*, align 8
  %5 = alloca i32, align 4
  store %struct.hmm_range* %0, %struct.hmm_range** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @pmd_protnone(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @pmd_write(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %16 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @HMM_PFN_VALID, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %22 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @HMM_PFN_WRITE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %20, %26
  br label %35

28:                                               ; preds = %10
  %29 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %30 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @HMM_PFN_VALID, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %28, %14
  %36 = phi i32 [ %27, %14 ], [ %34, %28 ]
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @pmd_protnone(i32) #1

declare dso_local i64 @pmd_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
