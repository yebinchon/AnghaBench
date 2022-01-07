; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_event_data_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_event_data_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.inet_connection_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@tcp_jiffies32 = common dso_local global i8* null, align 8
@TCP_MAX_QUICKACKS = common dso_local global i32 0, align 4
@TCP_ATO_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_event_data_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_event_data_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @inet_csk_schedule_ack(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @tcp_measure_rcv_mss(%struct.sock* %15, %struct.sk_buff* %16)
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %19 = call i32 @tcp_rcv_rtt_measure(%struct.tcp_sock* %18)
  %20 = load i8*, i8** @tcp_jiffies32, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = load i32, i32* @TCP_MAX_QUICKACKS, align 4
  %29 = call i32 @tcp_incr_quickack(%struct.sock* %27, i32 %28)
  %30 = load i32, i32* @TCP_ATO_MIN, align 4
  %31 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %32 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %109

34:                                               ; preds = %2
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %37 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %35 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TCP_ATO_MIN, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp sle i32 %44, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  %49 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %50 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 1
  %54 = load i32, i32* @TCP_ATO_MIN, align 4
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %53, %55
  %57 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %58 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %108

60:                                               ; preds = %34
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %63 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %60
  %68 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %69 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, 1
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %76 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %79 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %83 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %67
  %87 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %88 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %91 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %93

93:                                               ; preds = %86, %67
  br label %107

94:                                               ; preds = %60
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %97 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = load i32, i32* @TCP_MAX_QUICKACKS, align 4
  %103 = call i32 @tcp_incr_quickack(%struct.sock* %101, i32 %102)
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = call i32 @sk_mem_reclaim(%struct.sock* %104)
  br label %106

106:                                              ; preds = %100, %94
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107, %48
  br label %109

109:                                              ; preds = %108, %26
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %112 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i8* %110, i8** %113, align 8
  %114 = load %struct.sock*, %struct.sock** %3, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = call i32 @tcp_ecn_check_ce(%struct.sock* %114, %struct.sk_buff* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %119, 128
  br i1 %120, label %121, label %125

121:                                              ; preds = %109
  %122 = load %struct.sock*, %struct.sock** %3, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = call i32 @tcp_grow_window(%struct.sock* %122, %struct.sk_buff* %123)
  br label %125

125:                                              ; preds = %121, %109
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local i32 @tcp_measure_rcv_mss(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_rcv_rtt_measure(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_incr_quickack(%struct.sock*, i32) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @tcp_ecn_check_ce(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_grow_window(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
