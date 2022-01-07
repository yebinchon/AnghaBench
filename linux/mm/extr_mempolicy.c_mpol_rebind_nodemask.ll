; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_rebind_nodemask.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_rebind_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MPOL_F_STATIC_NODES = common dso_local global i32 0, align 4
@MPOL_F_RELATIVE_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mempolicy*, i32*)* @mpol_rebind_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpol_rebind_nodemask(%struct.mempolicy* %0, i32* %1) #0 {
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %7 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MPOL_F_STATIC_NODES, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %15 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nodes_and(i32 %13, i32 %17, i32 %19)
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %23 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MPOL_F_RELATIVE_NODES, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %30 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @mpol_relative_nodemask(i32* %5, i32* %31, i32* %32)
  br label %52

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %37 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %41 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nodes_remap(i32 %35, i32 %39, i32 %43, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %50 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %34, %28
  br label %53

53:                                               ; preds = %52, %12
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @nodes_empty(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %63 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  ret void
}

declare dso_local i32 @nodes_and(i32, i32, i32) #1

declare dso_local i32 @mpol_relative_nodemask(i32*, i32*, i32*) #1

declare dso_local i32 @nodes_remap(i32, i32, i32, i32) #1

declare dso_local i64 @nodes_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
