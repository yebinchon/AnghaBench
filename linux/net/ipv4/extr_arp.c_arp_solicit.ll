; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_solicit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_solicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, i32, i64, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.in_device = type { i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@UCAST_PROBES = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"trying to ucast probe in NUD_INVALID\0A\00", align 1
@APP_PROBES = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, %struct.sk_buff*)* @arp_solicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arp_solicit(%struct.neighbour* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.in_device*, align 8
  %13 = alloca %struct.dst_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i64 0, i64* %5, align 8
  %15 = load i32, i32* @MAX_ADDR_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %19 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %20 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %19, i32 0, i32 4
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %9, align 8
  %22 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %23 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %28 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %27, i32 0, i32 2
  %29 = call i32 @atomic_read(i32* %28)
  store i32 %29, i32* %11, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %13, align 8
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %31)
  store %struct.in_device* %32, %struct.in_device** %12, align 8
  %33 = load %struct.in_device*, %struct.in_device** %12, align 8
  %34 = icmp ne %struct.in_device* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %14, align 4
  br label %162

37:                                               ; preds = %2
  %38 = load %struct.in_device*, %struct.in_device** %12, align 8
  %39 = call i32 @IN_DEV_ARP_ANNOUNCE(%struct.in_device* %38)
  switch i32 %39, label %40 [
    i32 0, label %41
    i32 1, label %61
    i32 2, label %86
  ]

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %37, %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = call i32 @dev_net(%struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @inet_addr_type_dev_table(i32 %46, %struct.net_device* %47, i64 %51)
  %53 = load i32, i32* @RTN_LOCAL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %55, %44, %41
  br label %87

61:                                               ; preds = %37
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %87

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %5, align 8
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = call i32 @dev_net(%struct.net_device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %9, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @inet_addr_type_dev_table(i32 %71, %struct.net_device* %72, i64 %73)
  %75 = load i32, i32* @RTN_LOCAL, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load %struct.in_device*, %struct.in_device** %12, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @inet_addr_onlink(%struct.in_device* %78, i64 %79, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %87

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %65
  store i64 0, i64* %5, align 8
  br label %87

86:                                               ; preds = %37
  br label %87

87:                                               ; preds = %86, %85, %83, %64, %60
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.net_device*, %struct.net_device** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* @RT_SCOPE_LINK, align 4
  %95 = call i64 @inet_select_addr(%struct.net_device* %92, i64 %93, i32 %94)
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %91, %87
  %97 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %98 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @UCAST_PROBES, align 4
  %101 = call i64 @NEIGH_VAR(i32 %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %96
  %109 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %110 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @NUD_VALID, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %108
  %118 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %119 = load %struct.net_device*, %struct.net_device** %9, align 8
  %120 = call i32 @neigh_ha_snapshot(i32* %18, %struct.neighbour* %118, %struct.net_device* %119)
  store i32* %18, i32** %8, align 8
  br label %137

121:                                              ; preds = %96
  %122 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %123 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @APP_PROBES, align 4
  %126 = call i64 @NEIGH_VAR(i32 %124, i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %135 = call i32 @neigh_app_ns(%struct.neighbour* %134)
  store i32 1, i32* %14, align 4
  br label %162

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %117
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = icmp ne %struct.sk_buff* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load %struct.net_device*, %struct.net_device** %9, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %140
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %148)
  store %struct.dst_entry* %149, %struct.dst_entry** %13, align 8
  br label %150

150:                                              ; preds = %147, %140, %137
  %151 = load i32, i32* @ARPOP_REQUEST, align 4
  %152 = load i32, i32* @ETH_P_ARP, align 4
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.net_device*, %struct.net_device** %9, align 8
  %155 = load i64, i64* %5, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load %struct.net_device*, %struct.net_device** %9, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %161 = call i32 @arp_send_dst(i32 %151, i32 %152, i64 %153, %struct.net_device* %154, i64 %155, i32* %156, i32 %159, i32* null, %struct.dst_entry* %160)
  store i32 0, i32* %14, align 4
  br label %162

162:                                              ; preds = %150, %133, %35
  %163 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %14, align 4
  switch i32 %164, label %166 [
    i32 0, label %165
    i32 1, label %165
  ]

165:                                              ; preds = %162, %162
  ret void

166:                                              ; preds = %162
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @IN_DEV_ARP_ANNOUNCE(%struct.in_device*) #2

declare dso_local i32 @inet_addr_type_dev_table(i32, %struct.net_device*, i64) #2

declare dso_local i32 @dev_net(%struct.net_device*) #2

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #2

declare dso_local i32 @inet_addr_onlink(%struct.in_device*, i64, i64) #2

declare dso_local i64 @inet_select_addr(%struct.net_device*, i64, i32) #2

declare dso_local i64 @NEIGH_VAR(i32, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @neigh_ha_snapshot(i32*, %struct.neighbour*, %struct.net_device*) #2

declare dso_local i32 @neigh_app_ns(%struct.neighbour*) #2

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #2

declare dso_local i32 @arp_send_dst(i32, i32, i64, %struct.net_device*, i64, i32*, i32, i32*, %struct.dst_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
