; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc.c_lowpan_nhc_check_compression.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc.c_lowpan_nhc_check_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_nhc = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i64 }

@lowpan_nhc_lock = common dso_local global i32 0, align 4
@lowpan_nexthdr_nhcs = common dso_local global %struct.lowpan_nhc** null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lowpan_nhc_check_compression(%struct.sk_buff* %0, %struct.ipv6hdr* %1, i32** %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.lowpan_nhc*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @spin_lock_bh(i32* @lowpan_nhc_lock)
  %10 = load %struct.lowpan_nhc**, %struct.lowpan_nhc*** @lowpan_nexthdr_nhcs, align 8
  %11 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.lowpan_nhc*, %struct.lowpan_nhc** %10, i64 %13
  %15 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %14, align 8
  store %struct.lowpan_nhc* %15, %struct.lowpan_nhc** %7, align 8
  %16 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %7, align 8
  %17 = icmp ne %struct.lowpan_nhc* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %7, align 8
  %20 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = call i32 @spin_unlock_bh(i32* @lowpan_nhc_lock)
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
