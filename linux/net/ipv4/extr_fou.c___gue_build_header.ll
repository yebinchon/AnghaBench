; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c___gue_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c___gue_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64, i64, i32 }
%struct.ip_tunnel_encap = type { i32, i64 }
%struct.guehdr = type { i64, i32, i32, i64, i64 }

@TUNNEL_ENCAP_FLAG_REMCSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@GUE_PLEN_REMCSUM = common dso_local global i64 0, align 8
@SKB_GSO_TUNNEL_REMCSUM = common dso_local global i32 0, align 4
@GUE_LEN_PRIV = common dso_local global i64 0, align 8
@GUE_FLAG_PRIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@GUE_PFLAG_REMCSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gue_build_header(%struct.sk_buff* %0, %struct.ip_tunnel_encap* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ip_tunnel_encap*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.guehdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.ip_tunnel_encap* %1, %struct.ip_tunnel_encap** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %8, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TUNNEL_ENCAP_FLAG_REMCSUM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i64, i64* @GUE_PLEN_REMCSUM, align 8
  %35 = load i64, i64* %14, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* @SKB_GSO_TUNNEL_REMCSUM, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  store i32 1, i32* %16, align 4
  br label %40

40:                                               ; preds = %33, %27, %5
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* @GUE_LEN_PRIV, align 8
  br label %46

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i64 [ %44, %43 ], [ 0, %45 ]
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %14, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @iptunnel_handle_offloads(%struct.sk_buff* %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %6, align 4
  br label %165

57:                                               ; preds = %46
  %58 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %8, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %71

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_net(i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @udp_flow_src_port(i32 %67, %struct.sk_buff* %68, i32 0, i32 0, i32 0)
  %70 = sext i32 %69 to i64
  br label %71

71:                                               ; preds = %63, %62
  %72 = phi i64 [ %60, %62 ], [ %70, %63 ]
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i64, i64* %14, align 8
  %76 = add i64 32, %75
  store i64 %76, i64* %13, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @skb_push(%struct.sk_buff* %77, i64 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.guehdr*
  store %struct.guehdr* %83, %struct.guehdr** %12, align 8
  %84 = load %struct.guehdr*, %struct.guehdr** %12, align 8
  %85 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.guehdr*, %struct.guehdr** %12, align 8
  %87 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = lshr i64 %88, 2
  %90 = load %struct.guehdr*, %struct.guehdr** %12, align 8
  %91 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.guehdr*, %struct.guehdr** %12, align 8
  %93 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %92, i32 0, i32 1
  store i32 0, i32* %93, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.guehdr*, %struct.guehdr** %12, align 8
  %97 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.guehdr*, %struct.guehdr** %12, align 8
  %99 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %98, i64 1
  %100 = bitcast %struct.guehdr* %99 to i8*
  store i8* %100, i8** %15, align 8
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %164

103:                                              ; preds = %71
  %104 = load i8*, i8** %15, align 8
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %18, align 8
  %106 = load i32, i32* @GUE_FLAG_PRIV, align 4
  %107 = load %struct.guehdr*, %struct.guehdr** %12, align 8
  %108 = getelementptr inbounds %struct.guehdr, %struct.guehdr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32*, i32** %18, align 8
  store i32 0, i32* %111, align 4
  %112 = load i64, i64* @GUE_LEN_PRIV, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr i8, i8* %113, i64 %112
  store i8* %114, i8** %15, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @SKB_GSO_TUNNEL_REMCSUM, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %163

119:                                              ; preds = %103
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = call i64 @skb_checksum_start_offset(%struct.sk_buff* %120)
  store i64 %121, i64* %19, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = bitcast i8* %122 to i32*
  store i32* %123, i32** %20, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %13, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %165

130:                                              ; preds = %119
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %19, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %19, align 8
  %134 = load i64, i64* %19, align 8
  %135 = call i32 @htons(i64 %134)
  %136 = load i32*, i32** %20, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i64, i64* %19, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %138, %141
  %143 = call i32 @htons(i64 %142)
  %144 = load i32*, i32** %20, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %147 = call i32 @skb_is_gso(%struct.sk_buff* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %130
  %150 = load i64, i64* @CHECKSUM_NONE, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %149, %130
  %156 = load i32, i32* @GUE_PFLAG_REMCSUM, align 4
  %157 = load i32*, i32** %18, align 8
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  %160 = load i64, i64* @GUE_PLEN_REMCSUM, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = getelementptr i8, i8* %161, i64 %160
  store i8* %162, i8** %15, align 8
  br label %163

163:                                              ; preds = %155, %103
  br label %164

164:                                              ; preds = %163, %71
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %164, %127, %55
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @iptunnel_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @udp_flow_src_port(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
