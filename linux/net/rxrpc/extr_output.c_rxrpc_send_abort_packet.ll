; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_output.c_rxrpc_send_abort_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_output.c_rxrpc_send_abort_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.rxrpc_connection = type { %struct.TYPE_13__, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.rxrpc_abort_buffer = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { i8*, i32, i64, i32, i64, i32, i32, i64, i8*, i8*, i8* }
%struct.msghdr = type { i64, i64, i32*, i32, i32* }
%struct.kvec = type { i32, %struct.rxrpc_abort_buffer* }

@RXRPC_CALL_TX_LAST = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@RXRPC_PACKET_TYPE_ABORT = common dso_local global i32 0, align 4
@rxrpc_tx_point_call_abort = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_send_abort_packet(%struct.rxrpc_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca %struct.rxrpc_abort_buffer, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca [1 x %struct.kvec], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store %struct.rxrpc_connection* null, %struct.rxrpc_connection** %4, align 8
  %10 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %11 = call i64 @rxrpc_is_client_call(%struct.rxrpc_call* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @RXRPC_CALL_TX_LAST, align 4
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 9
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %157

20:                                               ; preds = %13, %1
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 7
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %30 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.rxrpc_connection* @rxrpc_get_connection_maybe(i64 %31)
  store %struct.rxrpc_connection* %32, %struct.rxrpc_connection** %4, align 8
  br label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %35 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %34, i32 0, i32 7
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %38 = icmp ne %struct.rxrpc_connection* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ECONNRESET, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %157

42:                                               ; preds = %33
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %44 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %43, i32 0, i32 6
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 4
  store i32* %47, i32** %48, align 8
  %49 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %50 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %49, i32 0, i32 6
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %60 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @htonl(i32 %62)
  %64 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %67 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @htonl(i32 %68)
  %70 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 9
  store i8* %69, i8** %71, align 8
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %73 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @htonl(i32 %74)
  %76 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 7
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @RXRPC_PACKET_TYPE_ABORT, align 4
  %81 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %84 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %91 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %98 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @htons(i32 %99)
  %101 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %104 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @htonl(i32 %105)
  %107 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 1
  store i8* %106, i8** %107, align 8
  %108 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %7, i64 0, i64 0
  %109 = getelementptr inbounds %struct.kvec, %struct.kvec* %108, i32 0, i32 1
  store %struct.rxrpc_abort_buffer* %5, %struct.rxrpc_abort_buffer** %109, align 8
  %110 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %7, i64 0, i64 0
  %111 = getelementptr inbounds %struct.kvec, %struct.kvec* %110, i32 0, i32 0
  store i32 88, i32* %111, align 16
  %112 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %113 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %112, i32 0, i32 1
  %114 = call i32 @atomic_inc_return(i32* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i8* @htonl(i32 %115)
  %117 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %120 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %7, i64 0, i64 0
  %126 = call i32 @kernel_sendmsg(i32 %124, %struct.msghdr* %6, %struct.kvec* %125, i32 1, i32 88)
  store i32 %126, i32* %9, align 4
  %127 = call i32 (...) @ktime_get_seconds()
  %128 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %129 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i32 %127, i32* %132, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %42
  %136 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %137 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @rxrpc_tx_point_call_abort, align 4
  %142 = call i32 @trace_rxrpc_tx_fail(i32 %138, i32 %139, i32 %140, i32 %141)
  br label %150

143:                                              ; preds = %42
  %144 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %145 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.rxrpc_abort_buffer, %struct.rxrpc_abort_buffer* %5, i32 0, i32 0
  %148 = load i32, i32* @rxrpc_tx_point_call_abort, align 4
  %149 = call i32 @trace_rxrpc_tx_packet(i32 %146, %struct.TYPE_14__* %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %135
  %151 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @rxrpc_tx_backoff(%struct.rxrpc_call* %151, i32 %152)
  %154 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %155 = call i32 @rxrpc_put_connection(%struct.rxrpc_connection* %154)
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %150, %39, %19
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i64 @rxrpc_is_client_call(%struct.rxrpc_call*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.rxrpc_connection* @rxrpc_get_connection_maybe(i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @trace_rxrpc_tx_fail(i32, i32, i32, i32) #1

declare dso_local i32 @trace_rxrpc_tx_packet(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @rxrpc_tx_backoff(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @rxrpc_put_connection(%struct.rxrpc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
