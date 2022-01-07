; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.sock*, i32)* }
%struct.dccp_sock = type { i32 }
%struct.sk_buff = type { i64 }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@DCCP_LISTEN = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ABORT with %u bytes unread\0A\00", align 1
@DCCP_RESET_CODE_ABORTED = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %9)
  store %struct.dccp_sock* %10, %struct.dccp_sock** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @lock_sock(%struct.sock* %11)
  %13 = load i32, i32* @SHUTDOWN_MASK, align 4
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DCCP_LISTEN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load i32, i32* @DCCP_CLOSED, align 4
  %24 = call i32 @dccp_set_state(%struct.sock* %22, i32 %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @inet_csk_listen_stop(%struct.sock* %25)
  br label %102

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %30 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %29, i32 0, i32 0
  %31 = call i32 @sk_stop_timer(%struct.sock* %28, i32* %30)
  br label %32

32:                                               ; preds = %37, %27
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 4
  %35 = call %struct.sk_buff* @__skb_dequeue(i32* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @__kfree_skb(%struct.sk_buff* %43)
  br label %32

45:                                               ; preds = %32
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DCCP_CLOSED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %102

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = load i32, i32* @DCCP_RESET_CODE_ABORTED, align 4
  %60 = call i32 @dccp_send_reset(%struct.sock* %58, i32 %59)
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = load i32, i32* @DCCP_CLOSED, align 4
  %63 = call i32 @dccp_set_state(%struct.sock* %61, i32 %62)
  br label %95

64:                                               ; preds = %52
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = load i32, i32* @SOCK_LINGER, align 4
  %67 = call i64 @sock_flag(%struct.sock* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %78, align 8
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = call i32 %79(%struct.sock* %80, i32 0)
  br label %94

82:                                               ; preds = %69, %64
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DCCP_CLOSED, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.sock*, %struct.sock** %3, align 8
  %90 = call i32 @dccp_flush_write_queue(%struct.sock* %89, i64* %4)
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = call i32 @dccp_terminate_connection(%struct.sock* %91)
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94, %55
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 2
  %98 = call i32 @__skb_queue_purge(i32* %97)
  %99 = load %struct.sock*, %struct.sock** %3, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @sk_stream_wait_close(%struct.sock* %99, i64 %100)
  br label %102

102:                                              ; preds = %95, %51, %21
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %8, align 4
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = call i32 @sock_hold(%struct.sock* %106)
  %108 = load %struct.sock*, %struct.sock** %3, align 8
  %109 = call i32 @sock_orphan(%struct.sock* %108)
  %110 = load %struct.sock*, %struct.sock** %3, align 8
  %111 = call i32 @release_sock(%struct.sock* %110)
  %112 = call i32 (...) @local_bh_disable()
  %113 = load %struct.sock*, %struct.sock** %3, align 8
  %114 = call i32 @bh_lock_sock(%struct.sock* %113)
  %115 = load %struct.sock*, %struct.sock** %3, align 8
  %116 = call i32 @sock_owned_by_user(%struct.sock* %115)
  %117 = call i32 @WARN_ON(i32 %116)
  %118 = load %struct.sock*, %struct.sock** %3, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @percpu_counter_inc(i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @DCCP_CLOSED, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %102
  %128 = load %struct.sock*, %struct.sock** %3, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DCCP_CLOSED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %144

134:                                              ; preds = %127, %102
  %135 = load %struct.sock*, %struct.sock** %3, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @DCCP_CLOSED, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.sock*, %struct.sock** %3, align 8
  %142 = call i32 @inet_csk_destroy_sock(%struct.sock* %141)
  br label %143

143:                                              ; preds = %140, %134
  br label %144

144:                                              ; preds = %143, %133
  %145 = load %struct.sock*, %struct.sock** %3, align 8
  %146 = call i32 @bh_unlock_sock(%struct.sock* %145)
  %147 = call i32 (...) @local_bh_enable()
  %148 = load %struct.sock*, %struct.sock** %3, align 8
  %149 = call i32 @sock_put(%struct.sock* %148)
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local i32 @sk_stop_timer(%struct.sock*, i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @DCCP_WARN(i8*, i64) #1

declare dso_local i32 @dccp_send_reset(%struct.sock*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dccp_flush_write_queue(%struct.sock*, i64*) #1

declare dso_local i32 @dccp_terminate_connection(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @sk_stream_wait_close(%struct.sock*, i64) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @percpu_counter_inc(i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
