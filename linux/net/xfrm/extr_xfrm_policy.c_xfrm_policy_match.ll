; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i64, i64, i32, %struct.TYPE_2__, i32, %struct.xfrm_selector }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfrm_selector = type { i32 }
%struct.flowi = type { i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.flowi*, i64, i32, i32, i64)* @xfrm_policy_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_policy_match(%struct.xfrm_policy* %0, %struct.flowi* %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_policy*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.xfrm_selector*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %8, align 8
  store %struct.flowi* %1, %struct.flowi** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 5
  store %struct.xfrm_selector* %18, %struct.xfrm_selector** %14, align 8
  %19 = load i32, i32* @ESRCH, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %22 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %52, label %26

26:                                               ; preds = %6
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %28 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load %struct.flowi*, %struct.flowi** %9, align 8
  %34 = getelementptr inbounds %struct.flowi, %struct.flowi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %37 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %35, %39
  %41 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %42 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %32
  %47 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %48 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %32, %26, %6
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %7, align 4
  br label %72

54:                                               ; preds = %46
  %55 = load %struct.xfrm_selector*, %struct.xfrm_selector** %14, align 8
  %56 = load %struct.flowi*, %struct.flowi** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @xfrm_selector_match(%struct.xfrm_selector* %55, %struct.flowi* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.xfrm_policy*, %struct.xfrm_policy** %8, align 8
  %63 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.flowi*, %struct.flowi** %9, align 8
  %66 = getelementptr inbounds %struct.flowi, %struct.flowi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @security_xfrm_policy_lookup(i32 %64, i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %61, %54
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %52
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @xfrm_selector_match(%struct.xfrm_selector*, %struct.flowi*, i32) #1

declare dso_local i32 @security_xfrm_policy_lookup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
