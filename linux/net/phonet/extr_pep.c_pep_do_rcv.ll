; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_do_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pep_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i32 }
%struct.pnpipehdr = type { i64, i32 }
%struct.sockaddr_pn = type { i32 }

@PN_PIPE_INVALID_HANDLE = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i32 0, align 4
@PN_PIPE_ERR_PEP_IN_USE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@PN_PIPE_NO_ERROR = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pep_do_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.pnpipehdr*, align 8
  %9 = alloca %struct.sockaddr_pn, align 4
  %10 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.pep_sock* @pep_sk(%struct.sock* %11)
  store %struct.pep_sock* %12, %struct.pep_sock** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i32 16)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %18)
  store %struct.pnpipehdr* %19, %struct.pnpipehdr** %8, align 8
  %20 = load %struct.pnpipehdr*, %struct.pnpipehdr** %8, align 8
  %21 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @PN_PIPE_INVALID_HANDLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %111

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff* %28, %struct.sockaddr_pn* %9)
  %30 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %31 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call %struct.sock* @pep_find_pipe(i32* %31, %struct.sockaddr_pn* %9, i64 %32)
  store %struct.sock* %33, %struct.sock** %7, align 8
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = icmp ne %struct.sock* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @sk_receive_skb(%struct.sock* %37, %struct.sk_buff* %38, i32 1)
  store i32 %39, i32* %3, align 4
  br label %115

40:                                               ; preds = %27
  %41 = load %struct.pnpipehdr*, %struct.pnpipehdr** %8, align 8
  %42 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %92 [
    i32 133, label %44
    i32 130, label %79
    i32 132, label %85
    i32 128, label %91
    i32 129, label %91
    i32 131, label %91
  ]

44:                                               ; preds = %40
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TCP_LISTEN, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 @sk_acceptq_is_full(%struct.sock* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %44
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* @PN_PIPE_ERR_PEP_IN_USE, align 4
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call i32 @pep_reject_conn(%struct.sock* %55, %struct.sk_buff* %56, i32 %57, i32 %58)
  br label %110

60:                                               ; preds = %50
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @skb_queue_head(i32* %62, %struct.sk_buff* %63)
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = call i32 @sk_acceptq_added(%struct.sock* %65)
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = load i32, i32* @SOCK_DEAD, align 4
  %69 = call i32 @sock_flag(%struct.sock* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %60
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 1
  %74 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %73, align 8
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call i32 %74(%struct.sock* %75)
  br label %77

77:                                               ; preds = %71, %60
  %78 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %78, i32* %3, align 4
  br label %115

79:                                               ; preds = %40
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load i32, i32* @PN_PIPE_NO_ERROR, align 4
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call i32 @pep_reply(%struct.sock* %80, %struct.sk_buff* %81, i32 %82, i32* null, i32 0, i32 %83)
  br label %110

85:                                               ; preds = %40
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i64, i64* @PN_PIPE_INVALID_HANDLE, align 8
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = call i32 @pep_ctrlreq_error(%struct.sock* %86, %struct.sk_buff* %87, i64 %88, i32 %89)
  br label %110

91:                                               ; preds = %40, %40, %40
  br label %110

92:                                               ; preds = %40
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 1, %95
  %97 = load i32, i32* @TCPF_CLOSE, align 4
  %98 = load i32, i32* @TCPF_LISTEN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %96, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @pipe_handler_do_rcv(%struct.sock* %106, %struct.sk_buff* %107)
  store i32 %108, i32* %3, align 4
  br label %115

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %91, %85, %79, %54
  br label %111

111:                                              ; preds = %110, %26, %16
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @kfree_skb(%struct.sk_buff* %112)
  %114 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %105, %77, %36
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local %struct.sock* @pep_find_pipe(i32*, %struct.sockaddr_pn*, i64) #1

declare dso_local i32 @sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @pep_reject_conn(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sk_acceptq_added(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pep_reply(%struct.sock*, %struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @pep_ctrlreq_error(%struct.sock*, %struct.sk_buff*, i64, i32) #1

declare dso_local i32 @pipe_handler_do_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
