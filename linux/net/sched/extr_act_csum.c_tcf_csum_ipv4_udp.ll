; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv4_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv4_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.udphdr = type { i64, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SKB_GSO_UDP = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32)* @tcf_csum_ipv4_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_ipv4_udp(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca %struct.iphdr*, align 8
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
  br label %126

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
  br label %126

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %34)
  store %struct.iphdr* %35, %struct.iphdr** %11, align 8
  %36 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %37 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ntohs(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %44 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %121

47:                                               ; preds = %42, %33
  %48 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %49 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 %57, %58
  %60 = call i8* @csum_partial(%struct.udphdr* %56, i32 %59, i32 0)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %81

63:                                               ; preds = %52
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp uge i64 %65, 16
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub i32 %69, %70
  %72 = icmp ule i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i8* @csum_partial(%struct.udphdr* %74, i32 %75, i32 0)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %80

79:                                               ; preds = %67, %63
  br label %125

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %55
  br label %95

82:                                               ; preds = %47
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %84, %85
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %125

89:                                               ; preds = %82
  %90 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i8* @csum_partial(%struct.udphdr* %90, i32 %91, i32 0)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %97 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %100 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %104 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @csum_tcpudp_magic(i32 %98, i32 %101, i32 %102, i32 %105, i8* %108)
  %110 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %111 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %113 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %95
  %117 = load i64, i64* @CSUM_MANGLED_0, align 8
  %118 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %119 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %95
  br label %121

121:                                              ; preds = %120, %42
  %122 = load i32, i32* @CHECKSUM_NONE, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %88, %79
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %32, %24
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @tcf_csum_skb_nextlayer(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @csum_partial(%struct.udphdr*, i32, i32) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
