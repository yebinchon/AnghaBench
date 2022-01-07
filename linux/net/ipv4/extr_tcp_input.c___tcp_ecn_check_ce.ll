; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c___tcp_ecn_check_ce.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c___tcp_ecn_check_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@INET_ECN_MASK = common dso_local global i32 0, align 4
@TCP_ECN_SEEN = common dso_local global i32 0, align 4
@CA_EVENT_ECN_IS_CE = common dso_local global i32 0, align 4
@TCP_ECN_DEMAND_CWR = common dso_local global i32 0, align 4
@CA_EVENT_ECN_NO_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @__tcp_ecn_check_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tcp_ecn_check_ce(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INET_ECN_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %54 [
    i32 128, label %14
    i32 129, label %25
  ]

14:                                               ; preds = %2
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TCP_ECN_SEEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @tcp_enter_quickack_mode(%struct.sock* %22, i32 2)
  br label %24

24:                                               ; preds = %21, %14
  br label %68

25:                                               ; preds = %2
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @tcp_ca_needs_ecn(%struct.sock* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* @CA_EVENT_ECN_IS_CE, align 4
  %32 = call i32 @tcp_ca_event(%struct.sock* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TCP_ECN_DEMAND_CWR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 @tcp_enter_quickack_mode(%struct.sock* %41, i32 2)
  %43 = load i32, i32* @TCP_ECN_DEMAND_CWR, align 4
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* @TCP_ECN_SEEN, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %68

54:                                               ; preds = %2
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = call i32 @tcp_ca_needs_ecn(%struct.sock* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load i32, i32* @CA_EVENT_ECN_NO_CE, align 4
  %61 = call i32 @tcp_ca_event(%struct.sock* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @TCP_ECN_SEEN, align 4
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %48, %24
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_enter_quickack_mode(%struct.sock*, i32) #1

declare dso_local i32 @tcp_ca_needs_ecn(%struct.sock*) #1

declare dso_local i32 @tcp_ca_event(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
