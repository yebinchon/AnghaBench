; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_destroy_pool.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_destroy_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_pool = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z3fold_pool*)* @z3fold_destroy_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z3fold_destroy_pool(%struct.z3fold_pool* %0) #0 {
  %2 = alloca %struct.z3fold_pool*, align 8
  store %struct.z3fold_pool* %0, %struct.z3fold_pool** %2, align 8
  %3 = load %struct.z3fold_pool*, %struct.z3fold_pool** %2, align 8
  %4 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kmem_cache_destroy(i32 %5)
  %7 = load %struct.z3fold_pool*, %struct.z3fold_pool** %2, align 8
  %8 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @destroy_workqueue(i32 %9)
  %11 = load %struct.z3fold_pool*, %struct.z3fold_pool** %2, align 8
  %12 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @destroy_workqueue(i32 %13)
  %15 = load %struct.z3fold_pool*, %struct.z3fold_pool** %2, align 8
  %16 = call i32 @z3fold_unregister_migration(%struct.z3fold_pool* %15)
  %17 = load %struct.z3fold_pool*, %struct.z3fold_pool** %2, align 8
  %18 = call i32 @kfree(%struct.z3fold_pool* %17)
  ret void
}

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @z3fold_unregister_migration(%struct.z3fold_pool*) #1

declare dso_local i32 @kfree(%struct.z3fold_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
