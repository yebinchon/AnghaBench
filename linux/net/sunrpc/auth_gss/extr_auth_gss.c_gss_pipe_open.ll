; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_pipe_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_pipe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.sunrpc_net = type { i32, i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@pipe_version_lock = common dso_local global i32 0, align 4
@pipe_version_rpc_waitqueue = common dso_local global i32 0, align 4
@pipe_version_waitqueue = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @gss_pipe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_pipe_open(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sunrpc_net*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.net*, %struct.net** %11, align 8
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load i32, i32* @sunrpc_net_id, align 4
  %15 = call %struct.sunrpc_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.sunrpc_net* %15, %struct.sunrpc_net** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = call i32 @spin_lock(i32* @pipe_version_lock)
  %17 = load %struct.sunrpc_net*, %struct.sunrpc_net** %6, align 8
  %18 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sunrpc_net*, %struct.sunrpc_net** %6, align 8
  %24 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 @rpc_wake_up(i32* @pipe_version_rpc_waitqueue)
  %26 = call i32 @wake_up(i32* @pipe_version_waitqueue)
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.sunrpc_net*, %struct.sunrpc_net** %6, align 8
  %29 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %41

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.sunrpc_net*, %struct.sunrpc_net** %6, align 8
  %39 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %38, i32 0, i32 1
  %40 = call i32 @atomic_inc(i32* %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = call i32 @spin_unlock(i32* @pipe_version_lock)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rpc_wake_up(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
