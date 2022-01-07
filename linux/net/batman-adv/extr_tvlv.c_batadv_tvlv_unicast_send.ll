; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_unicast_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_unicast_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_unicast_tvlv_packet = type { i32, i32, i64, i8*, i64, i32, i32, i32 }
%struct.batadv_tvlv_hdr = type { i8*, i8*, i8* }
%struct.batadv_orig_node = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@BATADV_UNICAST_TVLV = common dso_local global i32 0, align 4
@BATADV_COMPAT_VERSION = common dso_local global i32 0, align 4
@BATADV_TTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_tvlv_unicast_send(%struct.batadv_priv* %0, i8** %1, i8** %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.batadv_unicast_tvlv_packet*, align 8
  %16 = alloca %struct.batadv_tvlv_hdr*, align 8
  %17 = alloca %struct.batadv_orig_node*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 48, i32* %21, align 4
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %22, i8** %23)
  store %struct.batadv_orig_node* %24, %struct.batadv_orig_node** %17, align 8
  %25 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %17, align 8
  %26 = icmp ne %struct.batadv_orig_node* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  br label %111

28:                                               ; preds = %7
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 24, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* @ETH_HLEN, align 4
  %34 = load i32, i32* %21, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %20, align 4
  %37 = add i32 %35, %36
  %38 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32* null, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %18, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %108

42:                                               ; preds = %28
  %43 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %47 = load i32, i32* @ETH_HLEN, align 4
  %48 = call i32 @skb_reserve(%struct.sk_buff* %46, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %50 = load i32, i32* %20, align 4
  %51 = zext i32 %50 to i64
  %52 = add i64 48, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @skb_put(%struct.sk_buff* %49, i32 %53)
  store i8* %54, i8** %19, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = bitcast i8* %55 to %struct.batadv_unicast_tvlv_packet*
  store %struct.batadv_unicast_tvlv_packet* %56, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %57 = load i32, i32* @BATADV_UNICAST_TVLV, align 4
  %58 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %59 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @BATADV_COMPAT_VERSION, align 4
  %61 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %62 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @BATADV_TTL, align 4
  %64 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %65 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %67 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %20, align 4
  %69 = call i8* @htons(i32 %68)
  %70 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %71 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %73 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %75 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8**, i8*** %9, align 8
  %78 = call i32 @ether_addr_copy(i32 %76, i8** %77)
  %79 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %80 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8**, i8*** %10, align 8
  %83 = call i32 @ether_addr_copy(i32 %81, i8** %82)
  %84 = load %struct.batadv_unicast_tvlv_packet*, %struct.batadv_unicast_tvlv_packet** %15, align 8
  %85 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, %struct.batadv_unicast_tvlv_packet* %84, i64 1
  %86 = bitcast %struct.batadv_unicast_tvlv_packet* %85 to i8*
  store i8* %86, i8** %19, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = bitcast i8* %87 to %struct.batadv_tvlv_hdr*
  store %struct.batadv_tvlv_hdr* %88, %struct.batadv_tvlv_hdr** %16, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.batadv_tvlv_hdr*, %struct.batadv_tvlv_hdr** %16, align 8
  %91 = getelementptr inbounds %struct.batadv_tvlv_hdr, %struct.batadv_tvlv_hdr* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.batadv_tvlv_hdr*, %struct.batadv_tvlv_hdr** %16, align 8
  %94 = getelementptr inbounds %struct.batadv_tvlv_hdr, %struct.batadv_tvlv_hdr* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i8* @htons(i32 %95)
  %97 = load %struct.batadv_tvlv_hdr*, %struct.batadv_tvlv_hdr** %16, align 8
  %98 = getelementptr inbounds %struct.batadv_tvlv_hdr, %struct.batadv_tvlv_hdr* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 24
  store i8* %100, i8** %19, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @memcpy(i8* %101, i8* %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %106 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %17, align 8
  %107 = call i32 @batadv_send_skb_to_orig(%struct.sk_buff* %105, %struct.batadv_orig_node* %106, i32* null)
  br label %108

108:                                              ; preds = %42, %41
  %109 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %17, align 8
  %110 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %109)
  br label %111

111:                                              ; preds = %108, %27
  ret void
}

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i8**) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff*, %struct.batadv_orig_node*, i32*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
