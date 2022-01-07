; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_policy_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_policy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MPOL_PREFERRED = common dso_local global i64 0, align 8
@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@MPOL_BIND = common dso_local global i64 0, align 8
@__GFP_THISNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mempolicy*, i32)* @policy_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_node(i32 %0, %struct.mempolicy* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mempolicy*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mempolicy* %1, %struct.mempolicy** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %8 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MPOL_PREFERRED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %14 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MPOL_F_LOCAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %21 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %39

24:                                               ; preds = %12, %3
  %25 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %26 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MPOL_BIND, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @__GFP_THISNODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi i1 [ false, %24 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON_ONCE(i32 %37)
  br label %39

39:                                               ; preds = %35, %19
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
