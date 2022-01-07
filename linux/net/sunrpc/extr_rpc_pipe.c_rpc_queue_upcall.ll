; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_queue_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_queue_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_pipe = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.rpc_pipe_msg = type { i64, i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@RPC_PIPE_WAIT_FOR_OPEN = common dso_local global i32 0, align 4
@rpciod_workqueue = common dso_local global i32 0, align 4
@RPC_UPCALL_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_queue_upcall(%struct.rpc_pipe* %0, %struct.rpc_pipe_msg* %1) #0 {
  %3 = alloca %struct.rpc_pipe*, align 8
  %4 = alloca %struct.rpc_pipe_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  store %struct.rpc_pipe* %0, %struct.rpc_pipe** %3, align 8
  store %struct.rpc_pipe_msg* %1, %struct.rpc_pipe_msg** %4, align 8
  %7 = load i32, i32* @EPIPE, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %17, i32 0, i32 1
  %19 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %19, i32 0, i32 4
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %65

31:                                               ; preds = %2
  %32 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %33 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RPC_PIPE_WAIT_FOR_OPEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %31
  %39 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %39, i32 0, i32 4
  %41 = call i64 @list_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @rpciod_workqueue, align 4
  %45 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %46 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %45, i32 0, i32 5
  %47 = load i32, i32* @RPC_UPCALL_TIMEOUT, align 4
  %48 = call i32 @queue_delayed_work(i32 %44, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %51 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %50, i32 0, i32 1
  %52 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %53 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %52, i32 0, i32 4
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %56 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %59 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %49, %31
  br label %65

65:                                               ; preds = %64, %16
  %66 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %67 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.dentry* @dget(i32 %68)
  store %struct.dentry* %69, %struct.dentry** %6, align 8
  %70 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %71 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = icmp ne %struct.dentry* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = call i32 @d_inode(%struct.dentry* %76)
  %78 = call %struct.TYPE_2__* @RPC_I(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @wake_up(i32* %79)
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = call i32 @dput(%struct.dentry* %81)
  br label %83

83:                                               ; preds = %75, %65
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.TYPE_2__* @RPC_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
