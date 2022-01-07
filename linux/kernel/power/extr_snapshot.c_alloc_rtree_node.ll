; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_alloc_rtree_node.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_alloc_rtree_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtree_node = type { i32, i32 }
%struct.chain_allocator = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtree_node* (i32, i32, %struct.chain_allocator*, %struct.list_head*)* @alloc_rtree_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtree_node* @alloc_rtree_node(i32 %0, i32 %1, %struct.chain_allocator* %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.rtree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.chain_allocator*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.rtree_node*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.chain_allocator* %2, %struct.chain_allocator** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %11 = load %struct.chain_allocator*, %struct.chain_allocator** %8, align 8
  %12 = call %struct.rtree_node* @chain_alloc(%struct.chain_allocator* %11, i32 8)
  store %struct.rtree_node* %12, %struct.rtree_node** %10, align 8
  %13 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %14 = icmp ne %struct.rtree_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.rtree_node* null, %struct.rtree_node** %5, align 8
  br label %33

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @get_image_page(i32 %17, i32 %18)
  %20 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %21 = getelementptr inbounds %struct.rtree_node, %struct.rtree_node* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %23 = getelementptr inbounds %struct.rtree_node, %struct.rtree_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store %struct.rtree_node* null, %struct.rtree_node** %5, align 8
  br label %33

27:                                               ; preds = %16
  %28 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  %29 = getelementptr inbounds %struct.rtree_node, %struct.rtree_node* %28, i32 0, i32 0
  %30 = load %struct.list_head*, %struct.list_head** %9, align 8
  %31 = call i32 @list_add_tail(i32* %29, %struct.list_head* %30)
  %32 = load %struct.rtree_node*, %struct.rtree_node** %10, align 8
  store %struct.rtree_node* %32, %struct.rtree_node** %5, align 8
  br label %33

33:                                               ; preds = %27, %26, %15
  %34 = load %struct.rtree_node*, %struct.rtree_node** %5, align 8
  ret %struct.rtree_node* %34
}

declare dso_local %struct.rtree_node* @chain_alloc(%struct.chain_allocator*, i32) #1

declare dso_local i32 @get_image_page(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
