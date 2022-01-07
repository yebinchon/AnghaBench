; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_cleanup_rbuf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_cleanup_rbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.tcp_sock = type { i64, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"cleanup rbuf bug: copied %X seq %X rcvnxt %X\0A\00", align 1
@ICSK_ACK_PUSHED2 = common dso_local global i32 0, align 4
@ICSK_ACK_PUSHED = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_cleanup_rbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cleanup_rbuf(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 2
  %15 = call %struct.sk_buff* @skb_peek(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @before(i32 %21, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %18, %2
  %30 = phi i1 [ false, %2 ], [ %28, %18 ]
  %31 = zext i1 %30 to i32
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @WARN(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i64 %41)
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call i64 @inet_csk_ack_scheduled(%struct.sock* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %29
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %47)
  store %struct.inet_connection_sock* %48, %struct.inet_connection_sock** %8, align 8
  %49 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %50 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %95, label %54

54:                                               ; preds = %46
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %63 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %61, %65
  br i1 %66, label %95, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %4, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %72 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ICSK_ACK_PUSHED2, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %70
  %79 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %80 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ICSK_ACK_PUSHED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %78
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = call i32 @inet_csk_in_pingpong_mode(%struct.sock* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86, %70
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 1
  %93 = call i32 @atomic_read(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90, %54, %46
  store i32 1, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %90, %86, %78, %67
  br label %97

97:                                               ; preds = %96, %29
  %98 = load i32, i32* %4, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %132, label %103

103:                                              ; preds = %100
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RCV_SHUTDOWN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %103
  %111 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %112 = call i32 @tcp_receive_window(%struct.tcp_sock* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 2, %113
  %115 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp sle i32 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %110
  %120 = load %struct.sock*, %struct.sock** %3, align 8
  %121 = call i32 @__tcp_select_window(%struct.sock* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 2, %126
  %128 = icmp sge i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %124, %119
  br label %131

131:                                              ; preds = %130, %110
  br label %132

132:                                              ; preds = %131, %103, %100, %97
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.sock*, %struct.sock** %3, align 8
  %137 = call i32 @tcp_send_ack(%struct.sock* %136)
  br label %138

138:                                              ; preds = %135, %132
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @inet_csk_ack_scheduled(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_csk_in_pingpong_mode(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @tcp_receive_window(%struct.tcp_sock*) #1

declare dso_local i32 @__tcp_select_window(%struct.sock*) #1

declare dso_local i32 @tcp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
