; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rpcbind_args = type { i32, i16, i32, i32 }
%struct.rpc_message = type { i32*, %struct.rpcbind_args* }
%struct.sunrpc_net = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"RPC:       %sregistering (%u, %u, %d, %u) with local rpcbind\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@rpcb_procedures2 = common dso_local global i32* null, align 8
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@RPCBPROC_SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_register(%struct.net* %0, i32 %1, i32 %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca %struct.rpcbind_args, align 4
  %12 = alloca %struct.rpc_message, align 8
  %13 = alloca %struct.sunrpc_net*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i16 %4, i16* %10, align 2
  %15 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %11, i32 0, i32 0
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %11, i32 0, i32 1
  %18 = load i16, i16* %10, align 2
  store i16 %18, i16* %17, align 4
  %19 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %11, i32 0, i32 2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %11, i32 0, i32 3
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 1
  store %struct.rpcbind_args* %11, %struct.rpcbind_args** %24, align 8
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = load i32, i32* @sunrpc_net_id, align 4
  %27 = call %struct.sunrpc_net* @net_generic(%struct.net* %25, i32 %26)
  store %struct.sunrpc_net* %27, %struct.sunrpc_net** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load i16, i16* %10, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i16, i16* %10, align 2
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33, i32 %34, i32 %35, i16 zeroext %36)
  %38 = load i32*, i32** @rpcb_procedures2, align 8
  %39 = load i64, i64* @RPCBPROC_UNSET, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  %42 = load i16, i16* %10, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %5
  %46 = load i32*, i32** @rpcb_procedures2, align 8
  %47 = load i64, i64* @RPCBPROC_SET, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  store i32* %48, i32** %49, align 8
  store i32 1, i32* %14, align 4
  br label %50

50:                                               ; preds = %45, %5
  %51 = load %struct.sunrpc_net*, %struct.sunrpc_net** %13, align 8
  %52 = load %struct.sunrpc_net*, %struct.sunrpc_net** %13, align 8
  %53 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @rpcb_register_call(%struct.sunrpc_net* %51, i32 %54, %struct.rpc_message* %12, i32 %55)
  ret i32 %56
}

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @rpcb_register_call(%struct.sunrpc_net*, i32, %struct.rpc_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
