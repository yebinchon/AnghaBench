; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_get_tlv_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_get_tlv_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sr6_tlv_hmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ipv6_sr_hdr = type { i32, i32 }

@SR6_TLV_HMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sr6_tlv_hmac* (%struct.ipv6_sr_hdr*)* @seg6_get_tlv_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sr6_tlv_hmac* @seg6_get_tlv_hmac(%struct.ipv6_sr_hdr* %0) #0 {
  %2 = alloca %struct.sr6_tlv_hmac*, align 8
  %3 = alloca %struct.ipv6_sr_hdr*, align 8
  %4 = alloca %struct.sr6_tlv_hmac*, align 8
  store %struct.ipv6_sr_hdr* %0, %struct.ipv6_sr_hdr** %3, align 8
  %5 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %6 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %9 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 5
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.sr6_tlv_hmac* null, %struct.sr6_tlv_hmac** %2, align 8
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %18 = call i32 @sr_has_hmac(%struct.ipv6_sr_hdr* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store %struct.sr6_tlv_hmac* null, %struct.sr6_tlv_hmac** %2, align 8
  br label %48

21:                                               ; preds = %16
  %22 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %23 = bitcast %struct.ipv6_sr_hdr* %22 to i8*
  %24 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %25 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = shl i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %23, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 -40
  %32 = bitcast i8* %31 to %struct.sr6_tlv_hmac*
  store %struct.sr6_tlv_hmac* %32, %struct.sr6_tlv_hmac** %4, align 8
  %33 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %4, align 8
  %34 = getelementptr inbounds %struct.sr6_tlv_hmac, %struct.sr6_tlv_hmac* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SR6_TLV_HMAC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %21
  %40 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %4, align 8
  %41 = getelementptr inbounds %struct.sr6_tlv_hmac, %struct.sr6_tlv_hmac* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 38
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %21
  store %struct.sr6_tlv_hmac* null, %struct.sr6_tlv_hmac** %2, align 8
  br label %48

46:                                               ; preds = %39
  %47 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %4, align 8
  store %struct.sr6_tlv_hmac* %47, %struct.sr6_tlv_hmac** %2, align 8
  br label %48

48:                                               ; preds = %46, %45, %20, %15
  %49 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %2, align 8
  ret %struct.sr6_tlv_hmac* %49
}

declare dso_local i32 @sr_has_hmac(%struct.ipv6_sr_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
