; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_mark_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_mark_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.xfrm_policy*)* @xfrm_policy_mark_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_policy_mark_match(%struct.xfrm_policy* %0, %struct.xfrm_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %5, align 8
  %7 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %8 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %10, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %17 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %27 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %31 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %58

36:                                               ; preds = %25, %2
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %37, %41
  %43 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %44 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %50 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %53 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %48, %36
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %35
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
