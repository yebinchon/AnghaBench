; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_set_nrns.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_set_nrns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_sock = type { i32, i32, i32 }
%struct.sk_buff = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_llcp_sock*, %struct.sk_buff*)* @nfc_llcp_set_nrns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_llcp_set_nrns(%struct.nfc_llcp_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llcp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_llcp_sock* %0, %struct.nfc_llcp_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %6 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 4
  %9 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %10 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %12, i32* %16, align 4
  %17 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %18 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = srem i32 %20, 16
  %22 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %23 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %25 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = srem i32 %27, 16
  %29 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %30 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
