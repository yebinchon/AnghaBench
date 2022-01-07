; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc.c_lowpan_nhc_do_compression.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc.c_lowpan_nhc_do_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_nhc = type { i32 (%struct.sk_buff*, i32**)*, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ipv6hdr = type { i64 }

@lowpan_nhc_lock = common dso_local global i32 0, align 4
@lowpan_nexthdr_nhcs = common dso_local global %struct.lowpan_nhc** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lowpan_nhc_do_compression(%struct.sk_buff* %0, %struct.ipv6hdr* %1, i32** %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lowpan_nhc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %5, align 8
  store i32** %2, i32*** %6, align 8
  %9 = call i32 @spin_lock_bh(i32* @lowpan_nhc_lock)
  %10 = load %struct.lowpan_nhc**, %struct.lowpan_nhc*** @lowpan_nexthdr_nhcs, align 8
  %11 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.lowpan_nhc*, %struct.lowpan_nhc** %10, i64 %13
  %15 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %14, align 8
  store %struct.lowpan_nhc* %15, %struct.lowpan_nhc** %8, align 8
  %16 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %8, align 8
  %17 = icmp ne %struct.lowpan_nhc* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %8, align 8
  %20 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %19, i32 0, i32 0
  %21 = load i32 (%struct.sk_buff*, i32**)*, i32 (%struct.sk_buff*, i32**)** %20, align 8
  %22 = icmp ne i32 (%struct.sk_buff*, i32**)* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i1 [ true, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %59

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @skb_set_transport_header(%struct.sk_buff* %41, i32 8)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %8, align 8
  %45 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %44, i32 0, i32 0
  %46 = load i32 (%struct.sk_buff*, i32**)*, i32 (%struct.sk_buff*, i32**)** %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = call i32 %46(%struct.sk_buff* %47, i32** %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %59

53:                                               ; preds = %43
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %8, align 8
  %56 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @skb_pull(%struct.sk_buff* %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %52, %29
  %60 = call i32 @spin_unlock_bh(i32* @lowpan_nhc_lock)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
