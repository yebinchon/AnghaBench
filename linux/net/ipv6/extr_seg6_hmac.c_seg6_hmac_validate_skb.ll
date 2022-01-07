; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_validate_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_hmac.c_seg6_hmac_validate_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.seg6_hmac_info = type { i32 }
%struct.sr6_tlv_hmac = type { i32, i32 }
%struct.ipv6_sr_hdr = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SEG6_HMAC_FIELD_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_hmac_validate_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.seg6_hmac_info*, align 8
  %8 = alloca %struct.sr6_tlv_hmac*, align 8
  %9 = alloca %struct.ipv6_sr_hdr*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %12 = load i32, i32* @SEG6_HMAC_FIELD_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @dev_net(i32 %18)
  store %struct.net* %19, %struct.net** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.inet6_dev* @__in6_dev_get(i32 %22)
  store %struct.inet6_dev* %23, %struct.inet6_dev** %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = call i64 @skb_transport_header(%struct.sk_buff* %24)
  %26 = inttoptr i64 %25 to %struct.ipv6_sr_hdr*
  store %struct.ipv6_sr_hdr* %26, %struct.ipv6_sr_hdr** %9, align 8
  %27 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %9, align 8
  %28 = call %struct.sr6_tlv_hmac* @seg6_get_tlv_hmac(%struct.ipv6_sr_hdr* %27)
  store %struct.sr6_tlv_hmac* %28, %struct.sr6_tlv_hmac** %8, align 8
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %8, align 8
  %36 = icmp ne %struct.sr6_tlv_hmac* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %83

38:                                               ; preds = %34, %1
  %39 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %40 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %83

45:                                               ; preds = %38
  %46 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %47 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %8, align 8
  %53 = icmp ne %struct.sr6_tlv_hmac* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %83

55:                                               ; preds = %51, %45
  %56 = load %struct.net*, %struct.net** %6, align 8
  %57 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %8, align 8
  %58 = getelementptr inbounds %struct.sr6_tlv_hmac, %struct.sr6_tlv_hmac* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = call %struct.seg6_hmac_info* @seg6_hmac_info_lookup(%struct.net* %56, i32 %60)
  store %struct.seg6_hmac_info* %61, %struct.seg6_hmac_info** %7, align 8
  %62 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %7, align 8
  %63 = icmp ne %struct.seg6_hmac_info* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %83

65:                                               ; preds = %55
  %66 = load %struct.seg6_hmac_info*, %struct.seg6_hmac_info** %7, align 8
  %67 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %9, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i64 @seg6_hmac_compute(%struct.seg6_hmac_info* %66, %struct.ipv6_sr_hdr* %67, i32* %70, i32* %15)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %83

74:                                               ; preds = %65
  %75 = load %struct.sr6_tlv_hmac*, %struct.sr6_tlv_hmac** %8, align 8
  %76 = getelementptr inbounds %struct.sr6_tlv_hmac, %struct.sr6_tlv_hmac* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SEG6_HMAC_FIELD_LEN, align 4
  %79 = call i64 @memcmp(i32* %15, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %83

82:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %81, %73, %64, %54, %44, %37
  %84 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @dev_net(i32) #2

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #2

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #2

declare dso_local %struct.sr6_tlv_hmac* @seg6_get_tlv_hmac(%struct.ipv6_sr_hdr*) #2

declare dso_local %struct.seg6_hmac_info* @seg6_hmac_info_lookup(%struct.net*, i32) #2

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i64 @seg6_hmac_compute(%struct.seg6_hmac_info*, %struct.ipv6_sr_hdr*, i32*, i32*) #2

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
