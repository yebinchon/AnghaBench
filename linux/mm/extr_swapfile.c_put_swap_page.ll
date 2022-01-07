; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_put_swap_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_put_swap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.swap_cluster_info = type { i32 }
%struct.swap_info_struct = type { i8*, i32 }

@SWAPFILE_CLUSTER = common dso_local global i64 0, align 8
@SWAP_HAS_CACHE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_swap_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.swap_cluster_info*, align 8
  %8 = alloca %struct.swap_info_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @swp_offset(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %20 = udiv i64 %18, %19
  store i64 %20, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @hpage_nr_pages(%struct.page* %21)
  %23 = call i32 @swap_entry_size(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.swap_info_struct* @_swap_info_get(i32 %25)
  store %struct.swap_info_struct* %26, %struct.swap_info_struct** %8, align 8
  %27 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %28 = icmp ne %struct.swap_info_struct* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %148

30:                                               ; preds = %2
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %31, i64 %32)
  store %struct.swap_cluster_info* %33, %struct.swap_cluster_info** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %30
  %39 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %40 = call i32 @cluster_is_huge(%struct.swap_cluster_info* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @VM_BUG_ON(i32 %43)
  %45 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %46 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %79, %38
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %12, align 1
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @VM_BUG_ON(i32 %68)
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %55
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %84 = call i32 @cluster_clear_huge(%struct.swap_cluster_info* %83)
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %91 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %92 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %90, %struct.swap_cluster_info* %91)
  %93 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %94 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %93, i32 0, i32 1
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load i64, i64* @SWAPFILE_CLUSTER, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mem_cgroup_uncharge_swap(i32 %98, i64 %96)
  %100 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @swap_free_cluster(%struct.swap_info_struct* %100, i64 %101)
  %103 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %104 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  br label %148

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106, %30
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %138, %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %144

112:                                              ; preds = %108
  %113 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %114 = load i64, i64* %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = add i64 %114, %116
  %118 = load i8, i8* @SWAP_HAS_CACHE, align 1
  %119 = call i32 @__swap_entry_free_locked(%struct.swap_info_struct* %113, i64 %117, i8 zeroext %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %112
  %122 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %123 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %124 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %122, %struct.swap_cluster_info* %123)
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @free_swap_slot(i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, 1
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %148

133:                                              ; preds = %121
  %134 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct* %134, i64 %135)
  br label %137

137:                                              ; preds = %133, %112
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %10, align 4
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %108

144:                                              ; preds = %108
  %145 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %146 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %147 = call i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct* %145, %struct.swap_cluster_info* %146)
  br label %148

148:                                              ; preds = %144, %132, %89, %29
  ret void
}

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @swap_entry_size(i32) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local %struct.swap_info_struct* @_swap_info_get(i32) #1

declare dso_local %struct.swap_cluster_info* @lock_cluster_or_swap_info(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @cluster_is_huge(%struct.swap_cluster_info*) #1

declare dso_local i32 @cluster_clear_huge(%struct.swap_cluster_info*) #1

declare dso_local i32 @unlock_cluster_or_swap_info(%struct.swap_info_struct*, %struct.swap_cluster_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mem_cgroup_uncharge_swap(i32, i64) #1

declare dso_local i32 @swap_free_cluster(%struct.swap_info_struct*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__swap_entry_free_locked(%struct.swap_info_struct*, i64, i8 zeroext) #1

declare dso_local i32 @free_swap_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
