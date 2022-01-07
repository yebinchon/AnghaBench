; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)*, i64, i32*, i32, i32, i8* }
%struct.inet_connection_sock = type { i32, i64 }
%struct.inet_sock = type { i64, i64 }
%struct.dccp_sock = type { i32* }

@DCCP_CLOSED = common dso_local global i32 0, align 4
@DCCP_LISTEN = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_ABORTED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i8* null, align 8
@DCCP_REQUESTING = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  %7 = alloca %struct.dccp_sock*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.inet_sock* @inet_sk(%struct.sock* %11)
  store %struct.inet_sock* %12, %struct.inet_sock** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %13)
  store %struct.dccp_sock* %14, %struct.dccp_sock** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @DCCP_CLOSED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load i32, i32* @DCCP_CLOSED, align 4
  %24 = call i32 @dccp_set_state(%struct.sock* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DCCP_LISTEN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = call i32 @inet_csk_listen_stop(%struct.sock* %30)
  br label %53

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @dccp_need_reset(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = load i32, i32* @DCCP_RESET_CODE_ABORTED, align 4
  %39 = call i32 @dccp_send_reset(%struct.sock* %37, i32 %38)
  %40 = load i8*, i8** @ECONNRESET, align 8
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  br label %52

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @DCCP_REQUESTING, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** @ECONNRESET, align 8
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 @dccp_clear_xmit_timers(%struct.sock* %54)
  %56 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %57 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 @ccid_hc_rx_delete(i32* %58, %struct.sock* %59)
  %61 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %62 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 6
  %65 = call i32 @__skb_queue_purge(i32* %64)
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 5
  %68 = call i32 @__skb_queue_purge(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %53
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @__kfree_skb(i32* %76)
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %73, %53
  %81 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %82 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = call i32 @inet_reset_saddr(%struct.sock* %90)
  br label %92

92:                                               ; preds = %89, %80
  %93 = load %struct.sock*, %struct.sock** %3, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = load i32, i32* @SOCK_DONE, align 4
  %97 = call i32 @sock_reset_flag(%struct.sock* %95, i32 %96)
  %98 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %99 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = call i32 @inet_csk_delack_init(%struct.sock* %100)
  %102 = load %struct.sock*, %struct.sock** %3, align 8
  %103 = call i32 @__sk_dst_reset(%struct.sock* %102)
  %104 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %105 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %92
  %109 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %110 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %108, %92
  %115 = phi i1 [ false, %92 ], [ %113, %108 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @WARN_ON(i32 %116)
  %118 = load %struct.sock*, %struct.sock** %3, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 2
  %120 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %119, align 8
  %121 = load %struct.sock*, %struct.sock** %3, align 8
  %122 = call i32 %120(%struct.sock* %121)
  ret i32 0
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local i64 @dccp_need_reset(i32) #1

declare dso_local i32 @dccp_send_reset(%struct.sock*, i32) #1

declare dso_local i32 @dccp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @ccid_hc_rx_delete(i32*, %struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @__kfree_skb(i32*) #1

declare dso_local i32 @inet_reset_saddr(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_delack_init(%struct.sock*) #1

declare dso_local i32 @__sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
