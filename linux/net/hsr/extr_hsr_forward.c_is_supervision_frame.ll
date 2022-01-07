; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_is_supervision_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_is_supervision_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i64, i32 }
%struct.hsr_sup_tag = type { i64, i32 }
%struct.hsrv1_ethhdr_sp = type { %struct.hsr_sup_tag, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hsrv0_ethhdr_sp = type { %struct.hsr_sup_tag }

@ETH_P_PRP = common dso_local global i32 0, align 4
@ETH_P_HSR = common dso_local global i32 0, align 4
@HSR_TLV_ANNOUNCE = common dso_local global i64 0, align 8
@HSR_TLV_LIFE_CHECK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsr_priv*, %struct.sk_buff*)* @is_supervision_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_supervision_frame(%struct.hsr_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hsr_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.hsr_sup_tag*, align 8
  %8 = alloca %struct.hsrv1_ethhdr_sp*, align 8
  store %struct.hsr_priv* %0, %struct.hsr_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call i32 @skb_mac_header_was_set(%struct.sk_buff* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @skb_mac_header(%struct.sk_buff* %15)
  %17 = inttoptr i64 %16 to %struct.ethhdr*
  store %struct.ethhdr* %17, %struct.ethhdr** %6, align 8
  %18 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %22 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ether_addr_equal(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

27:                                               ; preds = %2
  %28 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ETH_P_PRP, align 4
  %32 = call i64 @htons(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_HSR, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %95

42:                                               ; preds = %34, %27
  %43 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %44 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @ETH_P_HSR, align 4
  %47 = call i64 @htons(i32 %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i64 @skb_mac_header(%struct.sk_buff* %50)
  %52 = inttoptr i64 %51 to %struct.hsrv1_ethhdr_sp*
  store %struct.hsrv1_ethhdr_sp* %52, %struct.hsrv1_ethhdr_sp** %8, align 8
  %53 = load %struct.hsrv1_ethhdr_sp*, %struct.hsrv1_ethhdr_sp** %8, align 8
  %54 = getelementptr inbounds %struct.hsrv1_ethhdr_sp, %struct.hsrv1_ethhdr_sp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @ETH_P_PRP, align 4
  %58 = call i64 @htons(i32 %57)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %95

61:                                               ; preds = %49
  %62 = load %struct.hsrv1_ethhdr_sp*, %struct.hsrv1_ethhdr_sp** %8, align 8
  %63 = getelementptr inbounds %struct.hsrv1_ethhdr_sp, %struct.hsrv1_ethhdr_sp* %62, i32 0, i32 0
  store %struct.hsr_sup_tag* %63, %struct.hsr_sup_tag** %7, align 8
  br label %69

64:                                               ; preds = %42
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i64 @skb_mac_header(%struct.sk_buff* %65)
  %67 = inttoptr i64 %66 to %struct.hsrv0_ethhdr_sp*
  %68 = getelementptr inbounds %struct.hsrv0_ethhdr_sp, %struct.hsrv0_ethhdr_sp* %67, i32 0, i32 0
  store %struct.hsr_sup_tag* %68, %struct.hsr_sup_tag** %7, align 8
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %7, align 8
  %71 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HSR_TLV_ANNOUNCE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %7, align 8
  %77 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HSR_TLV_LIFE_CHECK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %95

82:                                               ; preds = %75, %69
  %83 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %7, align 8
  %84 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 12
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.hsr_sup_tag*, %struct.hsr_sup_tag** %7, align 8
  %89 = getelementptr inbounds %struct.hsr_sup_tag, %struct.hsr_sup_tag* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %91, 4
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %95

94:                                               ; preds = %87, %82
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %93, %81, %60, %41, %26
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @skb_mac_header_was_set(%struct.sk_buff*) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
