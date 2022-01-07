; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.h_xsk_prod_nb_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.h_xsk_prod_nb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_ring_prod = type { i64, i64, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xsk_ring_prod*, i64)* @xsk_prod_nb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xsk_prod_nb_free(%struct.xsk_ring_prod* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.xsk_ring_prod*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xsk_ring_prod* %0, %struct.xsk_ring_prod** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %4, align 8
  %8 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %4, align 8
  %11 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %3, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %4, align 8
  %21 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %4, align 8
  %25 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %4, align 8
  %29 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %4, align 8
  %31 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xsk_ring_prod*, %struct.xsk_ring_prod** %4, align 8
  %34 = getelementptr inbounds %struct.xsk_ring_prod, %struct.xsk_ring_prod* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %19, %17
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
