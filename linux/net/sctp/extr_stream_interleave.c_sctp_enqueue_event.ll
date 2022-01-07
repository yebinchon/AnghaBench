; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_enqueue_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_enqueue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sock* }
%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sctp_sock = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff = type { i32 }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_ulpq*, %struct.sk_buff_head*)* @sctp_enqueue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_enqueue_event(%struct.sctp_ulpq* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sctp_sock*, align 8
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  %10 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %6, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %16)
  store %struct.sctp_sock* %17, %struct.sctp_sock** %7, align 8
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %19 = call %struct.sk_buff* @__skb_peek(%struct.sk_buff_head* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %20)
  store %struct.sctp_ulpevent* %21, %struct.sctp_ulpevent** %8, align 8
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RCV_SHUTDOWN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SEND_SHUTDOWN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %37 = call i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %28
  br label %87

40:                                               ; preds = %35, %2
  %41 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %42 = call i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = call i32 @sk_mark_napi_id(%struct.sock* %45, %struct.sk_buff* %46)
  %48 = load %struct.sock*, %struct.sock** %6, align 8
  %49 = call i32 @sk_incoming_cpu_update(%struct.sock* %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %52 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %53 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sctp_ulpevent_is_enabled(%struct.sctp_ulpevent* %51, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %87

60:                                               ; preds = %50
  %61 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %62 = icmp ne %struct.sk_buff_head* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %65 = load %struct.sock*, %struct.sock** %6, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 2
  %67 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %64, i32* %66)
  br label %73

68:                                               ; preds = %60
  %69 = load %struct.sock*, %struct.sock** %6, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 2
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call i32 @__skb_queue_tail(i32* %70, %struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %75 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.sctp_sock*, %struct.sctp_sock** %7, align 8
  %80 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 1
  %83 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %82, align 8
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = call i32 %83(%struct.sock* %84)
  br label %86

86:                                               ; preds = %78, %73
  store i32 1, i32* %3, align 4
  br label %97

87:                                               ; preds = %59, %39
  %88 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %89 = icmp ne %struct.sk_buff_head* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %92 = call i32 @sctp_queue_purge_ulpevents(%struct.sk_buff_head* %91)
  br label %96

93:                                               ; preds = %87
  %94 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %95 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %94)
  br label %96

96:                                               ; preds = %93, %90
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @__skb_peek(%struct.sk_buff_head*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_is_notification(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sk_mark_napi_id(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_incoming_cpu_update(%struct.sock*) #1

declare dso_local i32 @sctp_ulpevent_is_enabled(%struct.sctp_ulpevent*, i32) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sctp_queue_purge_ulpevents(%struct.sk_buff_head*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
