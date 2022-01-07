; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_percpu_freelist.c___pcpu_freelist_pop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_percpu_freelist.c___pcpu_freelist_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_freelist_node = type { %struct.pcpu_freelist_node* }
%struct.pcpu_freelist = type { i32 }
%struct.pcpu_freelist_head = type { i32, %struct.pcpu_freelist_node* }

@cpu_possible_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcpu_freelist_node* @__pcpu_freelist_pop(%struct.pcpu_freelist* %0) #0 {
  %2 = alloca %struct.pcpu_freelist_node*, align 8
  %3 = alloca %struct.pcpu_freelist*, align 8
  %4 = alloca %struct.pcpu_freelist_head*, align 8
  %5 = alloca %struct.pcpu_freelist_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcpu_freelist* %0, %struct.pcpu_freelist** %3, align 8
  %8 = call i32 (...) @raw_smp_processor_id()
  store i32 %8, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %1, %49
  %10 = load %struct.pcpu_freelist*, %struct.pcpu_freelist** %3, align 8
  %11 = getelementptr inbounds %struct.pcpu_freelist, %struct.pcpu_freelist* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.pcpu_freelist_head* @per_cpu_ptr(i32 %12, i32 %13)
  store %struct.pcpu_freelist_head* %14, %struct.pcpu_freelist_head** %4, align 8
  %15 = load %struct.pcpu_freelist_head*, %struct.pcpu_freelist_head** %4, align 8
  %16 = getelementptr inbounds %struct.pcpu_freelist_head, %struct.pcpu_freelist_head* %15, i32 0, i32 0
  %17 = call i32 @raw_spin_lock(i32* %16)
  %18 = load %struct.pcpu_freelist_head*, %struct.pcpu_freelist_head** %4, align 8
  %19 = getelementptr inbounds %struct.pcpu_freelist_head, %struct.pcpu_freelist_head* %18, i32 0, i32 1
  %20 = load %struct.pcpu_freelist_node*, %struct.pcpu_freelist_node** %19, align 8
  store %struct.pcpu_freelist_node* %20, %struct.pcpu_freelist_node** %5, align 8
  %21 = load %struct.pcpu_freelist_node*, %struct.pcpu_freelist_node** %5, align 8
  %22 = icmp ne %struct.pcpu_freelist_node* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %9
  %24 = load %struct.pcpu_freelist_node*, %struct.pcpu_freelist_node** %5, align 8
  %25 = getelementptr inbounds %struct.pcpu_freelist_node, %struct.pcpu_freelist_node* %24, i32 0, i32 0
  %26 = load %struct.pcpu_freelist_node*, %struct.pcpu_freelist_node** %25, align 8
  %27 = load %struct.pcpu_freelist_head*, %struct.pcpu_freelist_head** %4, align 8
  %28 = getelementptr inbounds %struct.pcpu_freelist_head, %struct.pcpu_freelist_head* %27, i32 0, i32 1
  store %struct.pcpu_freelist_node* %26, %struct.pcpu_freelist_node** %28, align 8
  %29 = load %struct.pcpu_freelist_head*, %struct.pcpu_freelist_head** %4, align 8
  %30 = getelementptr inbounds %struct.pcpu_freelist_head, %struct.pcpu_freelist_head* %29, i32 0, i32 0
  %31 = call i32 @raw_spin_unlock(i32* %30)
  %32 = load %struct.pcpu_freelist_node*, %struct.pcpu_freelist_node** %5, align 8
  store %struct.pcpu_freelist_node* %32, %struct.pcpu_freelist_node** %2, align 8
  br label %50

33:                                               ; preds = %9
  %34 = load %struct.pcpu_freelist_head*, %struct.pcpu_freelist_head** %4, align 8
  %35 = getelementptr inbounds %struct.pcpu_freelist_head, %struct.pcpu_freelist_head* %34, i32 0, i32 0
  %36 = call i32 @raw_spin_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @cpu_possible_mask, align 4
  %39 = call i32 @cpumask_next(i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @nr_cpu_ids, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.pcpu_freelist_node* null, %struct.pcpu_freelist_node** %2, align 8
  br label %50

49:                                               ; preds = %44
  br label %9

50:                                               ; preds = %48, %23
  %51 = load %struct.pcpu_freelist_node*, %struct.pcpu_freelist_node** %2, align 8
  ret %struct.pcpu_freelist_node* %51
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.pcpu_freelist_head* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
