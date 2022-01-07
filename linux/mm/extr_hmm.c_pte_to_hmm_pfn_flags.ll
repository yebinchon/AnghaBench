; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_pte_to_hmm_pfn_flags.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_pte_to_hmm_pfn_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_range = type { i32* }

@HMM_PFN_VALID = common dso_local global i64 0, align 8
@HMM_PFN_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmm_range*, i32)* @pte_to_hmm_pfn_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_to_hmm_pfn_flags(%struct.hmm_range* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hmm_range*, align 8
  %5 = alloca i32, align 4
  store %struct.hmm_range* %0, %struct.hmm_range** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @pte_none(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pte_present(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @pte_protnone(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9, %2
  store i32 0, i32* %3, align 4
  br label %45

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @pte_write(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %24 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @HMM_PFN_VALID, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %30 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @HMM_PFN_WRITE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %28, %34
  br label %43

36:                                               ; preds = %18
  %37 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %38 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @HMM_PFN_VALID, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  br label %43

43:                                               ; preds = %36, %22
  %44 = phi i32 [ %35, %22 ], [ %42, %36 ]
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_protnone(i32) #1

declare dso_local i64 @pte_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
