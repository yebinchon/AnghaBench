; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_rebind_preferred.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_rebind_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MPOL_F_STATIC_NODES = common dso_local global i32 0, align 4
@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@MPOL_F_RELATIVE_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mempolicy*, i32*)* @mpol_rebind_preferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpol_rebind_preferred(%struct.mempolicy* %0, i32* %1) #0 {
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %8 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPOL_F_STATIC_NODES, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %2
  %14 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %15 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @first_node(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @node_isset(i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %28 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @MPOL_F_LOCAL, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %33 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %42

36:                                               ; preds = %13
  %37 = load i32, i32* @MPOL_F_LOCAL, align 4
  %38 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %39 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %25
  br label %91

43:                                               ; preds = %2
  %44 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %45 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MPOL_F_RELATIVE_NODES, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %52 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @mpol_relative_nodemask(i32* %5, i32* %53, i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i8* @first_node(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %60 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  br label %90

62:                                               ; preds = %43
  %63 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %64 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MPOL_F_LOCAL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %62
  %70 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %71 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %75 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @node_remap(i32 %73, i32 %77, i32 %79)
  %81 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %82 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %87 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %69, %62
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90, %42
  ret void
}

declare dso_local i8* @first_node(i32) #1

declare dso_local i64 @node_isset(i32, i32) #1

declare dso_local i32 @mpol_relative_nodemask(i32*, i32*, i32*) #1

declare dso_local i32 @node_remap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
