; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_handler_do_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_handler_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i8*, i32 (%struct.sock*)*, i32 (%struct.sock*)*, i32, i32 }
%struct.sk_buff = type { i32* }
%struct.pep_sock = type { i32, i32, i32 }
%struct.pnpipehdr = type { i32 }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@TCP_SYN_SENT = common dso_local global i8* null, align 8
@TCP_CLOSE_WAIT = common dso_local global i8* null, align 8
@PN_PIPE_DISABLE = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i8* null, align 8
@TCP_ESTABLISHED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pipe_handler_do_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_handler_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pep_sock*, align 8
  %7 = alloca %struct.pnpipehdr*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.pep_sock* @pep_sk(%struct.sock* %9)
  store %struct.pep_sock* %10, %struct.pep_sock** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %11)
  store %struct.pnpipehdr* %12, %struct.pnpipehdr** %7, align 8
  %13 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pnpipehdr*, %struct.pnpipehdr** %7, align 8
  %15 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %145 [
    i32 129, label %17
    i32 128, label %20
    i32 133, label %74
    i32 131, label %118
    i32 132, label %140
    i32 130, label %141
  ]

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @__skb_pull(%struct.sk_buff* %18, i32 1)
  br label %20

20:                                               ; preds = %2, %17
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @__skb_pull(%struct.sk_buff* %21, i32 3)
  %23 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %24 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pn_flow_safe(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @sock_queue_rcv_skb(%struct.sock* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %149

36:                                               ; preds = %28
  %37 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %37, i32* %8, align 4
  br label %145

38:                                               ; preds = %20
  %39 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %40 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 4
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %47, i32* %8, align 4
  br label %145

48:                                               ; preds = %38
  %49 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %50 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = call i32 @skb_set_owner_r(%struct.sk_buff* %55, %struct.sock* %56)
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 3
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @skb_queue_tail(i32* %59, %struct.sk_buff* %60)
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = load i32, i32* @SOCK_DEAD, align 4
  %64 = call i32 @sock_flag(%struct.sock* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %48
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 2
  %69 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %68, align 8
  %70 = load %struct.sock*, %struct.sock** %4, align 8
  %71 = call i32 %69(%struct.sock* %70)
  br label %72

72:                                               ; preds = %66, %48
  %73 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %149

74:                                               ; preds = %2
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** @TCP_SYN_SENT, align 8
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %145

81:                                               ; preds = %74
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = load i32, i32* @SOCK_DEAD, align 4
  %84 = call i32 @sock_flag(%struct.sock* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.sock*, %struct.sock** %4, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 1
  %89 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %88, align 8
  %90 = load %struct.sock*, %struct.sock** %4, align 8
  %91 = call i32 %89(%struct.sock* %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @pep_connresp_rcv(%struct.sock* %93, %struct.sk_buff* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** @TCP_CLOSE_WAIT, align 8
  %99 = load %struct.sock*, %struct.sock** %4, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %145

101:                                              ; preds = %92
  %102 = load %struct.pep_sock*, %struct.pep_sock** %6, align 8
  %103 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PN_PIPE_DISABLE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** @TCP_SYN_RECV, align 8
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %117

111:                                              ; preds = %101
  %112 = load i8*, i8** @TCP_ESTABLISHED, align 8
  %113 = load %struct.sock*, %struct.sock** %4, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load %struct.sock*, %struct.sock** %4, align 8
  %116 = call i32 @pipe_start_flow_control(%struct.sock* %115)
  br label %117

117:                                              ; preds = %111, %107
  br label %145

118:                                              ; preds = %2
  %119 = load %struct.sock*, %struct.sock** %4, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** @TCP_SYN_SENT, align 8
  %123 = icmp ne i8* %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %145

125:                                              ; preds = %118
  %126 = load %struct.sock*, %struct.sock** %4, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = call i32 @pep_enableresp_rcv(%struct.sock* %126, %struct.sk_buff* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i8*, i8** @TCP_CLOSE_WAIT, align 8
  %132 = load %struct.sock*, %struct.sock** %4, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %145

134:                                              ; preds = %125
  %135 = load i8*, i8** @TCP_ESTABLISHED, align 8
  %136 = load %struct.sock*, %struct.sock** %4, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load %struct.sock*, %struct.sock** %4, align 8
  %139 = call i32 @pipe_start_flow_control(%struct.sock* %138)
  br label %145

140:                                              ; preds = %2
  br label %145

141:                                              ; preds = %2
  %142 = load %struct.sock*, %struct.sock** %4, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = call i32 @pipe_rcv_status(%struct.sock* %142, %struct.sk_buff* %143)
  br label %145

145:                                              ; preds = %2, %141, %140, %134, %130, %124, %117, %97, %80, %43, %36
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i32 @kfree_skb(%struct.sk_buff* %146)
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %72, %34
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @pn_flow_safe(i32) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pep_connresp_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pipe_start_flow_control(%struct.sock*) #1

declare dso_local i32 @pep_enableresp_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pipe_rcv_status(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
