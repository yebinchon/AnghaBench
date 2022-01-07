; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_next_gap_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_next_gap_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tsnmap = type { i64, i32, i32, i64, i32 }
%struct.sctp_tsnmap_iter = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tsnmap*, %struct.sctp_tsnmap_iter*, i64*, i64*)* @sctp_tsnmap_next_gap_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_tsnmap_next_gap_ack(%struct.sctp_tsnmap* %0, %struct.sctp_tsnmap_iter* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_tsnmap*, align 8
  %7 = alloca %struct.sctp_tsnmap_iter*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sctp_tsnmap* %0, %struct.sctp_tsnmap** %6, align 8
  store %struct.sctp_tsnmap_iter* %1, %struct.sctp_tsnmap_iter** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sctp_tsnmap_iter*, %struct.sctp_tsnmap_iter** %7, align 8
  %18 = getelementptr inbounds %struct.sctp_tsnmap_iter, %struct.sctp_tsnmap_iter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @TSN_lte(i32 %16, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

23:                                               ; preds = %4
  %24 = load %struct.sctp_tsnmap_iter*, %struct.sctp_tsnmap_iter** %7, align 8
  %25 = getelementptr inbounds %struct.sctp_tsnmap_iter, %struct.sctp_tsnmap_iter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %6, align 8
  %28 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %13, align 8
  %31 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %6, align 8
  %32 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %6, align 8
  %36 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sctp_tsnmap_find_gap_ack(i32 %33, i64 %34, i32 %37, i64* %11, i64* %12)
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %6, align 8
  %46 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %44, %41, %23
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i64*, i64** %8, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, 1
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  %60 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %6, align 8
  %61 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %62, %64
  %66 = add nsw i64 %65, 1
  %67 = load %struct.sctp_tsnmap_iter*, %struct.sctp_tsnmap_iter** %7, align 8
  %68 = getelementptr inbounds %struct.sctp_tsnmap_iter, %struct.sctp_tsnmap_iter* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %53, %50
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %22
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @TSN_lte(i32, i64) #1

declare dso_local i32 @sctp_tsnmap_find_gap_ack(i32, i64, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
