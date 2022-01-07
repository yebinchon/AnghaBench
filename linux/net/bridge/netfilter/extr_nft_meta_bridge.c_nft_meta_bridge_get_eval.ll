; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_meta_bridge.c_nft_meta_bridge_get_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_meta_bridge.c_nft_meta_bridge_get_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_meta = type { i64, i32 }
%struct.net_device = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_meta_bridge_get_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_meta_bridge_get_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_meta*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %14 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %15 = call %struct.nft_meta* @nft_expr_priv(%struct.nft_expr* %14)
  store %struct.nft_meta* %15, %struct.nft_meta** %7, align 8
  %16 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %17 = call %struct.net_device* @nft_in(%struct.nft_pktinfo* %16)
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %19 = call %struct.net_device* @nft_out(%struct.nft_pktinfo* %18)
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %21 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.nft_meta*, %struct.nft_meta** %7, align 8
  %24 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %10, align 8
  %27 = load %struct.nft_meta*, %struct.nft_meta** %7, align 8
  %28 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %69 [
    i32 131, label %30
    i32 128, label %33
    i32 130, label %36
    i32 129, label %52
  ]

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call %struct.net_device* @nft_meta_get_bridge(%struct.net_device* %31)
  store %struct.net_device* %32, %struct.net_device** %11, align 8
  br label %73

33:                                               ; preds = %3
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = call %struct.net_device* @nft_meta_get_bridge(%struct.net_device* %34)
  store %struct.net_device* %35, %struct.net_device** %11, align 8
  br label %73

36:                                               ; preds = %3
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = call %struct.net_device* @nft_meta_get_bridge(%struct.net_device* %37)
  store %struct.net_device* %38, %struct.net_device** %11, align 8
  %39 = load %struct.net_device*, %struct.net_device** %11, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %11, align 8
  %43 = call i32 @br_vlan_enabled(%struct.net_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %36
  br label %87

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = call i32 @br_vlan_get_pvid_rcu(%struct.net_device* %47, i32* %12)
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @nft_reg_store16(i32* %49, i32 %50)
  br label %92

52:                                               ; preds = %3
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = call %struct.net_device* @nft_meta_get_bridge(%struct.net_device* %53)
  store %struct.net_device* %54, %struct.net_device** %11, align 8
  %55 = load %struct.net_device*, %struct.net_device** %11, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %11, align 8
  %59 = call i32 @br_vlan_enabled(%struct.net_device* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %52
  br label %87

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %11, align 8
  %64 = call i32 @br_vlan_get_proto(%struct.net_device* %63, i32* %13)
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @htons(i32 %66)
  %68 = call i32 @nft_reg_store16(i32* %65, i32 %67)
  br label %92

69:                                               ; preds = %3
  %70 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %71 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %72 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  call void @nft_meta_get_eval(%struct.nft_expr* %70, %struct.nft_regs* %71, %struct.nft_pktinfo* %72)
  br label %92

73:                                               ; preds = %33, %30
  %74 = load i32*, i32** %10, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = icmp ne %struct.net_device* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.net_device*, %struct.net_device** %11, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  br label %83

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i8* [ %81, %78 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %82 ]
  %85 = load i32, i32* @IFNAMSIZ, align 4
  %86 = call i32 @strncpy(i8* %75, i8* %84, i32 %85)
  br label %92

87:                                               ; preds = %61, %45
  %88 = load i32, i32* @NFT_BREAK, align 4
  %89 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %90 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %83, %69, %62, %46
  ret void
}

declare dso_local %struct.nft_meta* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local %struct.net_device* @nft_in(%struct.nft_pktinfo*) #1

declare dso_local %struct.net_device* @nft_out(%struct.nft_pktinfo*) #1

declare dso_local %struct.net_device* @nft_meta_get_bridge(%struct.net_device*) #1

declare dso_local i32 @br_vlan_enabled(%struct.net_device*) #1

declare dso_local i32 @br_vlan_get_pvid_rcu(%struct.net_device*, i32*) #1

declare dso_local i32 @nft_reg_store16(i32*, i32) #1

declare dso_local i32 @br_vlan_get_proto(%struct.net_device*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local void @nft_meta_get_eval(%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
