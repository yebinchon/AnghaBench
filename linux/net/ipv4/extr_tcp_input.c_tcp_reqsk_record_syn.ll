; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_reqsk_record_syn.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_reqsk_record_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i64* }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.request_sock*, %struct.sk_buff*)* @tcp_reqsk_record_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reqsk_record_syn(%struct.sock* %0, %struct.request_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.TYPE_2__* @tcp_sk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i64 @skb_network_header_len(%struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i64 @tcp_hdrlen(%struct.sk_buff* %17)
  %19 = add nsw i64 %16, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i64* @kmalloc(i64 %21, i32 %22)
  store i64* %23, i64** %8, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %14
  %27 = load i64, i64* %7, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %27, i64* %29, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @skb_network_header(%struct.sk_buff* %32)
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i64* %31, i32 %33, i64 %34)
  %36 = load i64*, i64** %8, align 8
  %37 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %38 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %37, i32 0, i32 0
  store i64* %36, i64** %38, align 8
  br label %39

39:                                               ; preds = %26, %14
  br label %40

40:                                               ; preds = %39, %3
  ret void
}

declare dso_local %struct.TYPE_2__* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
