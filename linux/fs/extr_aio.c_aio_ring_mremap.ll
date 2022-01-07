; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_ring_mremap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_ring_mremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct*, %struct.file* }
%struct.mm_struct = type { i32, i32 }
%struct.file = type { i32 }
%struct.kioctx_table = type { i32, i32* }
%struct.kioctx = type { i32, i32, i32, %struct.file* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @aio_ring_mremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_ring_mremap(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.kioctx_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kioctx*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 2
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %3, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %4, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @rcu_dereference(i32 %23)
  %25 = bitcast i8* %24 to %struct.kioctx_table*
  store %struct.kioctx_table* %25, %struct.kioctx_table** %5, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %65, %1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.kioctx_table*, %struct.kioctx_table** %5, align 8
  %29 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %26
  %33 = load %struct.kioctx_table*, %struct.kioctx_table** %5, align 8
  %34 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @rcu_dereference(i32 %39)
  %41 = bitcast i8* %40 to %struct.kioctx*
  store %struct.kioctx* %41, %struct.kioctx** %8, align 8
  %42 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %43 = icmp ne %struct.kioctx* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %32
  %45 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %46 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %45, i32 0, i32 3
  %47 = load %struct.file*, %struct.file** %46, align 8
  %48 = load %struct.file*, %struct.file** %3, align 8
  %49 = icmp eq %struct.file* %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %52 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %51, i32 0, i32 2
  %53 = call i32 @atomic_read(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %60 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  %62 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %50
  br label %68

64:                                               ; preds = %44, %32
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %26

68:                                               ; preds = %63, %26
  %69 = call i32 (...) @rcu_read_unlock()
  %70 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %71 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
