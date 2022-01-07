; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_num_gabs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_num_gabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tsnmap = type { i32 }
%struct.sctp_gap_ack_block = type { i8*, i8* }
%struct.sctp_tsnmap_iter = type { i32 }

@SCTP_MAX_GABS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_tsnmap_num_gabs(%struct.sctp_tsnmap* %0, %struct.sctp_gap_ack_block* %1) #0 {
  %3 = alloca %struct.sctp_tsnmap*, align 8
  %4 = alloca %struct.sctp_gap_ack_block*, align 8
  %5 = alloca %struct.sctp_tsnmap_iter, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sctp_tsnmap* %0, %struct.sctp_tsnmap** %3, align 8
  store %struct.sctp_gap_ack_block* %1, %struct.sctp_gap_ack_block** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %10 = call i64 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %14 = call i32 @sctp_tsnmap_iter_init(%struct.sctp_tsnmap* %13, %struct.sctp_tsnmap_iter* %5)
  br label %15

15:                                               ; preds = %40, %12
  %16 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %3, align 8
  %17 = call i64 @sctp_tsnmap_next_gap_ack(%struct.sctp_tsnmap* %16, %struct.sctp_tsnmap_iter* %5, i32* %7, i32* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @htons(i32 %20)
  %22 = load %struct.sctp_gap_ack_block*, %struct.sctp_gap_ack_block** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sctp_gap_ack_block, %struct.sctp_gap_ack_block* %22, i64 %24
  %26 = getelementptr inbounds %struct.sctp_gap_ack_block, %struct.sctp_gap_ack_block* %25, i32 0, i32 1
  store i8* %21, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = load %struct.sctp_gap_ack_block*, %struct.sctp_gap_ack_block** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sctp_gap_ack_block, %struct.sctp_gap_ack_block* %29, i64 %31
  %33 = getelementptr inbounds %struct.sctp_gap_ack_block, %struct.sctp_gap_ack_block* %32, i32 0, i32 0
  store i8* %28, i8** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SCTP_MAX_GABS, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %41

40:                                               ; preds = %19
  br label %15

41:                                               ; preds = %39, %15
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap*) #1

declare dso_local i32 @sctp_tsnmap_iter_init(%struct.sctp_tsnmap*, %struct.sctp_tsnmap_iter*) #1

declare dso_local i64 @sctp_tsnmap_next_gap_ack(%struct.sctp_tsnmap*, %struct.sctp_tsnmap_iter*, i32*, i32*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
