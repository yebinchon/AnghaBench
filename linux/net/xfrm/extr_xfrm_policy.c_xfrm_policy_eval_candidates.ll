; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_eval_candidates.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_eval_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_pol_inexact_candidates = type { i32* }
%struct.xfrm_policy = type { i32 }
%struct.flowi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.xfrm_pol_inexact_candidates*, %struct.xfrm_policy*, %struct.flowi*, i32, i32, i32, i32)* @xfrm_policy_eval_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @xfrm_policy_eval_candidates(%struct.xfrm_pol_inexact_candidates* %0, %struct.xfrm_policy* %1, %struct.flowi* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.xfrm_policy*, align 8
  %9 = alloca %struct.xfrm_pol_inexact_candidates*, align 8
  %10 = alloca %struct.xfrm_policy*, align 8
  %11 = alloca %struct.flowi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfrm_policy*, align 8
  %17 = alloca i32, align 4
  store %struct.xfrm_pol_inexact_candidates* %0, %struct.xfrm_pol_inexact_candidates** %9, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %10, align 8
  store %struct.flowi* %2, %struct.flowi** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %51, %7
  %19 = load i32, i32* %17, align 4
  %20 = load %struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_candidates** %9, align 8
  %21 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %18
  %26 = load %struct.xfrm_pol_inexact_candidates*, %struct.xfrm_pol_inexact_candidates** %9, align 8
  %27 = getelementptr inbounds %struct.xfrm_pol_inexact_candidates, %struct.xfrm_pol_inexact_candidates* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %34 = load %struct.flowi*, %struct.flowi** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call %struct.xfrm_policy* @__xfrm_policy_eval_candidates(i32 %32, %struct.xfrm_policy* %33, %struct.flowi* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  store %struct.xfrm_policy* %39, %struct.xfrm_policy** %16, align 8
  %40 = load %struct.xfrm_policy*, %struct.xfrm_policy** %16, align 8
  %41 = icmp ne %struct.xfrm_policy* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  br label %51

43:                                               ; preds = %25
  %44 = load %struct.xfrm_policy*, %struct.xfrm_policy** %16, align 8
  %45 = call i64 @IS_ERR(%struct.xfrm_policy* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %16, align 8
  store %struct.xfrm_policy* %48, %struct.xfrm_policy** %8, align 8
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %16, align 8
  store %struct.xfrm_policy* %50, %struct.xfrm_policy** %10, align 8
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %17, align 4
  br label %18

54:                                               ; preds = %18
  %55 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  store %struct.xfrm_policy* %55, %struct.xfrm_policy** %8, align 8
  br label %56

56:                                               ; preds = %54, %47
  %57 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  ret %struct.xfrm_policy* %57
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.xfrm_policy* @__xfrm_policy_eval_candidates(i32, %struct.xfrm_policy*, %struct.flowi*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
