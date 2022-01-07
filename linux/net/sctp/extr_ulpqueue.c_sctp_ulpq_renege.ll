; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpq_renege(%struct.sctp_ulpq* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %11, i32 0, i32 0
  %13 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  store %struct.sctp_association* %13, %struct.sctp_association** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ntohs(i32 %18)
  %20 = sub i64 %19, 4
  store i64 %20, i64* %9, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i64 @skb_queue_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @sctp_ulpq_renege_order(%struct.sctp_ulpq* %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i64 @sctp_ulpq_renege_frags(%struct.sctp_ulpq* %36, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %50 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @sk_rmem_schedule(%struct.TYPE_7__* %48, i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %44
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sctp_ulpq_tail_data(%struct.sctp_ulpq* %60, %struct.sctp_chunk* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @sctp_ulpq_partial_delivery(%struct.sctp_ulpq* %67, i32 %68)
  br label %77

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %75 = call i32 @sctp_ulpq_reasm_drain(%struct.sctp_ulpq* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %66
  br label %78

78:                                               ; preds = %77, %55, %44
  %79 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %80 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @sk_mem_reclaim(%struct.TYPE_7__* %82)
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i64 @sctp_ulpq_renege_order(%struct.sctp_ulpq*, i64) #1

declare dso_local i64 @sctp_ulpq_renege_frags(%struct.sctp_ulpq*, i64) #1

declare dso_local i64 @sk_rmem_schedule(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @sctp_ulpq_tail_data(%struct.sctp_ulpq*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_ulpq_partial_delivery(%struct.sctp_ulpq*, i32) #1

declare dso_local i32 @sctp_ulpq_reasm_drain(%struct.sctp_ulpq*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
