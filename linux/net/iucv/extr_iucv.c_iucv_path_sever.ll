; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_sever.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_path_sever.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { i64, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_active_cpu = common dso_local global i64 0, align 8
@iucv_table_lock = common dso_local global i32 0, align 4
@iucv_path_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_sever(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load i64, i64* @iucv_active_cpu, align 8
  %14 = call i64 (...) @smp_processor_id()
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @spin_lock_bh(i32* @iucv_table_lock)
  br label %18

18:                                               ; preds = %16, %12
  %19 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %20 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @iucv_sever_pathid(i64 %21, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32**, i32*** @iucv_path_table, align 8
  %25 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %26 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32*, i32** %24, i64 %27
  store i32* null, i32** %28, align 8
  %29 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %30 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %29, i32 0, i32 1
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load i64, i64* @iucv_active_cpu, align 8
  %33 = call i64 (...) @smp_processor_id()
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = call i32 @spin_unlock_bh(i32* @iucv_table_lock)
  br label %37

37:                                               ; preds = %35, %18
  br label %38

38:                                               ; preds = %37, %9
  %39 = call i32 (...) @preempt_enable()
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iucv_sever_pathid(i64, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
