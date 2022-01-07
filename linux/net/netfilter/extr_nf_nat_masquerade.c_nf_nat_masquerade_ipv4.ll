; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_nf_nat_masquerade_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_masquerade.c_nf_nat_masquerade_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_nat_range2 = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.net_device = type { i32, i32 }
%struct.nf_conn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.nf_conn_nat = type { i32 }
%struct.rtable = type { i32 }
%struct.TYPE_12__ = type { i32 }

@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@IP_CT_NEW = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_RELATED_REPLY = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s ate my IP address\0A\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_masquerade_ipv4(%struct.sk_buff* %0, i32 %1, %struct.nf_nat_range2* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_nat_range2*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca %struct.nf_conn_nat*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_nat_range2, align 8
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_nat_range2* %2, %struct.nf_nat_range2** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %22, i32* %12)
  store %struct.nf_conn* %23, %struct.nf_conn** %10, align 8
  %24 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %25 = icmp ne %struct.nf_conn* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @IP_CT_NEW, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @IP_CT_RELATED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @IP_CT_RELATED_REPLY, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30, %26
  %39 = phi i1 [ true, %30 ], [ true, %26 ], [ %37, %34 ]
  br label %40

40:                                               ; preds = %38, %4
  %41 = phi i1 [ false, %4 ], [ %39, %38 ]
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %46 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %57, i32* %5, align 4
  br label %118

58:                                               ; preds = %40
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %59)
  store %struct.rtable* %60, %struct.rtable** %14, align 8
  %61 = load %struct.rtable*, %struct.rtable** %14, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @rt_nexthop(%struct.rtable* %61, i32 %65)
  store i8* %66, i8** %16, align 8
  %67 = load %struct.net_device*, %struct.net_device** %9, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %70 = call i8* @inet_select_addr(%struct.net_device* %67, i8* %68, i32 %69)
  store i8* %70, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %58
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @NF_DROP, align 4
  store i32 %78, i32* %5, align 4
  br label %118

79:                                               ; preds = %58
  %80 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %81 = call %struct.nf_conn_nat* @nf_ct_nat_ext_add(%struct.nf_conn* %80)
  store %struct.nf_conn_nat* %81, %struct.nf_conn_nat** %11, align 8
  %82 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %11, align 8
  %83 = icmp ne %struct.nf_conn_nat* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %11, align 8
  %89 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %13, i32 0, i32 4
  %92 = call i32 @memset(%struct.TYPE_11__* %91, i32 0, i32 8)
  %93 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %13, i32 0, i32 3
  %94 = call i32 @memset(%struct.TYPE_11__* %93, i32 0, i32 8)
  %95 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %8, align 8
  %96 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %13, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %13, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %13, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %8, align 8
  %108 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %13, i32 0, i32 2
  store i32 %109, i32* %110, align 8
  %111 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %8, align 8
  %112 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %13, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %116 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %117 = call i32 @nf_nat_setup_info(%struct.nf_conn* %115, %struct.nf_nat_range2* %13, i32 %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %90, %73, %56
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i8* @rt_nexthop(%struct.rtable*, i32) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @inet_select_addr(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.nf_conn_nat* @nf_ct_nat_ext_add(%struct.nf_conn*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @nf_nat_setup_info(%struct.nf_conn*, %struct.nf_nat_range2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
