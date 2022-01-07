; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_egress.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_egress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mpls_route = type { i32, i32 }
%struct.sk_buff = type { i8* }
%struct.mpls_entry_decoded = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.ipv6hdr = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@MPLS_TTL_PROP_ENABLED = common dso_local global i32 0, align 4
@MPLS_TTL_PROP_DEFAULT = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.mpls_route*, %struct.sk_buff*, i32)* @mpls_egress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_egress(%struct.net* %0, %struct.mpls_route* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpls_entry_decoded, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.mpls_route*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %6, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.mpls_route* %1, %struct.mpls_route** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = call i32 @pskb_may_pull(%struct.sk_buff* %16, i32 12)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %134

20:                                               ; preds = %4
  %21 = load %struct.mpls_route*, %struct.mpls_route** %8, align 8
  %22 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %132 [
    i32 130, label %33
    i32 129, label %88
    i32 128, label %131
  ]

33:                                               ; preds = %31
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %34)
  store %struct.iphdr* %35, %struct.iphdr** %12, align 8
  %36 = load i32, i32* @ETH_P_IP, align 4
  %37 = call i8* @htons(i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mpls_route*, %struct.mpls_route** %8, align 8
  %41 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MPLS_TTL_PROP_ENABLED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %33
  %46 = load %struct.mpls_route*, %struct.mpls_route** %8, align 8
  %47 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MPLS_TTL_PROP_DEFAULT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.net*, %struct.net** %7, align 8
  %53 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %33
  %58 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  br label %73

60:                                               ; preds = %51, %45
  %61 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %62 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32 [ %69, %65 ], [ 0, %70 ]
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %57
  %74 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i32 0, i32 2
  %76 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = call i8* @htons(i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = shl i32 %81, 8
  %83 = call i8* @htons(i32 %82)
  %84 = call i32 @csum_replace2(i32* %75, i8* %80, i8* %83)
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %11, align 4
  br label %132

88:                                               ; preds = %31
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %89)
  store %struct.ipv6hdr* %90, %struct.ipv6hdr** %14, align 8
  %91 = load i32, i32* @ETH_P_IPV6, align 4
  %92 = call i8* @htons(i32 %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.mpls_route*, %struct.mpls_route** %8, align 8
  %96 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MPLS_TTL_PROP_ENABLED, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %112, label %100

100:                                              ; preds = %88
  %101 = load %struct.mpls_route*, %struct.mpls_route** %8, align 8
  %102 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MPLS_TTL_PROP_DEFAULT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.net*, %struct.net** %7, align 8
  %108 = getelementptr inbounds %struct.net, %struct.net* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106, %88
  %113 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %6, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %116 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %130

117:                                              ; preds = %106, %100
  %118 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %119 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %124 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %128 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %117
  br label %130

130:                                              ; preds = %129, %112
  store i32 1, i32* %11, align 4
  br label %132

131:                                              ; preds = %31
  br label %132

132:                                              ; preds = %31, %131, %130, %73
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %19
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @csum_replace2(i32*, i8*, i8*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
