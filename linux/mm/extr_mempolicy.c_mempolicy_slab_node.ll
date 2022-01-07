; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mempolicy_slab_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mempolicy_slab_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mempolicy* }
%struct.mempolicy = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.zoneref = type { i32 }
%struct.zonelist = type { i32 }
%struct.TYPE_6__ = type { %struct.zonelist* }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ZONELIST_FALLBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mempolicy_slab_node() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mempolicy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zoneref*, align 8
  %5 = alloca %struct.zonelist*, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @numa_mem_id()
  store i32 %7, i32* %3, align 4
  %8 = call i64 (...) @in_interrupt()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %1, align 4
  br label %69

12:                                               ; preds = %0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.mempolicy*, %struct.mempolicy** %14, align 8
  store %struct.mempolicy* %15, %struct.mempolicy** %2, align 8
  %16 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  %17 = icmp ne %struct.mempolicy* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  %20 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MPOL_F_LOCAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %12
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %1, align 4
  br label %69

27:                                               ; preds = %18
  %28 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  %29 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %67 [
    i32 128, label %31
    i32 129, label %36
    i32 130, label %39
  ]

31:                                               ; preds = %27
  %32 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  %33 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %1, align 4
  br label %69

36:                                               ; preds = %27
  %37 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  %38 = call i32 @interleave_nodes(%struct.mempolicy* %37)
  store i32 %38, i32* %1, align 4
  br label %69

39:                                               ; preds = %27
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @gfp_zone(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call %struct.TYPE_6__* @NODE_DATA(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.zonelist*, %struct.zonelist** %44, align 8
  %46 = load i64, i64* @ZONELIST_FALLBACK, align 8
  %47 = getelementptr inbounds %struct.zonelist, %struct.zonelist* %45, i64 %46
  store %struct.zonelist* %47, %struct.zonelist** %5, align 8
  %48 = load %struct.zonelist*, %struct.zonelist** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  %51 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = call %struct.zoneref* @first_zones_zonelist(%struct.zonelist* %48, i32 %49, i32* %52)
  store %struct.zoneref* %53, %struct.zoneref** %4, align 8
  %54 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %55 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = load %struct.zoneref*, %struct.zoneref** %4, align 8
  %60 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @zone_to_nid(i32 %61)
  br label %65

63:                                               ; preds = %39
  %64 = load i32, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %62, %58 ], [ %64, %63 ]
  store i32 %66, i32* %1, align 4
  br label %69

67:                                               ; preds = %27
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %10, %25, %31, %36, %65, %67
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @numa_mem_id(...) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @interleave_nodes(%struct.mempolicy*) #1

declare dso_local i32 @gfp_zone(i32) #1

declare dso_local %struct.TYPE_6__* @NODE_DATA(i32) #1

declare dso_local %struct.zoneref* @first_zones_zonelist(%struct.zonelist*, i32, i32*) #1

declare dso_local i32 @zone_to_nid(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
