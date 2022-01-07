; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_pdapi.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_pdapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_pdapi_event = type { i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_PARTIAL_DELIVERY_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_pdapi(%struct.sctp_association* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.sctp_ulpevent*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_ulpevent*, align 8
  %15 = alloca %struct.sctp_pdapi_event*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @MSG_NOTIFICATION, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 48, i32 %17, i32 %18)
  store %struct.sctp_ulpevent* %19, %struct.sctp_ulpevent** %14, align 8
  %20 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %21 = icmp ne %struct.sctp_ulpevent* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %53

23:                                               ; preds = %6
  %24 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %25 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %16, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %27 = call %struct.sctp_pdapi_event* @skb_put(%struct.sk_buff* %26, i32 48)
  store %struct.sctp_pdapi_event* %27, %struct.sctp_pdapi_event** %15, align 8
  %28 = load i32, i32* @SCTP_PARTIAL_DELIVERY_EVENT, align 4
  %29 = load %struct.sctp_pdapi_event*, %struct.sctp_pdapi_event** %15, align 8
  %30 = getelementptr inbounds %struct.sctp_pdapi_event, %struct.sctp_pdapi_event* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.sctp_pdapi_event*, %struct.sctp_pdapi_event** %15, align 8
  %33 = getelementptr inbounds %struct.sctp_pdapi_event, %struct.sctp_pdapi_event* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.sctp_pdapi_event*, %struct.sctp_pdapi_event** %15, align 8
  %36 = getelementptr inbounds %struct.sctp_pdapi_event, %struct.sctp_pdapi_event* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.sctp_pdapi_event*, %struct.sctp_pdapi_event** %15, align 8
  %39 = getelementptr inbounds %struct.sctp_pdapi_event, %struct.sctp_pdapi_event* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.sctp_pdapi_event*, %struct.sctp_pdapi_event** %15, align 8
  %41 = getelementptr inbounds %struct.sctp_pdapi_event, %struct.sctp_pdapi_event* %40, i32 0, i32 0
  store i32 48, i32* %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.sctp_pdapi_event*, %struct.sctp_pdapi_event** %15, align 8
  %44 = getelementptr inbounds %struct.sctp_pdapi_event, %struct.sctp_pdapi_event* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %46 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %47 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %45, %struct.sctp_association* %46)
  %48 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %49 = call i32 @sctp_assoc2id(%struct.sctp_association* %48)
  %50 = load %struct.sctp_pdapi_event*, %struct.sctp_pdapi_event** %15, align 8
  %51 = getelementptr inbounds %struct.sctp_pdapi_event, %struct.sctp_pdapi_event* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  store %struct.sctp_ulpevent* %52, %struct.sctp_ulpevent** %7, align 8
  br label %54

53:                                               ; preds = %22
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %7, align 8
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  ret %struct.sctp_ulpevent* %55
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_new(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_pdapi_event* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
