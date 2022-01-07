; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_stop_listening.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_stop_listening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.o2nm_node = type { i32 }

@o2net_listen_sock = common dso_local global %struct.socket* null, align 8
@o2net_wq = common dso_local global i32* null, align 8
@o2net_nodes = common dso_local global i32 0, align 4
@ML_KTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"waiting for o2net thread to exit....\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @o2net_stop_listening(%struct.o2nm_node* %0) #0 {
  %2 = alloca %struct.o2nm_node*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.o2nm_node*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %2, align 8
  %6 = load %struct.socket*, %struct.socket** @o2net_listen_sock, align 8
  store %struct.socket* %6, %struct.socket** %3, align 8
  %7 = load i32*, i32** @o2net_wq, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.socket*, %struct.socket** @o2net_listen_sock, align 8
  %12 = icmp eq %struct.socket* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @write_lock_bh(i32* %18)
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.socket*, %struct.socket** %3, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32* %24, i32** %28, align 8
  %29 = load %struct.socket*, %struct.socket** %3, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.socket*, %struct.socket** %3, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @write_unlock_bh(i32* %36)
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %54, %1
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @o2net_nodes, align 4
  %41 = call i64 @ARRAY_SIZE(i32 %40)
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = call %struct.o2nm_node* @o2nm_get_node_by_num(i64 %44)
  store %struct.o2nm_node* %45, %struct.o2nm_node** %5, align 8
  %46 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %47 = icmp ne %struct.o2nm_node* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %50 = call i32 @o2net_disconnect_node(%struct.o2nm_node* %49)
  %51 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %52 = call i32 @o2nm_node_put(%struct.o2nm_node* %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %38

57:                                               ; preds = %38
  %58 = load i32, i32* @ML_KTHREAD, align 4
  %59 = call i32 @mlog(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %60 = load i32*, i32** @o2net_wq, align 8
  %61 = call i32 @destroy_workqueue(i32* %60)
  store i32* null, i32** @o2net_wq, align 8
  %62 = load %struct.socket*, %struct.socket** @o2net_listen_sock, align 8
  %63 = call i32 @sock_release(%struct.socket* %62)
  store %struct.socket* null, %struct.socket** @o2net_listen_sock, align 8
  %64 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %65 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @o2quo_conn_err(i32 %66)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i64) #1

declare dso_local i32 @o2net_disconnect_node(%struct.o2nm_node*) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @o2quo_conn_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
