; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_output.c_rxrpc_fill_out_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_output.c_rxrpc_fill_out_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.rxrpc_call = type { i64, i64, i32, i64, i64*, i32, i32 }
%struct.rxrpc_ack_buffer = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__, i64* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i8*, i8*, i8*, i8*, i8* }

@RXRPC_ACK_PING = common dso_local global i64 0, align 8
@RXRPC_REQUEST_ACK = common dso_local global i32 0, align 4
@RXRPC_RXTX_BUFF_MASK = common dso_local global i64 0, align 8
@RXRPC_ACK_TYPE_ACK = common dso_local global i32 0, align 4
@RXRPC_ACK_TYPE_NACK = common dso_local global i32 0, align 4
@rxrpc_rx_jumbo_max = common dso_local global i32 0, align 4
@rxrpc_rx_mtu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rxrpc_connection*, %struct.rxrpc_call*, %struct.rxrpc_ack_buffer*, i64*, i64*, i64)* @rxrpc_fill_out_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rxrpc_fill_out_ack(%struct.rxrpc_connection* %0, %struct.rxrpc_call* %1, %struct.rxrpc_ack_buffer* %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.rxrpc_connection*, align 8
  %8 = alloca %struct.rxrpc_call*, align 8
  %9 = alloca %struct.rxrpc_ack_buffer*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %7, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %8, align 8
  store %struct.rxrpc_ack_buffer* %2, %struct.rxrpc_ack_buffer** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %22 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %21, i32 0, i32 3
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %20, align 8
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %28 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @READ_ONCE(i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %32 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %31, i32 0, i32 5
  %33 = call i64 @smp_load_acquire(i32* %32)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64*, i64** %10, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64*, i64** %11, align 8
  store i64 %36, i64* %37, align 8
  %38 = call i8* @htons(i32 8)
  %39 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %40 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 6
  store i8* %38, i8** %41, align 8
  %42 = call i8* @htons(i32 0)
  %43 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %44 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  store i8* %42, i8** %45, align 8
  %46 = load i64, i64* %14, align 8
  %47 = add i64 %46, 1
  %48 = call i8* @htonl(i64 %47)
  %49 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %50 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store i8* %48, i8** %51, align 8
  %52 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %53 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @htonl(i64 %54)
  %56 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %57 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i8* %55, i8** %58, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i8* @htonl(i64 %59)
  %61 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %62 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %66 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %14, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %72 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @RXRPC_ACK_PING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %6
  %78 = load i32, i32* @RXRPC_REQUEST_ACK, align 4
  %79 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %80 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %77, %6
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i64 @after(i64 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %124

89:                                               ; preds = %84
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %92

92:                                               ; preds = %118, %89
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* @RXRPC_RXTX_BUFF_MASK, align 8
  %95 = and i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %17, align 4
  %97 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %98 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %97, i32 0, i32 4
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = load i32, i32* @RXRPC_ACK_TYPE_ACK, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64*, i64** %20, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %20, align 8
  store i64 %107, i64* %108, align 8
  br label %115

110:                                              ; preds = %92
  %111 = load i32, i32* @RXRPC_ACK_TYPE_NACK, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64*, i64** %20, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %20, align 8
  store i64 %112, i64* %113, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i64, i64* %16, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %16, align 8
  br label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i64 @before_eq(i64 %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %92, label %123

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %84
  %125 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %126 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %18, align 8
  %131 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %7, align 8
  %132 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %18, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %18, align 8
  %139 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %140 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 3
  br i1 %142, label %143, label %144

143:                                              ; preds = %124
  br label %146

144:                                              ; preds = %124
  %145 = load i32, i32* @rxrpc_rx_jumbo_max, align 4
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi i32 [ 1, %143 ], [ %145, %144 ]
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %19, align 8
  %149 = load i64, i64* @rxrpc_rx_mtu, align 8
  %150 = call i8* @htonl(i64 %149)
  %151 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %152 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  store i8* %150, i8** %153, align 8
  %154 = load i64, i64* %18, align 8
  %155 = call i8* @htonl(i64 %154)
  %156 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %157 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  store i8* %155, i8** %158, align 8
  %159 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %160 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @htonl(i64 %161)
  %163 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %164 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  store i8* %162, i8** %165, align 8
  %166 = load i64, i64* %19, align 8
  %167 = call i8* @htonl(i64 %166)
  %168 = load %struct.rxrpc_ack_buffer*, %struct.rxrpc_ack_buffer** %9, align 8
  %169 = getelementptr inbounds %struct.rxrpc_ack_buffer, %struct.rxrpc_ack_buffer* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  %171 = load i64*, i64** %20, align 8
  %172 = getelementptr inbounds i64, i64* %171, i32 1
  store i64* %172, i64** %20, align 8
  store i64 0, i64* %171, align 8
  %173 = load i64*, i64** %20, align 8
  %174 = getelementptr inbounds i64, i64* %173, i32 1
  store i64* %174, i64** %20, align 8
  store i64 0, i64* %173, align 8
  %175 = load i64*, i64** %20, align 8
  %176 = getelementptr inbounds i64, i64* %175, i32 1
  store i64* %176, i64** %20, align 8
  store i64 0, i64* %175, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %14, align 8
  %179 = sub i64 %177, %178
  %180 = add i64 %179, 3
  ret i64 %180
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @smp_load_acquire(i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i64 @before_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
