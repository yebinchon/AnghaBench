; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_stream_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_stream_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_stream_change_event = type { i32, i8*, i8*, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_STREAM_CHANGE_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_stream_change_event(%struct.sctp_association* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_ulpevent*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_stream_change_event*, align 8
  %13 = alloca %struct.sctp_ulpevent*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @MSG_NOTIFICATION, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 40, i32 %15, i32 %16)
  store %struct.sctp_ulpevent* %17, %struct.sctp_ulpevent** %13, align 8
  %18 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %19 = icmp ne %struct.sctp_ulpevent* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %6, align 8
  br label %48

21:                                               ; preds = %5
  %22 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %23 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %14, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %25 = call %struct.sctp_stream_change_event* @skb_put(%struct.sk_buff* %24, i32 40)
  store %struct.sctp_stream_change_event* %25, %struct.sctp_stream_change_event** %12, align 8
  %26 = load i32, i32* @SCTP_STREAM_CHANGE_EVENT, align 4
  %27 = load %struct.sctp_stream_change_event*, %struct.sctp_stream_change_event** %12, align 8
  %28 = getelementptr inbounds %struct.sctp_stream_change_event, %struct.sctp_stream_change_event* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.sctp_stream_change_event*, %struct.sctp_stream_change_event** %12, align 8
  %31 = getelementptr inbounds %struct.sctp_stream_change_event, %struct.sctp_stream_change_event* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sctp_stream_change_event*, %struct.sctp_stream_change_event** %12, align 8
  %33 = getelementptr inbounds %struct.sctp_stream_change_event, %struct.sctp_stream_change_event* %32, i32 0, i32 0
  store i32 40, i32* %33, align 8
  %34 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %35 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %36 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %34, %struct.sctp_association* %35)
  %37 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %38 = call i32 @sctp_assoc2id(%struct.sctp_association* %37)
  %39 = load %struct.sctp_stream_change_event*, %struct.sctp_stream_change_event** %12, align 8
  %40 = getelementptr inbounds %struct.sctp_stream_change_event, %struct.sctp_stream_change_event* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.sctp_stream_change_event*, %struct.sctp_stream_change_event** %12, align 8
  %43 = getelementptr inbounds %struct.sctp_stream_change_event, %struct.sctp_stream_change_event* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.sctp_stream_change_event*, %struct.sctp_stream_change_event** %12, align 8
  %46 = getelementptr inbounds %struct.sctp_stream_change_event, %struct.sctp_stream_change_event* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  store %struct.sctp_ulpevent* %47, %struct.sctp_ulpevent** %6, align 8
  br label %48

48:                                               ; preds = %21, %20
  %49 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  ret %struct.sctp_ulpevent* %49
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_new(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_stream_change_event* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
