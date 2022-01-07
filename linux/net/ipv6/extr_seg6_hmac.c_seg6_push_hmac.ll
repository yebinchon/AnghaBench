; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_push_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_push_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_sr_hdr = type { i32 }
%struct.seg6_hmac_info = type { i32 }
%struct.sr6_tlv_hmac = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SEG6_HMAC_FIELD_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_push_hmac(%struct.net* %0, %struct.in6_addr* %1, %struct.ipv6_sr_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.ipv6_sr_hdr*, align 8
  %8 = alloca %struct.seg6_hmac_info*, align 8
  %9 = alloca %struct.sr6_tlv_hmac*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.ipv6_sr_hdr* %2, %struct.ipv6_sr_hdr** %7, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %14 = call %struct.sr6_tlv_hmac* @seg6_get_tlv_hmac(%struct.ipv6_sr_hdr* %13)
  store %struct.sr6_tlv_hmac* %14, %struct.sr6_tlv_hmac** %9, align 8
  %15 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %9, align 8
  %16 = icmp ne %struct.sr6_tlv_hmac* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.net*, %struct.net** %5, align 8
  %23 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %9, align 8
  %24 = getelementptr inbounds %struct.sr6_tlv_hmac, %struct.sr6_tlv_hmac* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = call %struct.seg6_hmac_info* @seg6_hmac_info_lookup(%struct.net* %22, i32 %26)
  store %struct.seg6_hmac_info* %27, %struct.seg6_hmac_info** %8, align 8
  %28 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %8, align 8
  %29 = icmp ne %struct.seg6_hmac_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %44

31:                                               ; preds = %20
  %32 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %9, align 8
  %33 = getelementptr inbounds %struct.sr6_tlv_hmac, %struct.sr6_tlv_hmac* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SEG6_HMAC_FIELD_LEN, align 4
  %36 = call i32 @memset(i32 %34, i32 0, i32 %35)
  %37 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %8, align 8
  %38 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %40 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %9, align 8
  %41 = getelementptr inbounds %struct.sr6_tlv_hmac, %struct.sr6_tlv_hmac* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seg6_hmac_compute(%struct.seg6_hmac_info* %37, %struct.ipv6_sr_hdr* %38, %struct.in6_addr* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %31, %30
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sr6_tlv_hmac* @seg6_get_tlv_hmac(%struct.ipv6_sr_hdr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.seg6_hmac_info* @seg6_hmac_info_lookup(%struct.net*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @seg6_hmac_compute(%struct.seg6_hmac_info*, %struct.ipv6_sr_hdr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
