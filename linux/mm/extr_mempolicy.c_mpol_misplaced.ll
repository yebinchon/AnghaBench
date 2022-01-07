; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_misplaced.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_misplaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i32 }
%struct.mempolicy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.zoneref = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@MPOL_F_MOF = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MPOL_F_LOCAL = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@MPOL_F_MORON = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpol_misplaced(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mempolicy*, align 8
  %8 = alloca %struct.zoneref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @page_to_nid(%struct.page* %15)
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @raw_smp_processor_id()
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @cpu_to_node(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %20, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.mempolicy* @get_vma_policy(%struct.vm_area_struct* %21, i64 %22)
  store %struct.mempolicy* %23, %struct.mempolicy** %7, align 8
  %24 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %25 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MPOL_F_MOF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %116

31:                                               ; preds = %3
  %32 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %33 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %90 [
    i32 129, label %35
    i32 128, label %52
    i32 130, label %67
  ]

35:                                               ; preds = %31
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = sub i64 %39, %43
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = lshr i64 %44, %45
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %10, align 8
  %49 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @offset_il_node(%struct.mempolicy* %49, i64 %50)
  store i32 %51, i32* %13, align 4
  br label %92

52:                                               ; preds = %31
  %53 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %54 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MPOL_F_LOCAL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 (...) @numa_node_id()
  store i32 %60, i32* %13, align 4
  br label %66

61:                                               ; preds = %52
  %62 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %63 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %61, %59
  br label %92

67:                                               ; preds = %31
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %70 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @node_isset(i32 %68, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %116

76:                                               ; preds = %67
  %77 = call i32 (...) @numa_node_id()
  %78 = load i32, i32* @GFP_HIGHUSER, align 4
  %79 = call i32 @node_zonelist(i32 %77, i32 %78)
  %80 = load i32, i32* @GFP_HIGHUSER, align 4
  %81 = call i32 @gfp_zone(i32 %80)
  %82 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %83 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = call %struct.zoneref* @first_zones_zonelist(i32 %79, i32 %81, i32* %84)
  store %struct.zoneref* %85, %struct.zoneref** %8, align 8
  %86 = load %struct.zoneref*, %struct.zoneref** %8, align 8
  %87 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @zone_to_nid(i32 %88)
  store i32 %89, i32* %13, align 4
  br label %92

90:                                               ; preds = %31
  %91 = call i32 (...) @BUG()
  br label %92

92:                                               ; preds = %90, %76, %66, %35
  %93 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %94 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MPOL_F_MORON, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* @current, align 4
  %102 = load %struct.page*, %struct.page** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @should_numa_migrate_memory(i32 %101, %struct.page* %102, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  br label %116

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %92
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %107, %75, %30
  %117 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %118 = call i32 @mpol_cond_put(%struct.mempolicy* %117)
  %119 = load i32, i32* %14, align 4
  ret i32 %119
}

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.mempolicy* @get_vma_policy(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @offset_il_node(%struct.mempolicy*, i64) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @node_isset(i32, i32) #1

declare dso_local %struct.zoneref* @first_zones_zonelist(i32, i32, i32*) #1

declare dso_local i32 @node_zonelist(i32, i32) #1

declare dso_local i32 @gfp_zone(i32) #1

declare dso_local i32 @zone_to_nid(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @should_numa_migrate_memory(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
