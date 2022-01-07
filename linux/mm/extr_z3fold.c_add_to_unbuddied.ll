; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_add_to_unbuddied.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_add_to_unbuddied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_pool = type { i32, i32 }
%struct.z3fold_header = type { i64, i64, i64, i32, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z3fold_pool*, %struct.z3fold_header*)* @add_to_unbuddied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_unbuddied(%struct.z3fold_pool* %0, %struct.z3fold_header* %1) #0 {
  %3 = alloca %struct.z3fold_pool*, align 8
  %4 = alloca %struct.z3fold_header*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  store %struct.z3fold_pool* %0, %struct.z3fold_pool** %3, align 8
  store %struct.z3fold_header* %1, %struct.z3fold_header** %4, align 8
  %7 = load %struct.z3fold_header*, %struct.z3fold_header** %4, align 8
  %8 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.z3fold_header*, %struct.z3fold_header** %4, align 8
  %13 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.z3fold_header*, %struct.z3fold_header** %4, align 8
  %18 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %16, %11, %2
  %22 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %23 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.list_head* @get_cpu_ptr(i32 %24)
  store %struct.list_head* %25, %struct.list_head** %5, align 8
  %26 = load %struct.z3fold_header*, %struct.z3fold_header** %4, align 8
  %27 = call i32 @num_free_chunks(%struct.z3fold_header* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %29 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.z3fold_header*, %struct.z3fold_header** %4, align 8
  %32 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %31, i32 0, i32 4
  %33 = load %struct.list_head*, %struct.list_head** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i64 %35
  %37 = call i32 @list_add(i32* %32, %struct.list_head* %36)
  %38 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %39 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = call i32 (...) @smp_processor_id()
  %42 = load %struct.z3fold_header*, %struct.z3fold_header** %4, align 8
  %43 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.z3fold_pool*, %struct.z3fold_pool** %3, align 8
  %45 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @put_cpu_ptr(i32 %46)
  br label %48

48:                                               ; preds = %21, %16
  ret void
}

declare dso_local %struct.list_head* @get_cpu_ptr(i32) #1

declare dso_local i32 @num_free_chunks(%struct.z3fold_header*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @put_cpu_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
