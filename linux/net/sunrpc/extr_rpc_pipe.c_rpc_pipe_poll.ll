; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_pipe_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.poll_table_struct = type { i32 }
%struct.inode = type { i32 }
%struct.rpc_inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @rpc_pipe_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_pipe_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.rpc_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.rpc_inode* @RPC_I(%struct.inode* %10)
  store %struct.rpc_inode* %11, %struct.rpc_inode** %6, align 8
  %12 = load i32, i32* @EPOLLOUT, align 4
  %13 = load i32, i32* @EPOLLWRNORM, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load %struct.rpc_inode*, %struct.rpc_inode** %6, align 8
  %17 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %16, i32 0, i32 1
  %18 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, %struct.poll_table_struct* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @inode_lock(%struct.inode* %20)
  %22 = load %struct.rpc_inode*, %struct.rpc_inode** %6, align 8
  %23 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @EPOLLERR, align 4
  %28 = load i32, i32* @EPOLLHUP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load %struct.file*, %struct.file** %3, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.rpc_inode*, %struct.rpc_inode** %6, align 8
  %39 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @list_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* @EPOLLIN, align 4
  %46 = load i32, i32* @EPOLLRDNORM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %50, %26
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @inode_unlock(%struct.inode* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.rpc_inode* @RPC_I(%struct.inode*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
