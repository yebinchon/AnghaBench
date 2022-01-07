; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrp_applicant = type { %struct.TYPE_10__*, i32, %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrp_applicant*)* @mrp_pdu_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrp_pdu_queue(%struct.mrp_applicant* %0) #0 {
  %2 = alloca %struct.mrp_applicant*, align 8
  store %struct.mrp_applicant* %0, %struct.mrp_applicant** %2, align 8
  %3 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %4 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %3, i32 0, i32 0
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %10 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = call %struct.TYPE_11__* @mrp_cb(%struct.TYPE_10__* %11)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %18 = call i32 @mrp_pdu_append_end_mark(%struct.mrp_applicant* %17)
  br label %19

19:                                               ; preds = %16, %8
  %20 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %21 = call i32 @mrp_pdu_append_end_mark(%struct.mrp_applicant* %20)
  %22 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %23 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %26 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %29 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %36 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %35, i32 0, i32 3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %41 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %46 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_hard_header(%struct.TYPE_10__* %24, %struct.TYPE_12__* %27, i32 %34, i32 %39, i32 %44, i32 %49)
  %51 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %52 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %51, i32 0, i32 1
  %53 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %54 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i32 @skb_queue_tail(i32* %52, %struct.TYPE_10__* %55)
  %57 = load %struct.mrp_applicant*, %struct.mrp_applicant** %2, align 8
  %58 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %57, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %58, align 8
  br label %59

59:                                               ; preds = %19, %7
  ret void
}

declare dso_local %struct.TYPE_11__* @mrp_cb(%struct.TYPE_10__*) #1

declare dso_local i32 @mrp_pdu_append_end_mark(%struct.mrp_applicant*) #1

declare dso_local i32 @dev_hard_header(%struct.TYPE_10__*, %struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
