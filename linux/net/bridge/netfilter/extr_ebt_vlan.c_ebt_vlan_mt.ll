; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8 }
%struct.xt_action_param = type { %struct.ebt_vlan_info* }
%struct.ebt_vlan_info = type { i32 }
%struct.vlan_hdr = type { i8, i32 }

@VLAN_VID_MASK = common dso_local global i16 0, align 2
@EBT_VLAN_ID = common dso_local global i32 0, align 4
@EBT_VLAN_PRIO = common dso_local global i32 0, align 4
@EBT_VLAN_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_vlan_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_vlan_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_vlan_info*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.vlan_hdr*, align 8
  %12 = alloca %struct.vlan_hdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %13 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %14 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %13, i32 0, i32 0
  %15 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %14, align 8
  store %struct.ebt_vlan_info* %15, %struct.ebt_vlan_info** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call zeroext i16 @skb_vlan_tag_get(%struct.sk_buff* %20)
  store i16 %21, i16* %7, align 2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %10, align 1
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff* %26, i32 0, i32 8, %struct.vlan_hdr* %12)
  store %struct.vlan_hdr* %27, %struct.vlan_hdr** %11, align 8
  %28 = load %struct.vlan_hdr*, %struct.vlan_hdr** %11, align 8
  %29 = icmp eq %struct.vlan_hdr* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %76

31:                                               ; preds = %25
  %32 = load %struct.vlan_hdr*, %struct.vlan_hdr** %11, align 8
  %33 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call zeroext i16 @ntohs(i32 %34)
  store i16 %35, i16* %7, align 2
  %36 = load %struct.vlan_hdr*, %struct.vlan_hdr** %11, align 8
  %37 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 4
  store i8 %38, i8* %10, align 1
  br label %39

39:                                               ; preds = %31, %19
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @VLAN_VID_MASK, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %8, align 2
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = ashr i32 %47, 13
  %49 = and i32 %48, 7
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  %51 = load i32, i32* @EBT_VLAN_ID, align 4
  %52 = call i64 @GET_BITMASK(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load i16, i16* %8, align 2
  %56 = trunc i16 %55 to i8
  %57 = load i32, i32* @EBT_VLAN_ID, align 4
  %58 = call i32 @EXIT_ON_MISMATCH(i8 zeroext %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %39
  %60 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %61 = call i64 @GET_BITMASK(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8, i8* %9, align 1
  %65 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %66 = call i32 @EXIT_ON_MISMATCH(i8 zeroext %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @EBT_VLAN_ENCAP, align 4
  %69 = call i64 @GET_BITMASK(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i8, i8* %10, align 1
  %73 = load i32, i32* @EBT_VLAN_ENCAP, align 4
  %74 = call i32 @EXIT_ON_MISMATCH(i8 zeroext %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %67
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %30
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local zeroext i16 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.vlan_hdr*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i64 @GET_BITMASK(i32) #1

declare dso_local i32 @EXIT_ON_MISMATCH(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
