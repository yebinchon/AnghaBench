; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_cc.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32, i32 }
%struct.sk_buff = type { i64, i32* }
%struct.nfc_llcp_sock = type { i32, %struct.sock }
%struct.sock = type { i32 (%struct.sock*)*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Invalid CC\0A\00", align 1
@LLCP_DM_NOCONN = common dso_local global i32 0, align 4
@LLCP_HEADER_SIZE = common dso_local global i64 0, align 8
@LLCP_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_llcp_local*, %struct.sk_buff*)* @nfc_llcp_recv_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_llcp_recv_cc(%struct.nfc_llcp_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llcp_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfc_llcp_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @nfc_llcp_dsap(%struct.sk_buff* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @nfc_llcp_ssap(%struct.sk_buff* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.nfc_llcp_sock* @nfc_llcp_connecting_sock_get(%struct.nfc_llcp_local* %13, i32 %14)
  store %struct.nfc_llcp_sock* %15, %struct.nfc_llcp_sock** %5, align 8
  %16 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %17 = icmp eq %struct.nfc_llcp_sock* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @LLCP_DM_NOCONN, align 4
  %24 = call i32 @nfc_llcp_send_dm(%struct.nfc_llcp_local* %20, i32 %21, i32 %22, i32 %23)
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %27 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %26, i32 0, i32 1
  store %struct.sock* %27, %struct.sock** %6, align 8
  %28 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %29 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %28, i32 0, i32 1
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = call i32 @nfc_llcp_sock_unlink(i32* %29, %struct.sock* %30)
  %32 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %33 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %32, i32 0, i32 0
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = call i32 @nfc_llcp_sock_link(i32* %33, %struct.sock* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %38 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @LLCP_HEADER_SIZE, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LLCP_HEADER_SIZE, align 8
  %49 = sub i64 %47, %48
  %50 = call i32 @nfc_llcp_parse_connection_tlv(%struct.nfc_llcp_sock* %39, i32* %44, i64 %49)
  %51 = load i32, i32* @LLCP_CONNECTED, align 4
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %55, align 8
  %57 = load %struct.sock*, %struct.sock** %6, align 8
  %58 = call i32 %56(%struct.sock* %57)
  %59 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %60 = call i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock* %59)
  br label %61

61:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @nfc_llcp_dsap(%struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_ssap(%struct.sk_buff*) #1

declare dso_local %struct.nfc_llcp_sock* @nfc_llcp_connecting_sock_get(%struct.nfc_llcp_local*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nfc_llcp_send_dm(%struct.nfc_llcp_local*, i32, i32, i32) #1

declare dso_local i32 @nfc_llcp_sock_unlink(i32*, %struct.sock*) #1

declare dso_local i32 @nfc_llcp_sock_link(i32*, %struct.sock*) #1

declare dso_local i32 @nfc_llcp_parse_connection_tlv(%struct.nfc_llcp_sock*, i32*, i64) #1

declare dso_local i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
