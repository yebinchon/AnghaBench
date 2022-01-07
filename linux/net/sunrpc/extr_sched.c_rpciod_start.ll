; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpciod_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpciod_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"RPC:       creating workqueue rpciod\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rpciod\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@rpciod_workqueue = common dso_local global %struct.workqueue_struct* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"xprtiod\00", align 1
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@xprtiod_workqueue = common dso_local global %struct.workqueue_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rpciod_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpciod_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.workqueue_struct*, align 8
  %3 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %5 = load i32, i32* @WQ_UNBOUND, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.workqueue_struct* @alloc_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 0)
  store %struct.workqueue_struct* %7, %struct.workqueue_struct** %2, align 8
  %8 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  %9 = icmp ne %struct.workqueue_struct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %28

11:                                               ; preds = %0
  %12 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  store %struct.workqueue_struct* %12, %struct.workqueue_struct** @rpciod_workqueue, align 8
  %13 = load i32, i32* @WQ_UNBOUND, align 4
  %14 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WQ_HIGHPRI, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.workqueue_struct* @alloc_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 0)
  store %struct.workqueue_struct* %18, %struct.workqueue_struct** %2, align 8
  %19 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  %20 = icmp ne %struct.workqueue_struct* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %24

22:                                               ; preds = %11
  %23 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  store %struct.workqueue_struct* %23, %struct.workqueue_struct** @xprtiod_workqueue, align 8
  store i32 1, i32* %1, align 4
  br label %29

24:                                               ; preds = %21
  %25 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rpciod_workqueue, align 8
  store %struct.workqueue_struct* %25, %struct.workqueue_struct** %2, align 8
  store %struct.workqueue_struct* null, %struct.workqueue_struct** @rpciod_workqueue, align 8
  %26 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  %27 = call i32 @destroy_workqueue(%struct.workqueue_struct* %26)
  br label %28

28:                                               ; preds = %24, %10
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
