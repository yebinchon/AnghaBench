; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_stream_abort_pd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_stream_abort_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sctp_sock = type { i32 }

@SCTP_PARTIAL_DELIVERY_EVENT = common dso_local global i32 0, align 4
@SCTP_PARTIAL_DELIVERY_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*, i32, i32, i32, i32)* @sctp_intl_stream_abort_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_intl_stream_abort_pd(%struct.sctp_ulpq* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_ulpq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sctp_ulpevent*, align 8
  %13 = alloca %struct.sctp_sock*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %11, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %12, align 8
  %20 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SCTP_PARTIAL_DELIVERY_EVENT, align 4
  %26 = call i32 @sctp_ulpevent_type_enabled(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %62

29:                                               ; preds = %5
  %30 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %6, align 8
  %31 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* @SCTP_PARTIAL_DELIVERY_ABORTED, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_pdapi(%struct.TYPE_4__* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct.sctp_ulpevent* %38, %struct.sctp_ulpevent** %12, align 8
  %39 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %40 = icmp ne %struct.sctp_ulpevent* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %29
  %42 = load %struct.sock*, %struct.sock** %11, align 8
  %43 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %42)
  store %struct.sctp_sock* %43, %struct.sctp_sock** %13, align 8
  %44 = load %struct.sock*, %struct.sock** %11, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %12, align 8
  %47 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %46)
  %48 = call i32 @__skb_queue_tail(i32* %45, i32 %47)
  %49 = load %struct.sctp_sock*, %struct.sctp_sock** %13, align 8
  %50 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %41
  %54 = load %struct.sctp_sock*, %struct.sctp_sock** %13, align 8
  %55 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.sock*, %struct.sock** %11, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 0
  %58 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %57, align 8
  %59 = load %struct.sock*, %struct.sock** %11, align 8
  %60 = call i32 %58(%struct.sock* %59)
  br label %61

61:                                               ; preds = %53, %41
  br label %62

62:                                               ; preds = %28, %61, %29
  ret void
}

declare dso_local i32 @sctp_ulpevent_type_enabled(i32, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_pdapi(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @__skb_queue_tail(i32*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
