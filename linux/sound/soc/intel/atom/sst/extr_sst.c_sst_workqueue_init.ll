; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_workqueue_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_workqueue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32, i32, i32, i32, i32, i32 }

@sst_process_pending_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sst_post_msg_wq\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sst_drv*)* @sst_workqueue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_workqueue_init(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  %4 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %5 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %4, i32 0, i32 6
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %8 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %7, i32 0, i32 5
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %11 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %10, i32 0, i32 4
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %14 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %17 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %16, i32 0, i32 2
  %18 = load i32, i32* @sst_process_pending_msg, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %21 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %20, i32 0, i32 1
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %25 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %27 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
