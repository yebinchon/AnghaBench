; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c___vmalloc_area_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c___vmalloc_area_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i8*, i32, i32, %struct.page**, i32 }
%struct.page = type { i32 }

@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@nr_vmalloc_pages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"vmalloc: allocation failure, allocated %ld of %ld bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vm_struct*, i32, i32, i32)* @__vmalloc_area_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__vmalloc_area_node(%struct.vm_struct* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  store %struct.vm_struct* %0, %struct.vm_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @__GFP_ZERO, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @__GFP_NOWARN, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_DMA, align 4
  %28 = load i32, i32* @GFP_DMA32, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @__GFP_HIGHMEM, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  store i32 %36, i32* %16, align 4
  %37 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %38 = call i32 @get_vm_area_size(%struct.vm_struct* %37)
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = lshr i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %35
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PAGE_KERNEL, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %56 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.page** @__vmalloc_node(i32 %49, i32 1, i32 %52, i32 %53, i32 %54, i32 %57)
  store %struct.page** %58, %struct.page*** %10, align 8
  br label %64

59:                                               ; preds = %35
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.page** @kmalloc_node(i32 %60, i32 %61, i32 %62)
  store %struct.page** %63, %struct.page*** %10, align 8
  br label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.page**, %struct.page*** %10, align 8
  %66 = icmp ne %struct.page** %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %69 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @remove_vm_area(i8* %70)
  %72 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %73 = call i32 @kfree(%struct.vm_struct* %72)
  store i8* null, i8** %5, align 8
  br label %166

74:                                               ; preds = %64
  %75 = load %struct.page**, %struct.page*** %10, align 8
  %76 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %77 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %76, i32 0, i32 3
  store %struct.page** %75, %struct.page*** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %80 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %133, %74
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %84 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %136

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @NUMA_NO_NODE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %92, %93
  %95 = call %struct.page* @alloc_page(i32 %94)
  store %struct.page* %95, %struct.page** %17, align 8
  br label %102

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = or i32 %98, %99
  %101 = call %struct.page* @alloc_pages_node(i32 %97, i32 %100, i32 0)
  store %struct.page* %101, %struct.page** %17, align 8
  br label %102

102:                                              ; preds = %96, %91
  %103 = load %struct.page*, %struct.page** %17, align 8
  %104 = icmp ne %struct.page* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %112 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %114 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @atomic_long_add(i32 %115, i32* @nr_vmalloc_pages)
  br label %151

117:                                              ; preds = %102
  %118 = load %struct.page*, %struct.page** %17, align 8
  %119 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %120 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %119, i32 0, i32 3
  %121 = load %struct.page**, %struct.page*** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.page*, %struct.page** %121, i64 %123
  store %struct.page* %118, %struct.page** %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %16, align 4
  %127 = or i32 %125, %126
  %128 = call i64 @gfpflags_allow_blocking(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = call i32 (...) @cond_resched()
  br label %132

132:                                              ; preds = %130, %117
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %81

136:                                              ; preds = %81
  %137 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %138 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @atomic_long_add(i32 %139, i32* @nr_vmalloc_pages)
  %141 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.page**, %struct.page*** %10, align 8
  %144 = call i64 @map_vm_area(%struct.vm_struct* %141, i32 %142, %struct.page** %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %151

147:                                              ; preds = %136
  %148 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %149 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %5, align 8
  br label %166

151:                                              ; preds = %146, %109
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %154 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @PAGE_SIZE, align 4
  %157 = mul i32 %155, %156
  %158 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %159 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @warn_alloc(i32 %152, i32* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %160)
  %162 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %163 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @__vfree(i8* %164)
  store i8* null, i8** %5, align 8
  br label %166

166:                                              ; preds = %151, %147, %67
  %167 = load i8*, i8** %5, align 8
  ret i8* %167
}

declare dso_local i32 @get_vm_area_size(%struct.vm_struct*) #1

declare dso_local %struct.page** @__vmalloc_node(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.page** @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @remove_vm_area(i8*) #1

declare dso_local i32 @kfree(%struct.vm_struct*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i64 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @map_vm_area(%struct.vm_struct*, i32, %struct.page**) #1

declare dso_local i32 @warn_alloc(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @__vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
