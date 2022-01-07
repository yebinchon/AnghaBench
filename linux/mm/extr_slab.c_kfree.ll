; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_kfree.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_kfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @_RET_IP_, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @trace_kfree(i32 %5, i8* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @ZERO_OR_NULL_PTR(i8* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @kfree_debugcheck(i8* %16)
  %18 = load i8*, i8** %2, align 8
  %19 = call %struct.kmem_cache* @virt_to_cache(i8* %18)
  store %struct.kmem_cache* %19, %struct.kmem_cache** %3, align 8
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %21 = icmp ne %struct.kmem_cache* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @local_irq_restore(i64 %23)
  br label %42

25:                                               ; preds = %13
  %26 = load i8*, i8** %2, align 8
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %28 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @debug_check_no_locks_freed(i8* %26, i32 %29)
  %31 = load i8*, i8** %2, align 8
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %33 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @debug_check_no_obj_freed(i8* %31, i32 %34)
  %36 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* @_RET_IP_, align 4
  %39 = call i32 @__cache_free(%struct.kmem_cache* %36, i8* %37, i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  br label %42

42:                                               ; preds = %25, %22, %12
  ret void
}

declare dso_local i32 @trace_kfree(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ZERO_OR_NULL_PTR(i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @kfree_debugcheck(i8*) #1

declare dso_local %struct.kmem_cache* @virt_to_cache(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @debug_check_no_locks_freed(i8*, i32) #1

declare dso_local i32 @debug_check_no_obj_freed(i8*, i32) #1

declare dso_local i32 @__cache_free(%struct.kmem_cache*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
