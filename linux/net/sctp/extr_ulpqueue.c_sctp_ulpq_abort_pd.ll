; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_abort_pd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_abort_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sctp_sock = type { i32 }

@SCTP_PARTIAL_DELIVERY_EVENT = common dso_local global i32 0, align 4
@SCTP_PARTIAL_DELIVERY_ABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpq_abort_pd(%struct.sctp_ulpq* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_ulpq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sctp_sock*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %5, align 8
  %8 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %7, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %20)
  store %struct.sctp_sock* %21, %struct.sctp_sock** %6, align 8
  %22 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SCTP_PARTIAL_DELIVERY_EVENT, align 4
  %28 = call i64 @sctp_ulpevent_type_enabled(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %13
  %31 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %32 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* @SCTP_PARTIAL_DELIVERY_ABORTED, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_pdapi(%struct.TYPE_4__* %33, i32 %34, i32 0, i32 0, i32 0, i32 %35)
  store %struct.sctp_ulpevent* %36, %struct.sctp_ulpevent** %5, align 8
  br label %37

37:                                               ; preds = %30, %13
  %38 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %39 = icmp ne %struct.sctp_ulpevent* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %44 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %43)
  %45 = call i32 @__skb_queue_tail(i32* %42, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %48 = call i64 @sctp_ulpq_clear_pd(%struct.sctp_ulpq* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %52 = icmp ne %struct.sctp_ulpevent* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50, %46
  %54 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %55 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %60 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %62, align 8
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = call i32 %63(%struct.sock* %64)
  br label %66

66:                                               ; preds = %12, %58, %53, %50
  ret void
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i64 @sctp_ulpevent_type_enabled(i32, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_pdapi(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i64 @sctp_ulpq_clear_pd(%struct.sctp_ulpq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
