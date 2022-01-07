; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_nfc_llcp_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_nfc_llcp_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.socket = type { i32 }
%struct.nfc_llcp_sock = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i32, i64 }

@init_net = common dso_local global i32 0, align 4
@PF_NFC = common dso_local global i32 0, align 4
@llcp_sock_proto = common dso_local global i32 0, align 4
@LLCP_CLOSED = common dso_local global i32 0, align 4
@NFC_SOCKPROTO_LLCP = common dso_local global i32 0, align 4
@llcp_sock_destruct = common dso_local global i32 0, align 4
@LLCP_SAP_SDP = common dso_local global i32 0, align 4
@LLCP_MAX_RW = common dso_local global i64 0, align 8
@LLCP_MAX_MIUX = common dso_local global i64 0, align 8
@LLCP_SAP_MAX = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @nfc_llcp_sock_alloc(%struct.socket* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.nfc_llcp_sock*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @PF_NFC, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.sock* @sk_alloc(i32* @init_net, i32 %12, i32 %13, i32* @llcp_sock_proto, i32 %14)
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %83

19:                                               ; preds = %4
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call %struct.nfc_llcp_sock* @nfc_llcp_sock(%struct.sock* %20)
  store %struct.nfc_llcp_sock* %21, %struct.nfc_llcp_sock** %11, align 8
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = call i32 @sock_init_data(%struct.socket* %22, %struct.sock* %23)
  %25 = load i32, i32* @LLCP_CLOSED, align 4
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @NFC_SOCKPROTO_LLCP, align 4
  %29 = load %struct.sock*, %struct.sock** %10, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @llcp_sock_destruct, align 4
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %38 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %37, i32 0, i32 12
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @LLCP_SAP_SDP, align 4
  %40 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %41 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* @LLCP_MAX_RW, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %45 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %44, i32 0, i32 10
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @LLCP_MAX_MIUX, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @cpu_to_be16(i64 %47)
  %49 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %50 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %52 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %54 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %56 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %58 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %60 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @LLCP_SAP_MAX, align 4
  %62 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %63 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %65 = call i32 @nfc_llcp_socket_remote_param_init(%struct.nfc_llcp_sock* %64)
  %66 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %67 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %66, i32 0, i32 3
  %68 = call i32 @skb_queue_head_init(i32* %67)
  %69 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %70 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %69, i32 0, i32 2
  %71 = call i32 @skb_queue_head_init(i32* %70)
  %72 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %11, align 8
  %73 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %72, i32 0, i32 1
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.socket*, %struct.socket** %6, align 8
  %76 = icmp ne %struct.socket* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %19
  %78 = load i32, i32* @SS_UNCONNECTED, align 4
  %79 = load %struct.socket*, %struct.socket** %6, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %19
  %82 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %82, %struct.sock** %5, align 8
  br label %83

83:                                               ; preds = %81, %18
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %84
}

declare dso_local %struct.sock* @sk_alloc(i32*, i32, i32, i32*, i32) #1

declare dso_local %struct.nfc_llcp_sock* @nfc_llcp_sock(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @nfc_llcp_socket_remote_param_init(%struct.nfc_llcp_sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
