; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_stream_reset_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_stream_reset_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_stream_reset_event = type { i32, i32, i32*, i32, i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_STREAM_RESET_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_reset_event(%struct.sctp_association* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_ulpevent*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_stream_reset_event*, align 8
  %13 = alloca %struct.sctp_ulpevent*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = add i64 24, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @MSG_NOTIFICATION, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 %22, i32 %23, i32 %24)
  store %struct.sctp_ulpevent* %25, %struct.sctp_ulpevent** %13, align 8
  %26 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %27 = icmp ne %struct.sctp_ulpevent* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %6, align 8
  br label %73

29:                                               ; preds = %5
  %30 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %31 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %14, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call %struct.sctp_stream_reset_event* @skb_put(%struct.sk_buff* %32, i32 %33)
  store %struct.sctp_stream_reset_event* %34, %struct.sctp_stream_reset_event** %12, align 8
  %35 = load i32, i32* @SCTP_STREAM_RESET_EVENT, align 4
  %36 = load %struct.sctp_stream_reset_event*, %struct.sctp_stream_reset_event** %12, align 8
  %37 = getelementptr inbounds %struct.sctp_stream_reset_event, %struct.sctp_stream_reset_event* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.sctp_stream_reset_event*, %struct.sctp_stream_reset_event** %12, align 8
  %40 = getelementptr inbounds %struct.sctp_stream_reset_event, %struct.sctp_stream_reset_event* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.sctp_stream_reset_event*, %struct.sctp_stream_reset_event** %12, align 8
  %43 = getelementptr inbounds %struct.sctp_stream_reset_event, %struct.sctp_stream_reset_event* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %46 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %44, %struct.sctp_association* %45)
  %47 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %48 = call i32 @sctp_assoc2id(%struct.sctp_association* %47)
  %49 = load %struct.sctp_stream_reset_event*, %struct.sctp_stream_reset_event** %12, align 8
  %50 = getelementptr inbounds %struct.sctp_stream_reset_event, %struct.sctp_stream_reset_event* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %68, %29
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = load %struct.sctp_stream_reset_event*, %struct.sctp_stream_reset_event** %12, align 8
  %63 = getelementptr inbounds %struct.sctp_stream_reset_event, %struct.sctp_stream_reset_event* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  store %struct.sctp_ulpevent* %72, %struct.sctp_ulpevent** %6, align 8
  br label %73

73:                                               ; preds = %71, %28
  %74 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  ret %struct.sctp_ulpevent* %74
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_new(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_stream_reset_event* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
