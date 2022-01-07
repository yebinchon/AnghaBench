; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ebt_entry*, %struct.ebt_vlan_info* }
%struct.ebt_entry = type { i64 }
%struct.ebt_vlan_info = type { i32, i32, i64, i64, i64 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"passed entry proto %2.4X is not 802.1Q (8100)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBT_VLAN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"bitmask %2X is out of mask (%2X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"inversion flags %2X is out of mask (%2X)\0A\00", align 1
@EBT_VLAN_ID = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"id %d is out of range (1-4096)\0A\00", align 1
@EBT_VLAN_PRIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"prio %d is out of range (0-7)\0A\00", align 1
@EBT_VLAN_ENCAP = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [44 x i8] c"encap frame length %d is less than minimal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_vlan_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_vlan_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_vlan_info*, align 8
  %5 = alloca %struct.ebt_entry*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %7, align 8
  store %struct.ebt_vlan_info* %8, %struct.ebt_vlan_info** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_entry*, %struct.ebt_entry** %10, align 8
  store %struct.ebt_entry* %11, %struct.ebt_entry** %5, align 8
  %12 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_8021Q, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ntohs(i64 %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %135

27:                                               ; preds = %1
  %28 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %29 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EBT_VLAN_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %37 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EBT_VLAN_MASK, align 4
  %40 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %135

43:                                               ; preds = %27
  %44 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %45 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EBT_VLAN_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %53 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @EBT_VLAN_MASK, align 4
  %56 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %135

59:                                               ; preds = %43
  %60 = load i32, i32* @EBT_VLAN_ID, align 4
  %61 = call i64 @GET_BITMASK(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %65 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %70 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VLAN_N_VID, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %76 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %135

82:                                               ; preds = %68
  %83 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %86 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %63
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %92 = call i64 @GET_BITMASK(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %96 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i8
  %99 = zext i8 %98 to i32
  %100 = icmp sgt i32 %99, 7
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %103 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %135

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %90
  %111 = load i32, i32* @EBT_VLAN_ENCAP, align 4
  %112 = call i64 @GET_BITMASK(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %116 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @ntohs(i64 %117)
  %119 = trunc i64 %118 to i16
  %120 = zext i16 %119 to i32
  %121 = load i16, i16* @ETH_ZLEN, align 2
  %122 = zext i16 %121 to i32
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %126 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @ntohs(i64 %127)
  %129 = trunc i64 %128 to i32
  %130 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %135

133:                                              ; preds = %114
  br label %134

134:                                              ; preds = %133, %110
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %124, %101, %74, %51, %35, %18
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @GET_BITMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
