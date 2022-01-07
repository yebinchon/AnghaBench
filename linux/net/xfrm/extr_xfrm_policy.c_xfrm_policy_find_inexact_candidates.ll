; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_find_inexact_candidates.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_find_inexact_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_pol_inexact_candidates = type { i32** }
%struct.xfrm_pol_inexact_bin = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_pol_inexact_node = type { i32, i32 }

@XFRM_POL_CAND_ANY = common dso_local global i64 0, align 8
@XFRM_POL_CAND_DADDR = common dso_local global i64 0, align 8
@XFRM_POL_CAND_BOTH = common dso_local global i64 0, align 8
@XFRM_POL_CAND_SADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_bin*, i32*, i32*)* @xfrm_policy_find_inexact_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_policy_find_inexact_candidates(%struct.xfrm_pol_inexact_candidates* %0, %struct.xfrm_pol_inexact_bin* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_pol_inexact_candidates*, align 8
  %7 = alloca %struct.xfrm_pol_inexact_bin*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfrm_pol_inexact_node*, align 8
  %11 = alloca i32, align 4
  store %struct.xfrm_pol_inexact_candidates* %0, %struct.xfrm_pol_inexact_candidates** %6, align 8
  store %struct.xfrm_pol_inexact_bin* %1, %struct.xfrm_pol_inexact_bin** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %13 = icmp ne %struct.xfrm_pol_inexact_bin* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %83

15:                                               ; preds = %4
  %16 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %17 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_candidates** %6, align 8
  %21 = call i32 @memset(%struct.xfrm_pol_inexact_candidates* %20, i32 0, i32 8)
  %22 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %23 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %22, i32 0, i32 3
  %24 = load %struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_candidates** %6, align 8
  %25 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* @XFRM_POL_CAND_ANY, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  store i32* %23, i32** %28, align 8
  %29 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %30 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %29, i32 0, i32 2
  %31 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %32 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %31, i32 0, i32 0
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.xfrm_pol_inexact_node* @xfrm_policy_lookup_inexact_addr(i32* %30, i32* %32, i32* %33, i32 %34)
  store %struct.xfrm_pol_inexact_node* %35, %struct.xfrm_pol_inexact_node** %10, align 8
  %36 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %10, align 8
  %37 = icmp ne %struct.xfrm_pol_inexact_node* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %15
  %39 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %10, align 8
  %40 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %39, i32 0, i32 0
  %41 = load %struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_candidates** %6, align 8
  %42 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @XFRM_POL_CAND_DADDR, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  store i32* %40, i32** %45, align 8
  %46 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %10, align 8
  %47 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %46, i32 0, i32 1
  %48 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %49 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %48, i32 0, i32 0
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.xfrm_pol_inexact_node* @xfrm_policy_lookup_inexact_addr(i32* %47, i32* %49, i32* %50, i32 %51)
  store %struct.xfrm_pol_inexact_node* %52, %struct.xfrm_pol_inexact_node** %10, align 8
  %53 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %10, align 8
  %54 = icmp ne %struct.xfrm_pol_inexact_node* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %10, align 8
  %57 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %56, i32 0, i32 0
  %58 = load %struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_candidates** %6, align 8
  %59 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* @XFRM_POL_CAND_BOTH, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  store i32* %57, i32** %62, align 8
  br label %63

63:                                               ; preds = %55, %38
  br label %64

64:                                               ; preds = %63, %15
  %65 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %66 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %65, i32 0, i32 1
  %67 = load %struct.xfrm_pol_inexact_bin*, %struct.xfrm_pol_inexact_bin** %7, align 8
  %68 = getelementptr inbounds %struct.xfrm_pol_inexact_bin, %struct.xfrm_pol_inexact_bin* %67, i32 0, i32 0
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.xfrm_pol_inexact_node* @xfrm_policy_lookup_inexact_addr(i32* %66, i32* %68, i32* %69, i32 %70)
  store %struct.xfrm_pol_inexact_node* %71, %struct.xfrm_pol_inexact_node** %10, align 8
  %72 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %10, align 8
  %73 = icmp ne %struct.xfrm_pol_inexact_node* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load %struct.xfrm_pol_inexact_node*, %struct.xfrm_pol_inexact_node** %10, align 8
  %76 = getelementptr inbounds %struct.xfrm_pol_inexact_node, %struct.xfrm_pol_inexact_node* %75, i32 0, i32 0
  %77 = load %struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_candidates** %6, align 8
  %78 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i64, i64* @XFRM_POL_CAND_SADDR, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  store i32* %76, i32** %81, align 8
  br label %82

82:                                               ; preds = %74, %64
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %14
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @memset(%struct.xfrm_pol_inexact_candidates*, i32, i32) #1

declare dso_local %struct.xfrm_pol_inexact_node* @xfrm_policy_lookup_inexact_addr(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
