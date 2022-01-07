; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.o2net_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@o2net_hand = common dso_local global %struct.TYPE_6__* null, align 8
@o2net_keep_req = common dso_local global %struct.TYPE_6__* null, align 8
@o2net_keep_resp = common dso_local global %struct.TYPE_6__* null, align 8
@O2NET_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@O2NET_MSG_KEEP_REQ_MAGIC = common dso_local global i32 0, align 4
@O2NET_MSG_KEEP_RESP_MAGIC = common dso_local global i32 0, align 4
@o2net_nodes = common dso_local global i32 0, align 4
@o2net_start_connect = common dso_local global i32 0, align 4
@o2net_connect_expired = common dso_local global i32 0, align 4
@o2net_still_up = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.o2net_node*, align 8
  %4 = call i32 (...) @o2quo_init()
  %5 = call i32 (...) @o2net_debugfs_init()
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** @o2net_hand, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** @o2net_keep_req, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_req, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14, %0
  br label %80

21:                                               ; preds = %17
  %22 = load i32, i32* @O2NET_PROTOCOL_VERSION, align 4
  %23 = call i8* @cpu_to_be64(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = call i8* @cpu_to_be64(i32 1)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @O2NET_MSG_KEEP_REQ_MAGIC, align 4
  %30 = call i8* @cpu_to_be16(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_req, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @O2NET_MSG_KEEP_RESP_MAGIC, align 4
  %34 = call i8* @cpu_to_be16(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  store i64 0, i64* %2, align 8
  br label %37

37:                                               ; preds = %76, %21
  %38 = load i64, i64* %2, align 8
  %39 = load i32, i32* @o2net_nodes, align 4
  %40 = call i64 @ARRAY_SIZE(i32 %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %37
  %43 = load i64, i64* %2, align 8
  %44 = call %struct.o2net_node* @o2net_nn_from_num(i64 %43)
  store %struct.o2net_node* %44, %struct.o2net_node** %3, align 8
  %45 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %46 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %45, i32 0, i32 8
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %49 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %48, i32 0, i32 7
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %52 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %51, i32 0, i32 6
  %53 = load i32, i32* @o2net_start_connect, align 4
  %54 = call i32 @INIT_DELAYED_WORK(i32* %52, i32 %53)
  %55 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %56 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %55, i32 0, i32 5
  %57 = load i32, i32* @o2net_connect_expired, align 4
  %58 = call i32 @INIT_DELAYED_WORK(i32* %56, i32 %57)
  %59 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %60 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %59, i32 0, i32 4
  %61 = load i32, i32* @o2net_still_up, align 4
  %62 = call i32 @INIT_DELAYED_WORK(i32* %60, i32 %61)
  %63 = load i32, i32* @ENOTCONN, align 4
  %64 = sub nsw i32 0, %63
  %65 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %66 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %68 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %67, i32 0, i32 2
  %69 = call i32 @init_waitqueue_head(i32* %68)
  %70 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %71 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %70, i32 0, i32 1
  %72 = call i32 @idr_init(i32* %71)
  %73 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %74 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %73, i32 0, i32 0
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  br label %76

76:                                               ; preds = %42
  %77 = load i64, i64* %2, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %2, align 8
  br label %37

79:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %91

80:                                               ; preds = %20
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %82 = call i32 @kfree(%struct.TYPE_6__* %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_req, align 8
  %84 = call i32 @kfree(%struct.TYPE_6__* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %86 = call i32 @kfree(%struct.TYPE_6__* %85)
  %87 = call i32 (...) @o2net_debugfs_exit()
  %88 = call i32 (...) @o2quo_exit()
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %1, align 4
  br label %91

91:                                               ; preds = %80, %79
  %92 = load i32, i32* %1, align 4
  ret i32 %92
}

declare dso_local i32 @o2quo_init(...) #1

declare dso_local i32 @o2net_debugfs_init(...) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @o2net_debugfs_exit(...) #1

declare dso_local i32 @o2quo_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
