; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_renege_events.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_renege_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32, i32, i32, %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*, %struct.sctp_chunk*, i32)* @sctp_renege_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_renege_events(%struct.sctp_ulpq* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %10, i32 0, i32 3
  %12 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  store %struct.sctp_association* %12, %struct.sctp_association** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntohs(i32 %17)
  %19 = sub i64 %18, 4
  store i64 %19, i64* %9, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i64 @skb_queue_empty(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %3
  %28 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %29 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %29, i32 0, i32 2
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @sctp_ulpq_renege_list(%struct.sctp_ulpq* %28, i32* %30, i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %38 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @sctp_ulpq_renege_list(%struct.sctp_ulpq* %37, i32* %39, i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %36, %27
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %50 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %51 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @sctp_ulpq_renege_list(%struct.sctp_ulpq* %49, i32* %51, i64 %52)
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %48, %44
  br label %57

57:                                               ; preds = %56, %3
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @sctp_ulpevent_idata(%struct.sctp_ulpq* %62, %struct.sctp_chunk* %63, i32 %64)
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @sctp_intl_start_pd(%struct.sctp_ulpq* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %61, %57
  %72 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %73 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @sk_mem_reclaim(%struct.TYPE_6__* %75)
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i64 @sctp_ulpq_renege_list(%struct.sctp_ulpq*, i32*, i64) #1

declare dso_local i64 @sctp_ulpevent_idata(%struct.sctp_ulpq*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_intl_start_pd(%struct.sctp_ulpq*, i32) #1

declare dso_local i32 @sk_mem_reclaim(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
