; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_node_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_kmem_cache_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache_node = type { i64, i64, i32, i64, i32*, i32*, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache_node*)* @kmem_cache_node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmem_cache_node_init(%struct.kmem_cache_node* %0) #0 {
  %2 = alloca %struct.kmem_cache_node*, align 8
  store %struct.kmem_cache_node* %0, %struct.kmem_cache_node** %2, align 8
  %3 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %4 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %3, i32 0, i32 10
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %7 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %6, i32 0, i32 9
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %10 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %9, i32 0, i32 8
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %13 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %15 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %17 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %19 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %21 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %23 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %26 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %2, align 8
  %28 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
