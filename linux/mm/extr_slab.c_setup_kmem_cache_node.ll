; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_setup_kmem_cache_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_setup_kmem_cache_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32, i32 }
%struct.kmem_cache_node = type { i32, %struct.alien_cache**, %struct.array_cache* }
%struct.alien_cache = type { i32 }
%struct.array_cache = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@use_alien_caches = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i32, i32, i32)* @setup_kmem_cache_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_kmem_cache_node(%struct.kmem_cache* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmem_cache_node*, align 8
  %11 = alloca %struct.array_cache*, align 8
  %12 = alloca %struct.array_cache*, align 8
  %13 = alloca %struct.alien_cache**, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  store %struct.array_cache* null, %struct.array_cache** %11, align 8
  store %struct.array_cache* null, %struct.array_cache** %12, align 8
  store %struct.alien_cache** null, %struct.alien_cache*** %13, align 8
  %16 = load i32, i32* @list, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = load i64, i64* @use_alien_caches, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %23 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.alien_cache** @alloc_alien_cache(i32 %21, i32 %24, i32 %25)
  store %struct.alien_cache** %26, %struct.alien_cache*** %13, align 8
  %27 = load %struct.alien_cache**, %struct.alien_cache*** %13, align 8
  %28 = icmp ne %struct.alien_cache** %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %129

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %4
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %33 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %39 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %42 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.array_cache* @alloc_arraycache(i32 %37, i32 %44, i32 -1163005939, i32 %45)
  store %struct.array_cache* %46, %struct.array_cache** %12, align 8
  %47 = load %struct.array_cache*, %struct.array_cache** %12, align 8
  %48 = icmp ne %struct.array_cache* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %129

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @init_cache_node(%struct.kmem_cache* %52, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %129

59:                                               ; preds = %51
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call %struct.kmem_cache_node* @get_node(%struct.kmem_cache* %60, i32 %61)
  store %struct.kmem_cache_node* %62, %struct.kmem_cache_node** %10, align 8
  %63 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %64 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %67 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %66, i32 0, i32 2
  %68 = load %struct.array_cache*, %struct.array_cache** %67, align 8
  %69 = icmp ne %struct.array_cache* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %75 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %76 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %75, i32 0, i32 2
  %77 = load %struct.array_cache*, %struct.array_cache** %76, align 8
  %78 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %81 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %80, i32 0, i32 2
  %82 = load %struct.array_cache*, %struct.array_cache** %81, align 8
  %83 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @free_block(%struct.kmem_cache* %74, i32 %79, i64 %84, i32 %85, i32* @list)
  %87 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %88 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %87, i32 0, i32 2
  %89 = load %struct.array_cache*, %struct.array_cache** %88, align 8
  %90 = getelementptr inbounds %struct.array_cache, %struct.array_cache* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %73, %70, %59
  %92 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %93 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %92, i32 0, i32 2
  %94 = load %struct.array_cache*, %struct.array_cache** %93, align 8
  %95 = icmp ne %struct.array_cache* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96, %91
  %100 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %101 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %100, i32 0, i32 2
  %102 = load %struct.array_cache*, %struct.array_cache** %101, align 8
  store %struct.array_cache* %102, %struct.array_cache** %11, align 8
  %103 = load %struct.array_cache*, %struct.array_cache** %12, align 8
  %104 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %105 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %104, i32 0, i32 2
  store %struct.array_cache* %103, %struct.array_cache** %105, align 8
  store %struct.array_cache* null, %struct.array_cache** %12, align 8
  br label %106

106:                                              ; preds = %99, %96
  %107 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %108 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %107, i32 0, i32 1
  %109 = load %struct.alien_cache**, %struct.alien_cache*** %108, align 8
  %110 = icmp ne %struct.alien_cache** %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load %struct.alien_cache**, %struct.alien_cache*** %13, align 8
  %113 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %114 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %113, i32 0, i32 1
  store %struct.alien_cache** %112, %struct.alien_cache*** %114, align 8
  store %struct.alien_cache** null, %struct.alien_cache*** %13, align 8
  br label %115

115:                                              ; preds = %111, %106
  %116 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %10, align 8
  %117 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_irq(i32* %117)
  %119 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %120 = call i32 @slabs_destroy(%struct.kmem_cache* %119, i32* @list)
  %121 = load %struct.array_cache*, %struct.array_cache** %11, align 8
  %122 = icmp ne %struct.array_cache* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (...) @synchronize_rcu()
  br label %128

128:                                              ; preds = %126, %123, %115
  br label %129

129:                                              ; preds = %128, %58, %49, %29
  %130 = load %struct.array_cache*, %struct.array_cache** %11, align 8
  %131 = call i32 @kfree(%struct.array_cache* %130)
  %132 = load %struct.array_cache*, %struct.array_cache** %12, align 8
  %133 = call i32 @kfree(%struct.array_cache* %132)
  %134 = load %struct.alien_cache**, %struct.alien_cache*** %13, align 8
  %135 = call i32 @free_alien_cache(%struct.alien_cache** %134)
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.alien_cache** @alloc_alien_cache(i32, i32, i32) #1

declare dso_local %struct.array_cache* @alloc_arraycache(i32, i32, i32, i32) #1

declare dso_local i32 @init_cache_node(%struct.kmem_cache*, i32, i32) #1

declare dso_local %struct.kmem_cache_node* @get_node(%struct.kmem_cache*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @free_block(%struct.kmem_cache*, i32, i64, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @slabs_destroy(%struct.kmem_cache*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.array_cache*) #1

declare dso_local i32 @free_alien_cache(%struct.alien_cache**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
