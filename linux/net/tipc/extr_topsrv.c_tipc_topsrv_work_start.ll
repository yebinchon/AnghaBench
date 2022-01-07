; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_work_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_topsrv.c_tipc_topsrv_work_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_topsrv = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"tipc_rcv\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"can't start tipc receive workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"tipc_send\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"can't start tipc send workqueue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_topsrv*)* @tipc_topsrv_work_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_topsrv_work_start(%struct.tipc_topsrv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_topsrv*, align 8
  store %struct.tipc_topsrv* %0, %struct.tipc_topsrv** %3, align 8
  %4 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %5 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %6 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %5, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %8 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = call i8* @alloc_ordered_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %17 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %18 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %20 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.tipc_topsrv*, %struct.tipc_topsrv** %3, align 8
  %26 = getelementptr inbounds %struct.tipc_topsrv, %struct.tipc_topsrv* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @destroy_workqueue(i8* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i8* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
