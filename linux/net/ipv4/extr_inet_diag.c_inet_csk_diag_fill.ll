; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_csk_diag_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_csk_diag_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_diag_req_v2 = type { i32 }
%struct.user_namespace = type { i32 }
%struct.nlmsghdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.inet_diag_req_v2*, %struct.user_namespace*, i32, i32, i32, %struct.nlmsghdr*, i32)* @inet_csk_diag_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_csk_diag_fill(%struct.sock* %0, %struct.sk_buff* %1, %struct.inet_diag_req_v2* %2, %struct.user_namespace* %3, i32 %4, i32 %5, i32 %6, %struct.nlmsghdr* %7, i32 %8) #0 {
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.inet_diag_req_v2*, align 8
  %13 = alloca %struct.user_namespace*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.inet_diag_req_v2* %2, %struct.inet_diag_req_v2** %12, align 8
  store %struct.user_namespace* %3, %struct.user_namespace** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.nlmsghdr* %7, %struct.nlmsghdr** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load %struct.sock*, %struct.sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call i32 @inet_csk(%struct.sock* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = load %struct.inet_diag_req_v2*, %struct.inet_diag_req_v2** %12, align 8
  %24 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @inet_sk_diag_fill(%struct.sock* %19, i32 %21, %struct.sk_buff* %22, %struct.inet_diag_req_v2* %23, %struct.user_namespace* %24, i32 %25, i32 %26, i32 %27, %struct.nlmsghdr* %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @inet_sk_diag_fill(%struct.sock*, i32, %struct.sk_buff*, %struct.inet_diag_req_v2*, %struct.user_namespace*, i32, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
