; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_diag.c_pdiag_put_ring.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_diag.c_pdiag_put_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_ring_buffer = type { i32, %struct.TYPE_2__, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.packet_diag_ring = type { i32, i64, i64, i64, i64, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@TPACKET_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_ring_buffer*, i32, i32, %struct.sk_buff*)* @pdiag_put_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdiag_put_ring(%struct.packet_ring_buffer* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packet_ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.packet_diag_ring, align 8
  store %struct.packet_ring_buffer* %0, %struct.packet_ring_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %11 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

16:                                               ; preds = %4
  %17 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 4
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TPACKET_V2, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %16
  %40 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 3
  store i64 %43, i64* %44, align 8
  %45 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  br label %59

55:                                               ; preds = %16
  %56 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.packet_diag_ring, %struct.packet_diag_ring* %10, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %39
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @nla_put(%struct.sk_buff* %60, i32 %61, i32 48, %struct.packet_diag_ring* %10)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.packet_diag_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
