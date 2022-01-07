; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_rebind_policy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_rebind_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mempolicy*, i32*)* }
%struct.mempolicy = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@mpol_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mempolicy*, i32*)* @mpol_rebind_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpol_rebind_policy(%struct.mempolicy* %0, i32* %1) #0 {
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca i32*, align 8
  store %struct.mempolicy* %0, %struct.mempolicy** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %6 = icmp ne %struct.mempolicy* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %40

8:                                                ; preds = %2
  %9 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %10 = call i32 @mpol_store_user_nodemask(%struct.mempolicy* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %14 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MPOL_F_LOCAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %12
  %20 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %21 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @nodes_equal(i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %40

29:                                               ; preds = %19, %12, %8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mpol_ops, align 8
  %31 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %32 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.mempolicy*, i32*)*, i32 (%struct.mempolicy*, i32*)** %35, align 8
  %37 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 %36(%struct.mempolicy* %37, i32* %38)
  br label %40

40:                                               ; preds = %29, %28, %7
  ret void
}

declare dso_local i32 @mpol_store_user_nodemask(%struct.mempolicy*) #1

declare dso_local i64 @nodes_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
