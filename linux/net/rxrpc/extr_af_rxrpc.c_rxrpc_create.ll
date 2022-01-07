; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32* }
%struct.rxrpc_net = type { i32 }
%struct.rxrpc_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sock = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%d\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@CONFIG_AF_RXRPC_IPV6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@rxrpc_rpc_ops = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@PF_RXRPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rxrpc_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_RCU_FREE = common dso_local global i32 0, align 4
@RXRPC_UNBOUND = common dso_local global i32 0, align 4
@rxrpc_write_space = common dso_local global i32 0, align 4
@rxrpc_sock_destructor = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" = 0 [%p]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @rxrpc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxrpc_net*, align 8
  %11 = alloca %struct.rxrpc_sock*, align 8
  %12 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.socket* %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PF_INET, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i32, i32* @CONFIG_AF_RXRPC_IPV6, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @PF_INET6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EPROTONOSUPPORT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %113

30:                                               ; preds = %23, %19, %4
  %31 = load %struct.socket*, %struct.socket** %7, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOCK_DGRAM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %113

39:                                               ; preds = %30
  %40 = load %struct.socket*, %struct.socket** %7, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 2
  store i32* @rxrpc_rpc_ops, i32** %41, align 8
  %42 = load i32, i32* @SS_UNCONNECTED, align 4
  %43 = load %struct.socket*, %struct.socket** %7, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = load i32, i32* @PF_RXRPC, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.sock* @sk_alloc(%struct.net* %45, i32 %46, i32 %47, i32* @rxrpc_proto, i32 %48)
  store %struct.sock* %49, %struct.sock** %12, align 8
  %50 = load %struct.sock*, %struct.sock** %12, align 8
  %51 = icmp ne %struct.sock* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %113

55:                                               ; preds = %39
  %56 = load %struct.socket*, %struct.socket** %7, align 8
  %57 = load %struct.sock*, %struct.sock** %12, align 8
  %58 = call i32 @sock_init_data(%struct.socket* %56, %struct.sock* %57)
  %59 = load %struct.sock*, %struct.sock** %12, align 8
  %60 = load i32, i32* @SOCK_RCU_FREE, align 4
  %61 = call i32 @sock_set_flag(%struct.sock* %59, i32 %60)
  %62 = load i32, i32* @RXRPC_UNBOUND, align 4
  %63 = load %struct.sock*, %struct.sock** %12, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @rxrpc_write_space, align 4
  %66 = load %struct.sock*, %struct.sock** %12, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sock*, %struct.sock** %12, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @rxrpc_sock_destructor, align 4
  %71 = load %struct.sock*, %struct.sock** %12, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sock*, %struct.sock** %12, align 8
  %74 = call %struct.rxrpc_sock* @rxrpc_sk(%struct.sock* %73)
  store %struct.rxrpc_sock* %74, %struct.rxrpc_sock** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %77 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @RB_ROOT, align 4
  %79 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %80 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %82 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %81, i32 0, i32 8
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %85 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %84, i32 0, i32 7
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %88 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %87, i32 0, i32 6
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %91 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %90, i32 0, i32 5
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %94 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %93, i32 0, i32 4
  %95 = call i32 @rwlock_init(i32* %94)
  %96 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %97 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %96, i32 0, i32 3
  %98 = call i32 @rwlock_init(i32* %97)
  %99 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %100 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %99, i32 0, i32 2
  %101 = call i32 @memset(i32* %100, i32 0, i32 4)
  %102 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %103 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %102, i32 0, i32 1
  %104 = call i32 @sock_net(i32* %103)
  %105 = call %struct.rxrpc_net* @rxrpc_net(i32 %104)
  store %struct.rxrpc_net* %105, %struct.rxrpc_net** %10, align 8
  %106 = load %struct.rxrpc_net*, %struct.rxrpc_net** %10, align 8
  %107 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %106, i32 0, i32 0
  %108 = load i64, i64* @jiffies, align 8
  %109 = add nsw i64 %108, 1
  %110 = call i32 @timer_reduce(i32* %107, i64 %109)
  %111 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %11, align 8
  %112 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.rxrpc_sock* %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %55, %52, %36, %27
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @_enter(i8*, %struct.socket*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.rxrpc_net* @rxrpc_net(i32) #1

declare dso_local i32 @sock_net(i32*) #1

declare dso_local i32 @timer_reduce(i32*, i64) #1

declare dso_local i32 @_leave(i8*, %struct.rxrpc_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
