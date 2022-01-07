; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tsnmap = type { i64, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tsnmap*)* @sctp_tsnmap_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_tsnmap_update(%struct.sctp_tsnmap* %0) #0 {
  %2 = alloca %struct.sctp_tsnmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sctp_tsnmap* %0, %struct.sctp_tsnmap** %2, align 8
  %5 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %9 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %3, align 8
  %12 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %13 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @find_first_zero_bit(i32 %14, i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %42

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %23 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %28 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %32 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %35 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %39 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bitmap_shift_right(i32 %33, i32 %36, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @bitmap_shift_right(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
