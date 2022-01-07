; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_external_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_external_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_irq_data = type { i64, i32 }
%struct.ext_code = type { i32 }
%struct.iucv_irq_list = type { i32, i32 }

@IRQEXT_IUC = common dso_local global i32 0, align 4
@iucv_irq_data = common dso_local global %struct.iucv_irq_data** null, align 8
@iucv_max_pathid = common dso_local global i64 0, align 8
@iucv_error_no_listener = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"iucv_external_interrupt: out of memory\0A\00", align 1
@iucv_queue_lock = common dso_local global i32 0, align 4
@iucv_work_queue = common dso_local global i32 0, align 4
@iucv_work = common dso_local global i32 0, align 4
@iucv_task_queue = common dso_local global i32 0, align 4
@iucv_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @iucv_external_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_external_interrupt(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ext_code, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.iucv_irq_data*, align 8
  %8 = alloca %struct.iucv_irq_list*, align 8
  %9 = getelementptr inbounds %struct.ext_code, %struct.ext_code* %4, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @IRQEXT_IUC, align 4
  %11 = call i32 @inc_irq_stat(i32 %10)
  %12 = load %struct.iucv_irq_data**, %struct.iucv_irq_data*** @iucv_irq_data, align 8
  %13 = call i64 (...) @smp_processor_id()
  %14 = getelementptr inbounds %struct.iucv_irq_data*, %struct.iucv_irq_data** %12, i64 %13
  %15 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %14, align 8
  store %struct.iucv_irq_data* %15, %struct.iucv_irq_data** %7, align 8
  %16 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  %17 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @iucv_max_pathid, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  %23 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @iucv_max_pathid, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  %30 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @iucv_error_no_listener, align 4
  %33 = call i32 @iucv_sever_pathid(i64 %31, i32 %32)
  br label %76

34:                                               ; preds = %3
  %35 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  %36 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  %41 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 9
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ true, %34 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.iucv_irq_list* @kmalloc(i32 8, i32 %48)
  store %struct.iucv_irq_list* %49, %struct.iucv_irq_list** %8, align 8
  %50 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %8, align 8
  %51 = icmp ne %struct.iucv_irq_list* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %76

54:                                               ; preds = %44
  %55 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %8, align 8
  %56 = getelementptr inbounds %struct.iucv_irq_list, %struct.iucv_irq_list* %55, i32 0, i32 1
  %57 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  %58 = call i32 @memcpy(i32* %56, %struct.iucv_irq_data* %57, i32 4)
  %59 = call i32 @spin_lock(i32* @iucv_queue_lock)
  %60 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  %61 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %8, align 8
  %66 = getelementptr inbounds %struct.iucv_irq_list, %struct.iucv_irq_list* %65, i32 0, i32 0
  %67 = call i32 @list_add_tail(i32* %66, i32* @iucv_work_queue)
  %68 = call i32 @schedule_work(i32* @iucv_work)
  br label %74

69:                                               ; preds = %54
  %70 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %8, align 8
  %71 = getelementptr inbounds %struct.iucv_irq_list, %struct.iucv_irq_list* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %71, i32* @iucv_task_queue)
  %73 = call i32 @tasklet_schedule(i32* @iucv_tasklet)
  br label %74

74:                                               ; preds = %69, %64
  %75 = call i32 @spin_unlock(i32* @iucv_queue_lock)
  br label %76

76:                                               ; preds = %74, %52, %21
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iucv_sever_pathid(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.iucv_irq_list* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.iucv_irq_data*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
