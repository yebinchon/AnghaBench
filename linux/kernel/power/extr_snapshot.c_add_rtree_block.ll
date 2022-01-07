; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_add_rtree_block.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_add_rtree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_zone_bm_rtree = type { i32, i32, i32, %struct.rtree_node*, i32 }
%struct.rtree_node = type { i64* }
%struct.chain_allocator = type { i32 }

@BM_RTREE_LEVEL_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BM_RTREE_LEVEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_zone_bm_rtree*, i32, i32, %struct.chain_allocator*)* @add_rtree_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_rtree_block(%struct.mem_zone_bm_rtree* %0, i32 %1, i32 %2, %struct.chain_allocator* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_zone_bm_rtree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.chain_allocator*, align 8
  %10 = alloca %struct.rtree_node*, align 8
  %11 = alloca %struct.rtree_node*, align 8
  %12 = alloca %struct.rtree_node**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mem_zone_bm_rtree* %0, %struct.mem_zone_bm_rtree** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.chain_allocator* %3, %struct.chain_allocator** %9, align 8
  %17 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %18 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %23, %4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @BM_RTREE_LEVEL_SHIFT, align 4
  %27 = load i32, i32* %14, align 4
  %28 = lshr i32 %27, %26
  store i32 %28, i32* %14, align 4
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %31 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %65, %29
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.chain_allocator*, %struct.chain_allocator** %9, align 8
  %41 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %42 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %41, i32 0, i32 2
  %43 = call %struct.rtree_node* @alloc_rtree_node(i32 %38, i32 %39, %struct.chain_allocator* %40, i32* %42)
  store %struct.rtree_node* %43, %struct.rtree_node** %10, align 8
  %44 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %45 = icmp ne %struct.rtree_node* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %143

49:                                               ; preds = %37
  %50 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %51 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %50, i32 0, i32 3
  %52 = load %struct.rtree_node*, %struct.rtree_node** %51, align 8
  %53 = ptrtoint %struct.rtree_node* %52 to i64
  %54 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %55 = getelementptr inbounds %struct.rtree_node, %struct.rtree_node* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %53, i64* %57, align 8
  %58 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %59 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %60 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %59, i32 0, i32 3
  store %struct.rtree_node* %58, %struct.rtree_node** %60, align 8
  %61 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %62 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.chain_allocator*, %struct.chain_allocator** %9, align 8
  %72 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %73 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %72, i32 0, i32 4
  %74 = call %struct.rtree_node* @alloc_rtree_node(i32 %69, i32 %70, %struct.chain_allocator* %71, i32* %73)
  store %struct.rtree_node* %74, %struct.rtree_node** %11, align 8
  %75 = load %struct.rtree_node*, %struct.rtree_node** %11, align 8
  %76 = icmp ne %struct.rtree_node* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %143

80:                                               ; preds = %68
  %81 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %82 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %81, i32 0, i32 3
  %83 = load %struct.rtree_node*, %struct.rtree_node** %82, align 8
  store %struct.rtree_node* %83, %struct.rtree_node** %10, align 8
  %84 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %85 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %84, i32 0, i32 3
  store %struct.rtree_node** %85, %struct.rtree_node*** %12, align 8
  %86 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %87 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %14, align 4
  %89 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %90 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %133, %80
  %93 = load i32, i32* %15, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %136

95:                                               ; preds = %92
  %96 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %97 = icmp ne %struct.rtree_node* %96, null
  br i1 %97, label %113, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.chain_allocator*, %struct.chain_allocator** %9, align 8
  %102 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %103 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %102, i32 0, i32 2
  %104 = call %struct.rtree_node* @alloc_rtree_node(i32 %99, i32 %100, %struct.chain_allocator* %101, i32* %103)
  store %struct.rtree_node* %104, %struct.rtree_node** %10, align 8
  %105 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %106 = icmp ne %struct.rtree_node* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %143

110:                                              ; preds = %98
  %111 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %112 = load %struct.rtree_node**, %struct.rtree_node*** %12, align 8
  store %struct.rtree_node* %111, %struct.rtree_node** %112, align 8
  br label %113

113:                                              ; preds = %110, %95
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* @BM_RTREE_LEVEL_SHIFT, align 4
  %118 = mul i32 %116, %117
  %119 = lshr i32 %114, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* @BM_RTREE_LEVEL_MASK, align 4
  %121 = load i32, i32* %16, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %16, align 4
  %123 = load %struct.rtree_node**, %struct.rtree_node*** %12, align 8
  %124 = load %struct.rtree_node*, %struct.rtree_node** %123, align 8
  %125 = getelementptr inbounds %struct.rtree_node, %struct.rtree_node* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = bitcast i64* %129 to %struct.rtree_node**
  store %struct.rtree_node** %130, %struct.rtree_node*** %12, align 8
  %131 = load %struct.rtree_node**, %struct.rtree_node*** %12, align 8
  %132 = load %struct.rtree_node*, %struct.rtree_node** %131, align 8
  store %struct.rtree_node* %132, %struct.rtree_node** %10, align 8
  br label %133

133:                                              ; preds = %113
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %15, align 4
  br label %92

136:                                              ; preds = %92
  %137 = load %struct.mem_zone_bm_rtree*, %struct.mem_zone_bm_rtree** %6, align 8
  %138 = getelementptr inbounds %struct.mem_zone_bm_rtree, %struct.mem_zone_bm_rtree* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.rtree_node*, %struct.rtree_node** %11, align 8
  %142 = load %struct.rtree_node**, %struct.rtree_node*** %12, align 8
  store %struct.rtree_node* %141, %struct.rtree_node** %142, align 8
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %136, %107, %77, %46
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.rtree_node* @alloc_rtree_node(i32, i32, %struct.chain_allocator*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
