; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_gre.c_gre_pkt_to_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_gre.c_gre_pkt_to_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.pptp_gre_header = type { i32, i64, i32 }
%struct.gre_base_hdr = type { i32, i64, i32 }

@GRE_VERSION = common dso_local global i32 0, align 4
@GRE_VERSION_1 = common dso_local global i32 0, align 4
@GRE_PROTO_PPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unsupported GRE proto(0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gre_pkt_to_tuple(%struct.sk_buff* %0, i32 %1, %struct.net* %2, %struct.nf_conntrack_tuple* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca %struct.pptp_gre_header*, align 8
  %11 = alloca %struct.pptp_gre_header, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gre_base_hdr*, align 8
  %14 = alloca %struct.gre_base_hdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net* %2, %struct.net** %8, align 8
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = bitcast %struct.gre_base_hdr* %14 to %struct.pptp_gre_header*
  %18 = call %struct.pptp_gre_header* @skb_header_pointer(%struct.sk_buff* %15, i32 %16, i32 24, %struct.pptp_gre_header* %17)
  %19 = bitcast %struct.pptp_gre_header* %18 to %struct.gre_base_hdr*
  store %struct.gre_base_hdr* %19, %struct.gre_base_hdr** %13, align 8
  %20 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %13, align 8
  %21 = icmp ne %struct.gre_base_hdr* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %13, align 8
  %24 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GRE_VERSION, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @GRE_VERSION_1, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22, %4
  %31 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %36 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  store i32 1, i32* %5, align 4
  br label %76

39:                                               ; preds = %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.pptp_gre_header* @skb_header_pointer(%struct.sk_buff* %40, i32 %41, i32 8, %struct.pptp_gre_header* %11)
  store %struct.pptp_gre_header* %42, %struct.pptp_gre_header** %10, align 8
  %43 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %44 = icmp ne %struct.pptp_gre_header* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %76

46:                                               ; preds = %39
  %47 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %13, align 8
  %48 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GRE_PROTO_PPP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.gre_base_hdr*, %struct.gre_base_hdr** %13, align 8
  %54 = getelementptr inbounds %struct.gre_base_hdr, %struct.gre_base_hdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ntohs(i64 %55)
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %5, align 4
  br label %76

58:                                               ; preds = %46
  %59 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %60 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %63 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 8
  %67 = load %struct.net*, %struct.net** %8, align 8
  %68 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %69 = call i32 @gre_keymap_lookup(%struct.net* %67, %struct.nf_conntrack_tuple* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %72 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 8
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %58, %52, %45, %30
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.pptp_gre_header* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.pptp_gre_header*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @gre_keymap_lookup(%struct.net*, %struct.nf_conntrack_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
