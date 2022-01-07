; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_make_uih.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_make_uih.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rfcomm_hdr = type { i32, i32, i64 }

@RFCOMM_UIH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @rfcomm_make_uih to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_make_uih(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.rfcomm_hdr* @skb_push(%struct.sk_buff* %14, i32 4)
  store %struct.rfcomm_hdr* %15, %struct.rfcomm_hdr** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @__len16(i32 %16)
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %19, i32 0, i32 2
  %21 = bitcast i64* %20 to i32*
  %22 = call i32 @put_unaligned(i32 %18, i32* %21)
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call %struct.rfcomm_hdr* @skb_push(%struct.sk_buff* %24, i32 3)
  store %struct.rfcomm_hdr* %25, %struct.rfcomm_hdr** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @__len8(i32 %26)
  %28 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %13
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @RFCOMM_UIH, align 4
  %35 = call i32 @__ctrl(i32 %34, i32 0)
  %36 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32* @skb_put(%struct.sk_buff* %38, i32 1)
  store i32* %39, i32** %7, align 8
  %40 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %41 = bitcast %struct.rfcomm_hdr* %40 to i8*
  %42 = call i32 @__fcs(i8* %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  ret void
}

declare dso_local %struct.rfcomm_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @__len16(i32) #1

declare dso_local i64 @__len8(i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @__fcs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
