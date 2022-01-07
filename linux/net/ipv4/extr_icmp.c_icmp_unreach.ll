; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_unreach.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_unreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.icmphdr = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%pI4: fragmentation needed and DF set\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%pI4: Source Route Failed\0A\00", align 1
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@ICMP_MIB_INTIMEEXCDS = common dso_local global i32 0, align 4
@ICMP_EXC_FRAGTIME = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"%pI4 sent an invalid ICMP type %u, code %u error to a broadcast: %pI4 on %s\0A\00", align 1
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @icmp_unreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_unreach(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.icmphdr*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.TYPE_10__* @skb_dst(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net* @dev_net(i32 %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i32 12)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %136

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call %struct.icmphdr* @icmp_hdr(%struct.sk_buff* %18)
  store %struct.icmphdr* %19, %struct.icmphdr** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.iphdr*
  store %struct.iphdr* %23, %struct.iphdr** %4, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %136

29:                                               ; preds = %17
  %30 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %31 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %96 [
    i32 136, label %33
    i32 132, label %78
    i32 128, label %85
  ]

33:                                               ; preds = %29
  %34 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %35 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 15
  switch i32 %37, label %69 [
    i32 133, label %38
    i32 134, label %38
    i32 130, label %38
    i32 131, label %38
    i32 135, label %39
    i32 129, label %65
  ]

38:                                               ; preds = %33, %33, %33, %33
  br label %70

39:                                               ; preds = %33
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = getelementptr inbounds %struct.net, %struct.net* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %44 [
    i32 2, label %48
    i32 3, label %49
    i32 0, label %57
  ]

44:                                               ; preds = %39
  %45 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 1
  %47 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %46)
  br label %64

48:                                               ; preds = %39
  br label %135

49:                                               ; preds = %39
  %50 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @icmp_tag_validation(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %135

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %39, %56
  %58 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %59 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %57, %44
  br label %70

65:                                               ; preds = %33
  %66 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 1
  %68 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %67)
  br label %70

69:                                               ; preds = %33
  br label %70

70:                                               ; preds = %69, %65, %64, %38
  %71 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %72 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %135

77:                                               ; preds = %70
  br label %96

78:                                               ; preds = %29
  %79 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %80 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ntohl(i32 %82)
  %84 = ashr i32 %83, 24
  store i32 %84, i32* %7, align 4
  br label %96

85:                                               ; preds = %29
  %86 = load %struct.net*, %struct.net** %6, align 8
  %87 = load i32, i32* @ICMP_MIB_INTIMEEXCDS, align 4
  %88 = call i32 @__ICMP_INC_STATS(%struct.net* %86, i32 %87)
  %89 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %90 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ICMP_EXC_FRAGTIME, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %135

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %29, %95, %78, %77
  %97 = load %struct.net*, %struct.net** %6, align 8
  %98 = getelementptr inbounds %struct.net, %struct.net* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %96
  %103 = load %struct.net*, %struct.net** %6, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @inet_addr_type_dev_table(%struct.net* %103, %struct.TYPE_12__* %106, i32 %109)
  %111 = load i64, i64* @RTN_BROADCAST, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %102
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = call %struct.TYPE_11__* @ip_hdr(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %118 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.icmphdr*, %struct.icmphdr** %5, align 8
  %121 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 1
  %125 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32* %116, i32 %119, i32 %122, i32* %124, i32 %129)
  br label %135

131:                                              ; preds = %102, %96
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @icmp_socket_deliver(%struct.sk_buff* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %113, %94, %76, %55, %48
  store i32 1, i32* %2, align 4
  br label %140

136:                                              ; preds = %28, %16
  %137 = load %struct.net*, %struct.net** %6, align 8
  %138 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %139 = call i32 @__ICMP_INC_STATS(%struct.net* %137, i32 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %135
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_10__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.icmphdr* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32*) #1

declare dso_local i32 @icmp_tag_validation(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @__ICMP_INC_STATS(%struct.net*, i32) #1

declare dso_local i64 @inet_addr_type_dev_table(%struct.net*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32*, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @icmp_socket_deliver(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
