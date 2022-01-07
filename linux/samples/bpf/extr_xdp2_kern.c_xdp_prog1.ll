; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp2_kern.c_xdp_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp2_kern.c_xdp_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.ethhdr = type { i64 }
%struct.vlan_hdr = type { i64 }

@XDP_DROP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@rxcnt = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@XDP_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdp_prog1(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.vlan_hdr*, align 8
  %13 = alloca %struct.vlan_hdr*, align 8
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %14 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %15 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %19 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.ethhdr*
  store %struct.ethhdr* %23, %struct.ethhdr** %6, align 8
  %24 = load i32, i32* @XDP_DROP, align 4
  store i32 %24, i32* %7, align 4
  store i32 8, i32* %10, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %140

33:                                               ; preds = %1
  %34 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %35 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* @ETH_P_8021Q, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @ETH_P_8021AD, align 4
  %44 = call i64 @htons(i32 %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %41, %33
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = bitcast i8* %50 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %51, %struct.vlan_hdr** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ugt i8* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %46
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %140

64:                                               ; preds = %46
  %65 = load %struct.vlan_hdr*, %struct.vlan_hdr** %12, align 8
  %66 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %64, %41
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @ETH_P_8021Q, align 4
  %71 = call i64 @htons(i32 %70)
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* @ETH_P_8021AD, align 4
  %76 = call i64 @htons(i32 %75)
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %73, %68
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %79, i64 %81
  %83 = bitcast i8* %82 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %83, %struct.vlan_hdr** %13, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %88, i64 %90
  %92 = load i8*, i8** %4, align 8
  %93 = icmp ugt i8* %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %140

96:                                               ; preds = %78
  %97 = load %struct.vlan_hdr*, %struct.vlan_hdr** %13, align 8
  %98 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %9, align 8
  br label %100

100:                                              ; preds = %96, %73
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* @ETH_P_IP, align 4
  %103 = call i64 @htons(i32 %102)
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = call i64 @parse_ipv4(i8* %106, i32 %107, i8* %108)
  store i64 %109, i64* %11, align 8
  br label %122

110:                                              ; preds = %100
  %111 = load i64, i64* %9, align 8
  %112 = load i32, i32* @ETH_P_IPV6, align 4
  %113 = call i64 @htons(i32 %112)
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = call i64 @parse_ipv6(i8* %116, i32 %117, i8* %118)
  store i64 %119, i64* %11, align 8
  br label %121

120:                                              ; preds = %110
  store i64 0, i64* %11, align 8
  br label %121

121:                                              ; preds = %120, %115
  br label %122

122:                                              ; preds = %121, %105
  %123 = call i64* @bpf_map_lookup_elem(i32* @rxcnt, i64* %11)
  store i64* %123, i64** %8, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i64*, i64** %8, align 8
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* @IPPROTO_UDP, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @swap_src_dst_mac(i8* %135)
  %137 = load i32, i32* @XDP_TX, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %94, %62, %31
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @parse_ipv4(i8*, i32, i8*) #1

declare dso_local i64 @parse_ipv6(i8*, i32, i8*) #1

declare dso_local i64* @bpf_map_lookup_elem(i32*, i64*) #1

declare dso_local i32 @swap_src_dst_mac(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
