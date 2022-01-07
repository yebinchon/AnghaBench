; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ops = type { i32 }
%struct.net = type { i32 }
%struct.socket = type { i32, %struct.proto_ops* }
%struct.sock = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.tipc_sock = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, %struct.tipc_msg, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tipc_msg = type { i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@stream_ops = common dso_local global %struct.proto_ops zeroinitializer, align 4
@packet_ops = common dso_local global %struct.proto_ops zeroinitializer, align 4
@msg_ops = common dso_local global %struct.proto_ops zeroinitializer, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@AF_TIPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tipc_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_PKT_DEFAULT = common dso_local global i32 0, align 4
@TIPC_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Socket create failed; port number exhausted\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIPC_LOW_IMPORTANCE = common dso_local global i32 0, align 4
@TIPC_NAMED_MSG = common dso_local global i32 0, align 4
@NAMED_H_SIZE = common dso_local global i32 0, align 4
@tipc_sk_timeout = common dso_local global i32 0, align 4
@tipc_sk_backlog_rcv = common dso_local global i32 0, align 4
@sysctl_tipc_rmem = common dso_local global i32* null, align 8
@tipc_data_ready = common dso_local global i32 0, align 4
@tipc_write_space = common dso_local global i32 0, align 4
@tipc_sock_destruct = common dso_local global i32 0, align 4
@CONN_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@RCVBUF_MIN = common dso_local global i32 0, align 4
@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @tipc_sk_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.proto_ops*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.tipc_sock*, align 8
  %13 = alloca %struct.tipc_msg*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EPROTONOSUPPORT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %149

22:                                               ; preds = %4
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %29 [
    i32 128, label %26
    i32 129, label %27
    i32 131, label %28
    i32 130, label %28
  ]

26:                                               ; preds = %22
  store %struct.proto_ops* @stream_ops, %struct.proto_ops** %10, align 8
  br label %32

27:                                               ; preds = %22
  store %struct.proto_ops* @packet_ops, %struct.proto_ops** %10, align 8
  br label %32

28:                                               ; preds = %22, %22
  store %struct.proto_ops* @msg_ops, %struct.proto_ops** %10, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EPROTOTYPE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %149

32:                                               ; preds = %28, %27, %26
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = load i32, i32* @AF_TIPC, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.sock* @sk_alloc(%struct.net* %33, i32 %34, i32 %35, i32* @tipc_proto, i32 %36)
  store %struct.sock* %37, %struct.sock** %11, align 8
  %38 = load %struct.sock*, %struct.sock** %11, align 8
  %39 = icmp eq %struct.sock* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %149

43:                                               ; preds = %32
  %44 = load %struct.sock*, %struct.sock** %11, align 8
  %45 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %44)
  store %struct.tipc_sock* %45, %struct.tipc_sock** %12, align 8
  %46 = load i32, i32* @MAX_PKT_DEFAULT, align 4
  %47 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %48 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %50 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %49, i32 0, i32 9
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %53 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %52, i32 0, i32 8
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %56 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %55, i32 0, i32 7
  store %struct.tipc_msg* %56, %struct.tipc_msg** %13, align 8
  %57 = load %struct.proto_ops*, %struct.proto_ops** %10, align 8
  %58 = load %struct.socket*, %struct.socket** %7, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  store %struct.proto_ops* %57, %struct.proto_ops** %59, align 8
  %60 = load %struct.socket*, %struct.socket** %7, align 8
  %61 = load %struct.sock*, %struct.sock** %11, align 8
  %62 = call i32 @sock_init_data(%struct.socket* %60, %struct.sock* %61)
  %63 = load %struct.sock*, %struct.sock** %11, align 8
  %64 = load i32, i32* @TIPC_OPEN, align 4
  %65 = call i32 @tipc_set_sk_state(%struct.sock* %63, i32 %64)
  %66 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %67 = call i64 @tipc_sk_insert(%struct.tipc_sock* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %43
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %149

73:                                               ; preds = %43
  %74 = call i32 (...) @smp_mb()
  %75 = load %struct.net*, %struct.net** %6, align 8
  %76 = call i32 @tipc_own_addr(%struct.net* %75)
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %78 = load i32, i32* @TIPC_LOW_IMPORTANCE, align 4
  %79 = load i32, i32* @TIPC_NAMED_MSG, align 4
  %80 = load i32, i32* @NAMED_H_SIZE, align 4
  %81 = call i32 @tipc_msg_init(i32 %76, %struct.tipc_msg* %77, i32 %78, i32 %79, i32 %80, i32 0)
  %82 = load %struct.tipc_msg*, %struct.tipc_msg** %13, align 8
  %83 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %84 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @msg_set_origport(%struct.tipc_msg* %82, i32 %85)
  %87 = load %struct.sock*, %struct.sock** %11, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 6
  %89 = load i32, i32* @tipc_sk_timeout, align 4
  %90 = call i32 @timer_setup(i32* %88, i32 %89, i32 0)
  %91 = load %struct.sock*, %struct.sock** %11, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @tipc_sk_backlog_rcv, align 4
  %94 = load %struct.sock*, %struct.sock** %11, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load i32*, i32** @sysctl_tipc_rmem, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sock*, %struct.sock** %11, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @tipc_data_ready, align 4
  %102 = load %struct.sock*, %struct.sock** %11, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @tipc_write_space, align 4
  %105 = load %struct.sock*, %struct.sock** %11, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @tipc_sock_destruct, align 4
  %108 = load %struct.sock*, %struct.sock** %11, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @CONN_TIMEOUT_DEFAULT, align 4
  %111 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %112 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %114 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  %115 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %116 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %115, i32 0, i32 4
  %117 = call i32 @atomic_set(i32* %116, i32 0)
  %118 = load i32, i32* @RCVBUF_MIN, align 4
  %119 = call i32 @tsk_adv_blocks(i32 %118)
  %120 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %121 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %123 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %126 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.sock*, %struct.sock** %11, align 8
  %128 = call i64 @tipc_sk_type_connectionless(%struct.sock* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %73
  %131 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %132 = call i32 @tsk_set_unreturnable(%struct.tipc_sock* %131, i32 1)
  %133 = load %struct.socket*, %struct.socket** %7, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 131
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %139 = call i32 @tsk_set_unreliable(%struct.tipc_sock* %138, i32 1)
  br label %140

140:                                              ; preds = %137, %130
  br label %141

141:                                              ; preds = %140, %73
  %142 = load %struct.tipc_sock*, %struct.tipc_sock** %12, align 8
  %143 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @__skb_queue_head_init(i32* %144)
  %146 = load %struct.sock*, %struct.sock** %11, align 8
  %147 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %148 = call i32 @trace_tipc_sk_create(%struct.sock* %146, i32* null, i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %141, %69, %40, %29, %19
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @tipc_set_sk_state(%struct.sock*, i32) #1

declare dso_local i64 @tipc_sk_insert(%struct.tipc_sock*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @tipc_msg_init(i32, %struct.tipc_msg*, i32, i32, i32, i32) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tsk_adv_blocks(i32) #1

declare dso_local i64 @tipc_sk_type_connectionless(%struct.sock*) #1

declare dso_local i32 @tsk_set_unreturnable(%struct.tipc_sock*, i32) #1

declare dso_local i32 @tsk_set_unreliable(%struct.tipc_sock*, i32) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @trace_tipc_sk_create(%struct.sock*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
