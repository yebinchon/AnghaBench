; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_close_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_close_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.rpc_pipe = type { i64, i64, i32, %struct.TYPE_3__*, i32, i32*, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.inode*)*, i32 }
%struct.TYPE_4__ = type { %struct.rpc_pipe*, i32 }

@free_list = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @rpc_close_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_close_pipes(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.rpc_pipe*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.TYPE_4__* @RPC_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.rpc_pipe*, %struct.rpc_pipe** %7, align 8
  store %struct.rpc_pipe* %8, %struct.rpc_pipe** %3, align 8
  %9 = load i32, i32* @free_list, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call i32 @inode_lock(%struct.inode* %11)
  %13 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %13, i32 0, i32 4
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %1
  %26 = phi i1 [ true, %1 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %30, i32 0, i32 8
  %32 = call i32 @list_splice_init(i32* %31, i32* @free_list)
  %33 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %33, i32 0, i32 7
  %35 = call i32 @list_splice_init(i32* %34, i32* @free_list)
  %36 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %40, i32 0, i32 4
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call %struct.TYPE_4__* @RPC_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %47 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @EPIPE, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 @rpc_purge_list(i32* %45, i32* @free_list, i32 %50, i32 %52)
  %54 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %55 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %25
  %59 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %60 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %62, align 8
  %64 = icmp ne i32 (%struct.inode*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %67 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %69, align 8
  %71 = load %struct.inode*, %struct.inode** %2, align 8
  %72 = call i32 %70(%struct.inode* %71)
  br label %73

73:                                               ; preds = %65, %58, %25
  %74 = load %struct.rpc_pipe*, %struct.rpc_pipe** %3, align 8
  %75 = getelementptr inbounds %struct.rpc_pipe, %struct.rpc_pipe* %74, i32 0, i32 2
  %76 = call i32 @cancel_delayed_work_sync(i32* %75)
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = call i32 @rpc_inode_setowner(%struct.inode* %77, i32* null)
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = call %struct.TYPE_4__* @RPC_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store %struct.rpc_pipe* null, %struct.rpc_pipe** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = call i32 @inode_unlock(%struct.inode* %82)
  ret void
}

declare dso_local %struct.TYPE_4__* @RPC_I(%struct.inode*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpc_purge_list(i32*, i32*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rpc_inode_setowner(%struct.inode*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
