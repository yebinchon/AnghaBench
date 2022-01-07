; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpc_pipe.c_rpc_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"RPC server: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"service: %s (%d) version %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"address: %s\0A\00", align 1
@RPC_DISPLAY_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"protocol: %s\0A\00", align 1
@RPC_DISPLAY_PROTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"port: %s\0A\00", align 1
@RPC_DISPLAY_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rpc_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_show_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_clnt* %8, %struct.rpc_clnt** %5, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %12 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_4__* @rcu_dereference(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %20 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %25 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %33 = load i32, i32* @RPC_DISPLAY_ADDR, align 4
  %34 = call i32 @rpc_peeraddr2str(%struct.rpc_clnt* %32, i32 %33)
  %35 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %38 = load i32, i32* @RPC_DISPLAY_PROTO, align 4
  %39 = call i32 @rpc_peeraddr2str(%struct.rpc_clnt* %37, i32 %38)
  %40 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %43 = load i32, i32* @RPC_DISPLAY_PORT, align 4
  %44 = call i32 @rpc_peeraddr2str(%struct.rpc_clnt* %42, i32 %43)
  %45 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = call i32 (...) @rcu_read_unlock()
  ret i32 0
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_4__* @rcu_dereference(i32) #1

declare dso_local i32 @rpc_peeraddr2str(%struct.rpc_clnt*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
