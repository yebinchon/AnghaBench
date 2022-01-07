; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_multipath_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_multipath_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_route = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mpls_entry_decoded = type { i64, i32 }
%struct.mpls_shim_hdr = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32 }
%struct.ipv6hdr = type { i64, i32, i32 }

@MAX_MP_SELECT_LABELS = common dso_local global i32 0, align 4
@MPLS_LABEL_FIRST_UNRESERVED = common dso_local global i64 0, align 8
@MPLS_LABEL_ENTROPY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpls_route*, %struct.sk_buff*)* @mpls_multipath_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_multipath_hash(%struct.mpls_route* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mpls_route*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mpls_entry_decoded, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpls_shim_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mpls_entry_decoded, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.ipv6hdr*, align 8
  store %struct.mpls_route* %0, %struct.mpls_route** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %134, %2
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MAX_MP_SELECT_LABELS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %137

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @pskb_may_pull(%struct.sk_buff* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %137

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff* %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %30, i64 %32
  store %struct.mpls_shim_hdr* %33, %struct.mpls_shim_hdr** %7, align 8
  %34 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %7, align 8
  %35 = call { i64, i32 } @mpls_entry_decode(%struct.mpls_shim_hdr* %34)
  %36 = bitcast %struct.mpls_entry_decoded* %11 to { i64, i32 }*
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i32 } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i32 } %35, 1
  store i32 %40, i32* %39, align 8
  %41 = bitcast %struct.mpls_entry_decoded* %5 to i8*
  %42 = bitcast %struct.mpls_entry_decoded* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MPLS_LABEL_FIRST_UNRESERVED, align 8
  %46 = icmp sge i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %28
  %51 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %5, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @jhash_1word(i64 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %137

58:                                               ; preds = %50
  br label %66

59:                                               ; preds = %28
  %60 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %5, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MPLS_LABEL_ENTROPY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %134

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = add i64 %74, 16
  %76 = trunc i64 %75 to i32
  %77 = call i64 @pskb_may_pull(%struct.sk_buff* %72, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %71
  %80 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %7, align 8
  %81 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %80, i64 1
  %82 = bitcast %struct.mpls_shim_hdr* %81 to %struct.iphdr*
  store %struct.iphdr* %82, %struct.iphdr** %12, align 8
  %83 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %84 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %101

87:                                               ; preds = %79
  %88 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %89 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohl(i32 %90)
  %92 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohl(i32 %94)
  %96 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %97 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @jhash_3words(i32 %91, i32 %95, i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  br label %132

101:                                              ; preds = %79
  %102 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %131

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = add i64 %109, 16
  %111 = trunc i64 %110 to i32
  %112 = call i64 @pskb_may_pull(%struct.sk_buff* %107, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %106
  %115 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %7, align 8
  %116 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %115, i64 1
  %117 = bitcast %struct.mpls_shim_hdr* %116 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %117, %struct.ipv6hdr** %13, align 8
  %118 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %119 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %118, i32 0, i32 2
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @__ipv6_addr_jhash(i32* %119, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %123 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %122, i32 0, i32 1
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @__ipv6_addr_jhash(i32* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %127 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @jhash_1word(i64 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %114, %106, %101
  br label %132

132:                                              ; preds = %131, %87
  br label %133

133:                                              ; preds = %132, %71
  br label %137

134:                                              ; preds = %70
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %14

137:                                              ; preds = %133, %57, %27, %14
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff*) #1

declare dso_local { i64, i32 } @mpls_entry_decode(%struct.mpls_shim_hdr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @jhash_1word(i64, i32) #1

declare dso_local i32 @jhash_3words(i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @__ipv6_addr_jhash(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
