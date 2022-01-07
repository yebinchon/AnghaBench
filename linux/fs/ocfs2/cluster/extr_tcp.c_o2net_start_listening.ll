; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_start_listening.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_start_listening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32, i32, i32 }

@o2net_wq = common dso_local global i32* null, align 8
@o2net_listen_sock = common dso_local global i32* null, align 8
@ML_KTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"starting o2net thread...\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"o2net\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to launch o2net thread\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_start_listening(%struct.o2nm_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2nm_node*, align 8
  %4 = alloca i32, align 4
  store %struct.o2nm_node* %0, %struct.o2nm_node** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** @o2net_wq, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load i32*, i32** @o2net_listen_sock, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* @ML_KTHREAD, align 4
  %14 = call i32 @mlog(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %16 = call i32* @alloc_ordered_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i32* %16, i32** @o2net_wq, align 8
  %17 = load i32*, i32** @o2net_wq, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @ML_ERROR, align 4
  %21 = call i32 @mlog(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %26 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %29 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @o2net_open_listening_sock(i32 %27, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32*, i32** @o2net_wq, align 8
  %36 = call i32 @destroy_workqueue(i32* %35)
  store i32* null, i32** @o2net_wq, align 8
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %39 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @o2quo_conn_up(i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @o2net_open_listening_sock(i32, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @o2quo_conn_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
