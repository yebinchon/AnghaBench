; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rxrpc_host_header = type { i32, i32, i32, i32 }
%struct.rxkad_response = type { i8*, i32, i32, i32, i32, i8*, i8* }
%struct.rxkad_key = type { i32, i64 }
%struct.rxrpc_wire_header = type { i8*, i32, i32, i32, i32, i8*, i8* }
%struct.msghdr = type { i64, i64, i32*, i32, i32* }
%struct.kvec = type { i32, %struct.rxrpc_wire_header* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXRPC_PACKET_TYPE_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Tx RESPONSE %%%u\00", align 1
@rxrpc_tx_point_rxkad_response = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, %struct.rxrpc_host_header*, %struct.rxkad_response*, %struct.rxkad_key*)* @rxkad_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_send_response(%struct.rxrpc_connection* %0, %struct.rxrpc_host_header* %1, %struct.rxkad_response* %2, %struct.rxkad_key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxrpc_connection*, align 8
  %7 = alloca %struct.rxrpc_host_header*, align 8
  %8 = alloca %struct.rxkad_response*, align 8
  %9 = alloca %struct.rxkad_key*, align 8
  %10 = alloca %struct.rxrpc_wire_header, align 8
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca [3 x %struct.kvec], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %6, align 8
  store %struct.rxrpc_host_header* %1, %struct.rxrpc_host_header** %7, align 8
  store %struct.rxkad_response* %2, %struct.rxkad_response** %8, align 8
  store %struct.rxkad_key* %3, %struct.rxkad_key** %9, align 8
  %16 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %18 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 4
  store i32* %22, i32** %23, align 8
  %24 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %25 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = call i32 @memset(%struct.rxrpc_wire_header* %10, i32 0, i32 40)
  %36 = load %struct.rxrpc_host_header*, %struct.rxrpc_host_header** %7, align 8
  %37 = getelementptr inbounds %struct.rxrpc_host_header, %struct.rxrpc_host_header* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htonl(i32 %38)
  %40 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %10, i32 0, i32 6
  store i8* %39, i8** %40, align 8
  %41 = load %struct.rxrpc_host_header*, %struct.rxrpc_host_header** %7, align 8
  %42 = getelementptr inbounds %struct.rxrpc_host_header, %struct.rxrpc_host_header* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @htonl(i32 %43)
  %45 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %10, i32 0, i32 5
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* @RXRPC_PACKET_TYPE_RESPONSE, align 4
  %47 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %10, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %49 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %10, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load %struct.rxrpc_host_header*, %struct.rxrpc_host_header** %7, align 8
  %53 = getelementptr inbounds %struct.rxrpc_host_header, %struct.rxrpc_host_header* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %10, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = load %struct.rxrpc_host_header*, %struct.rxrpc_host_header** %7, align 8
  %57 = getelementptr inbounds %struct.rxrpc_host_header, %struct.rxrpc_host_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @htons(i32 %58)
  %60 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %10, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 0
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 1
  store %struct.rxrpc_wire_header* %10, %struct.rxrpc_wire_header** %62, align 8
  %63 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 0
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %63, i32 0, i32 0
  store i32 40, i32* %64, align 16
  %65 = load %struct.rxkad_response*, %struct.rxkad_response** %8, align 8
  %66 = bitcast %struct.rxkad_response* %65 to %struct.rxrpc_wire_header*
  %67 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 1
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 1
  store %struct.rxrpc_wire_header* %66, %struct.rxrpc_wire_header** %68, align 8
  %69 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 1
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 0
  store i32 40, i32* %70, align 16
  %71 = load %struct.rxkad_key*, %struct.rxkad_key** %9, align 8
  %72 = getelementptr inbounds %struct.rxkad_key, %struct.rxkad_key* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.rxrpc_wire_header*
  %76 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 2
  %77 = getelementptr inbounds %struct.kvec, %struct.kvec* %76, i32 0, i32 1
  store %struct.rxrpc_wire_header* %75, %struct.rxrpc_wire_header** %77, align 8
  %78 = load %struct.rxkad_key*, %struct.rxkad_key** %9, align 8
  %79 = getelementptr inbounds %struct.rxkad_key, %struct.rxkad_key* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 2
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 16
  %83 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 0
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 16
  %86 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 1
  %87 = getelementptr inbounds %struct.kvec, %struct.kvec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 16
  %89 = add nsw i32 %85, %88
  %90 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 2
  %91 = getelementptr inbounds %struct.kvec, %struct.kvec* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 16
  %93 = add nsw i32 %89, %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %13, align 8
  %95 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %96 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %95, i32 0, i32 2
  %97 = call i32 @atomic_inc_return(i32* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i8* @htonl(i32 %98)
  %100 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %10, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @_proto(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %104 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %12, i64 0, i64 0
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @kernel_sendmsg(i32 %108, %struct.msghdr* %11, %struct.kvec* %109, i32 3, i64 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %4
  %115 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %116 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @rxrpc_tx_point_rxkad_response, align 4
  %121 = call i32 @trace_rxrpc_tx_fail(i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @EAGAIN, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %132

124:                                              ; preds = %4
  %125 = call i32 (...) @ktime_get_seconds()
  %126 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %6, align 8
  %127 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i32 %125, i32* %130, align 4
  %131 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %124, %114
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @memset(%struct.rxrpc_wire_header*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_proto(i8*, i32) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64) #1

declare dso_local i32 @trace_rxrpc_tx_fail(i32, i32, i32, i32) #1

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
