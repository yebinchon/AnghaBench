; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_init_cache_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_init_cache_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, %struct.kmem_cache_node**, i64 }
%struct.kmem_cache_node = type { i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@REAPTIMEOUT_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32, i32)* @init_cache_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cache_node(%struct.kmem_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kmem_cache_node*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.kmem_cache_node* @get_node(%struct.kmem_cache* %9, i32 %10)
  store %struct.kmem_cache_node* %11, %struct.kmem_cache_node** %8, align 8
  %12 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %13 = icmp ne %struct.kmem_cache_node* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %16 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @nr_cpus_node(i32 %18)
  %20 = add nsw i32 1, %19
  %21 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %22 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %27 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %31 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %33 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %32, i32 0, i32 2
  %34 = call i32 @spin_unlock_irq(i32* %33)
  store i32 0, i32* %4, align 4
  br label %78

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.kmem_cache_node* @kmalloc_node(i32 24, i32 %36, i32 %37)
  store %struct.kmem_cache_node* %38, %struct.kmem_cache_node** %8, align 8
  %39 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %40 = icmp ne %struct.kmem_cache_node* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %35
  %45 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %46 = call i32 @kmem_cache_node_init(%struct.kmem_cache_node* %45)
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i64, i64* @REAPTIMEOUT_NODE, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %51 = ptrtoint %struct.kmem_cache* %50 to i64
  %52 = load i64, i64* @REAPTIMEOUT_NODE, align 8
  %53 = urem i64 %51, %52
  %54 = add i64 %49, %53
  %55 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %56 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @nr_cpus_node(i32 %57)
  %59 = add nsw i32 1, %58
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %61 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %66 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %70 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %8, align 8
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %73 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %72, i32 0, i32 1
  %74 = load %struct.kmem_cache_node**, %struct.kmem_cache_node*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.kmem_cache_node*, %struct.kmem_cache_node** %74, i64 %76
  store %struct.kmem_cache_node* %71, %struct.kmem_cache_node** %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %44, %41, %14
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.kmem_cache_node* @get_node(%struct.kmem_cache*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @nr_cpus_node(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.kmem_cache_node* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @kmem_cache_node_init(%struct.kmem_cache_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
