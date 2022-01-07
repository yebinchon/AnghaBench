; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sctp_ulpevent = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_ulpq_tail_data(%struct.sctp_ulpq* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpq*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca %struct.sctp_ulpevent*, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(i32 %13, %struct.sctp_chunk* %14, i32 %15)
  store %struct.sctp_ulpevent* %16, %struct.sctp_ulpevent** %9, align 8
  %17 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %18 = icmp ne %struct.sctp_ulpevent* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %77

22:                                               ; preds = %3
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  %30 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %31 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %33 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %39 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %41 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %42 = call %struct.sctp_ulpevent* @sctp_ulpq_reasm(%struct.sctp_ulpq* %40, %struct.sctp_ulpevent* %41)
  store %struct.sctp_ulpevent* %42, %struct.sctp_ulpevent** %9, align 8
  %43 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %44 = icmp ne %struct.sctp_ulpevent* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %22
  %46 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %8)
  %47 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %48 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %47)
  %49 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %8, i32 %48)
  %50 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %51 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MSG_EOR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %58 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %59 = call %struct.sctp_ulpevent* @sctp_ulpq_order(%struct.sctp_ulpq* %57, %struct.sctp_ulpevent* %58)
  store %struct.sctp_ulpevent* %59, %struct.sctp_ulpevent** %9, align 8
  br label %60

60:                                               ; preds = %56, %45
  br label %61

61:                                               ; preds = %60, %22
  %62 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %63 = icmp ne %struct.sctp_ulpevent* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %9, align 8
  %66 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MSG_EOR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  store i32 %72, i32* %10, align 4
  %73 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %74 = call i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq* %73, %struct.sk_buff_head* %8)
  br label %75

75:                                               ; preds = %64, %61
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(i32, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_reasm(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_order(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
