; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.udphdr = type { i64, i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SKB_GSO_UDP = common dso_local global i32 0, align 4
@IPPROTO_UDPLITE = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32)* @tcf_csum_ipv6_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_ipv6_udp(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i64 @skb_is_gso(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SKB_GSO_UDP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %120

25:                                               ; preds = %16, %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.udphdr* @tcf_csum_skb_nextlayer(%struct.sk_buff* %26, i32 %27, i32 %28, i32 16)
  store %struct.udphdr* %29, %struct.udphdr** %10, align 8
  %30 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %31 = icmp eq %struct.udphdr* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %120

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %34)
  store %struct.ipv6hdr* %35, %struct.ipv6hdr** %11, align 8
  %36 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %37 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ntohs(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %41 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %49, %50
  %52 = call i8* @csum_partial(%struct.udphdr* %48, i32 %51, i32 0)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %73

55:                                               ; preds = %44
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 %57, 16
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %61, %62
  %64 = icmp ule i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i8* @csum_partial(%struct.udphdr* %66, i32 %67, i32 0)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %72

71:                                               ; preds = %59, %55
  br label %119

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %47
  br label %87

74:                                               ; preds = %33
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub i32 %76, %77
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %119

81:                                               ; preds = %74
  %82 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i8* @csum_partial(%struct.udphdr* %82, i32 %83, i32 0)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %81, %73
  %88 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %89 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %88, i32 0, i32 1
  %90 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %91 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @IPPROTO_UDPLITE, align 4
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @IPPROTO_UDP, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @csum_ipv6_magic(i32* %89, i32* %91, i32 %92, i32 %100, i8* %103)
  %105 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %106 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %108 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %99
  %112 = load i64, i64* @CSUM_MANGLED_0, align 8
  %113 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %114 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %99
  %116 = load i32, i32* @CHECKSUM_NONE, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %80, %71
  store i32 1, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %32, %24
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @tcf_csum_skb_nextlayer(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @csum_partial(%struct.udphdr*, i32, i32) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
