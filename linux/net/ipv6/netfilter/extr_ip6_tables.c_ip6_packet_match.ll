; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_ip6_packet_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_ip6_packet_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip6t_ip6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32 }

@IP6T_INV_SRCIP = common dso_local global i32 0, align 4
@IP6T_INV_DSTIP = common dso_local global i32 0, align 4
@IP6T_INV_VIA_IN = common dso_local global i32 0, align 4
@IP6T_INV_VIA_OUT = common dso_local global i32 0, align 4
@IP6T_F_PROTO = common dso_local global i32 0, align 4
@IP6T_INV_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8*, i8*, %struct.ip6t_ip6*, i32*, i32*, i32*)* @ip6_packet_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_packet_match(%struct.sk_buff* %0, i8* %1, i8* %2, %struct.ip6t_ip6* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ip6t_ip6*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ipv6hdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.ip6t_ip6* %3, %struct.ip6t_ip6** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %20)
  store %struct.ipv6hdr* %21, %struct.ipv6hdr** %17, align 8
  %22 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %23 = load i32, i32* @IP6T_INV_SRCIP, align 4
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %25 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %24, i32 0, i32 1
  %26 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %27 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %26, i32 0, i32 10
  %28 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %29 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %28, i32 0, i32 9
  %30 = call i32 @ipv6_masked_addr_cmp(i32* %25, i32* %27, i32* %29)
  %31 = call i64 @NF_INVF(%struct.ip6t_ip6* %22, i32 %23, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %7
  %34 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %35 = load i32, i32* @IP6T_INV_DSTIP, align 4
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %37 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %36, i32 0, i32 0
  %38 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %39 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %38, i32 0, i32 8
  %40 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %41 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %40, i32 0, i32 7
  %42 = call i32 @ipv6_masked_addr_cmp(i32* %37, i32* %39, i32* %41)
  %43 = call i64 @NF_INVF(%struct.ip6t_ip6* %34, i32 %35, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33, %7
  store i32 0, i32* %8, align 4
  br label %133

46:                                               ; preds = %33
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %49 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %52 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ifname_compare_aligned(i8* %47, i32 %50, i32 %53)
  store i64 %54, i64* %16, align 8
  %55 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %56 = load i32, i32* @IP6T_INV_VIA_IN, align 4
  %57 = load i64, i64* %16, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @NF_INVF(%struct.ip6t_ip6* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %133

63:                                               ; preds = %46
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %66 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %69 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ifname_compare_aligned(i8* %64, i32 %67, i32 %70)
  store i64 %71, i64* %16, align 8
  %72 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %73 = load i32, i32* @IP6T_INV_VIA_OUT, align 4
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @NF_INVF(%struct.ip6t_ip6* %72, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %133

80:                                               ; preds = %63
  %81 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %82 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IP6T_F_PROTO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %132

87:                                               ; preds = %80
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @ipv6_find_hdr(%struct.sk_buff* %88, i32* %89, i32 -1, i16* %19, i32* null)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i16, i16* %19, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32*, i32** %15, align 8
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %93
  store i32 0, i32* %8, align 4
  br label %133

100:                                              ; preds = %87
  %101 = load i16, i16* %19, align 2
  %102 = zext i16 %101 to i32
  %103 = load i32*, i32** %14, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %105 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %111 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IP6T_INV_PROTO, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  br label %133

117:                                              ; preds = %109
  store i32 1, i32* %8, align 4
  br label %133

118:                                              ; preds = %100
  %119 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %120 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %12, align 8
  %125 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IP6T_INV_PROTO, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %133

131:                                              ; preds = %123, %118
  br label %132

132:                                              ; preds = %131, %80
  store i32 1, i32* %8, align 4
  br label %133

133:                                              ; preds = %132, %130, %117, %116, %99, %79, %62, %45
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @NF_INVF(%struct.ip6t_ip6*, i32, i32) #1

declare dso_local i32 @ipv6_masked_addr_cmp(i32*, i32*, i32*) #1

declare dso_local i64 @ifname_compare_aligned(i8*, i32, i32) #1

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i16*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
