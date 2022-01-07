; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_issue_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_issue_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.rxkad_challenge = type { i8*, i32, i64, i32, i64, i32, i32, i64, i64, i8*, i8*, i64, i8*, i8*, i8* }
%struct.rxrpc_wire_header = type { i8*, i32, i64, i32, i64, i32, i32, i64, i64, i8*, i8*, i64, i8*, i8*, i8* }
%struct.msghdr = type { i64, i64, i32*, i32, i32* }
%struct.kvec = type { i32, %struct.rxrpc_wire_header* }

@.str = private unnamed_addr constant [8 x i8] c"{%d,%x}\00", align 1
@RXRPC_PACKET_TYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Tx CHALLENGE %%%u\00", align 1
@rxrpc_tx_point_rxkad_challenge = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*)* @rxkad_issue_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_issue_challenge(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca %struct.rxkad_challenge, align 8
  %5 = alloca %struct.rxrpc_wire_header, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca [2 x %struct.kvec], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %12 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %15 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @key_serial(i32 %17)
  %19 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18)
  %20 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %21 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @key_validate(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %2, align 4
  br label %151

29:                                               ; preds = %1
  %30 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %31 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %30, i32 0, i32 0
  %32 = call i32 @get_random_bytes(i32* %31, i32 4)
  %33 = call i8* @htonl(i32 2)
  %34 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 14
  store i8* %33, i8** %34, align 8
  %35 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @htonl(i32 %37)
  %39 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 13
  store i8* %38, i8** %39, align 8
  %40 = call i8* @htonl(i32 0)
  %41 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 12
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %4, i32 0, i32 11
  store i64 0, i64* %42, align 8
  %43 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %44 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 4
  store i32* %48, i32** %49, align 8
  %50 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %51 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %62 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @htonl(i32 %64)
  %66 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 10
  store i8* %65, i8** %66, align 8
  %67 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %68 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @htonl(i32 %70)
  %72 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 9
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 7
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @RXRPC_PACKET_TYPE_CHALLENGE, align 4
  %76 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 6
  store i32 %75, i32* %76, align 4
  %77 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %78 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 5
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %83 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 3
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %88 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @htons(i32 %89)
  %91 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %93 = getelementptr inbounds %struct.kvec, %struct.kvec* %92, i32 0, i32 1
  store %struct.rxrpc_wire_header* %5, %struct.rxrpc_wire_header** %93, align 8
  %94 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %95 = getelementptr inbounds %struct.kvec, %struct.kvec* %94, i32 0, i32 0
  store i32 112, i32* %95, align 16
  %96 = bitcast %struct.rxkad_challenge* %4 to %struct.rxrpc_wire_header*
  %97 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %98 = getelementptr inbounds %struct.kvec, %struct.kvec* %97, i32 0, i32 1
  store %struct.rxrpc_wire_header* %96, %struct.rxrpc_wire_header** %98, align 8
  %99 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %100 = getelementptr inbounds %struct.kvec, %struct.kvec* %99, i32 0, i32 0
  store i32 112, i32* %100, align 16
  %101 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %102 = getelementptr inbounds %struct.kvec, %struct.kvec* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 16
  %104 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %105 = getelementptr inbounds %struct.kvec, %struct.kvec* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 16
  %107 = add nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %8, align 8
  %109 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %110 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %109, i32 0, i32 3
  %111 = call i32 @atomic_inc_return(i32* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i8* @htonl(i32 %112)
  %114 = getelementptr inbounds %struct.rxrpc_wire_header, %struct.rxrpc_wire_header* %5, i32 0, i32 0
  store i8* %113, i8** %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @_proto(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %118 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @kernel_sendmsg(i32 %122, %struct.msghdr* %6, %struct.kvec* %123, i32 2, i64 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %29
  %129 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %130 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @rxrpc_tx_point_rxkad_challenge, align 4
  %135 = call i32 @trace_rxrpc_tx_fail(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %151

138:                                              ; preds = %29
  %139 = call i32 (...) @ktime_get_seconds()
  %140 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %141 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 4
  %145 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %146 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @rxrpc_tx_point_rxkad_challenge, align 4
  %149 = call i32 @trace_rxrpc_tx_packet(i32 %147, %struct.rxrpc_wire_header* %5, i32 %148)
  %150 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %138, %128, %27
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @key_validate(i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @_proto(i8*, i32) #1

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64) #1

declare dso_local i32 @trace_rxrpc_tx_fail(i32, i32, i32, i32) #1

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @trace_rxrpc_tx_packet(i32, %struct.rxrpc_wire_header*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
