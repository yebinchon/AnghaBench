; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_forward_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_forward_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_neigh_node = type { i32 }
%struct.batadv_dat_candidate = type { i64, i32 }

@BATADV_DBG_DAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DHT_SEND for %pI4\0A\00", align 1
@BATADV_DAT_CANDIDATES_NUM = common dso_local global i32 0, align 4
@BATADV_DAT_CANDIDATE_NOT_FOUND = common dso_local global i64 0, align 8
@BATADV_IF_DEFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@BATADV_CNT_DAT_GET_TX = common dso_local global i32 0, align 4
@BATADV_CNT_DAT_PUT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, i32, i16, i32)* @batadv_dat_forward_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_dat_forward_data(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.batadv_neigh_node*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.batadv_dat_candidate*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %14, align 8
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i16, i16* %9, align 2
  %20 = call %struct.batadv_dat_candidate* @batadv_dat_select_candidates(%struct.batadv_priv* %17, i32 %18, i16 zeroext %19)
  store %struct.batadv_dat_candidate* %20, %struct.batadv_dat_candidate** %16, align 8
  %21 = load %struct.batadv_dat_candidate*, %struct.batadv_dat_candidate** %16, align 8
  %22 = icmp ne %struct.batadv_dat_candidate* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %106

24:                                               ; preds = %5
  %25 = load i32, i32* @BATADV_DBG_DAT, align 4
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %27 = call i32 @batadv_dbg(i32 %25, %struct.batadv_priv* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %102, %24
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @BATADV_DAT_CANDIDATES_NUM, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %105

32:                                               ; preds = %28
  %33 = load %struct.batadv_dat_candidate*, %struct.batadv_dat_candidate** %16, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %33, i64 %35
  %37 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BATADV_DAT_CANDIDATE_NOT_FOUND, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %102

42:                                               ; preds = %32
  %43 = load %struct.batadv_dat_candidate*, %struct.batadv_dat_candidate** %16, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %43, i64 %45
  %47 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %50 = call %struct.batadv_neigh_node* @batadv_orig_router_get(i32 %48, i32 %49)
  store %struct.batadv_neigh_node* %50, %struct.batadv_neigh_node** %14, align 8
  %51 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %14, align 8
  %52 = icmp ne %struct.batadv_neigh_node* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %94

54:                                               ; preds = %42
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call %struct.sk_buff* @pskb_copy_for_clone(%struct.sk_buff* %55, i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %15, align 8
  %58 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %60 = load %struct.batadv_dat_candidate*, %struct.batadv_dat_candidate** %16, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %60, i64 %62
  %64 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @batadv_send_skb_prepare_unicast_4addr(%struct.batadv_priv* %58, %struct.sk_buff* %59, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %54
  %70 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  br label %91

72:                                               ; preds = %54
  %73 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %74 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %14, align 8
  %75 = call i32 @batadv_send_unicast_skb(%struct.sk_buff* %73, %struct.batadv_neigh_node* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  switch i32 %80, label %89 [
    i32 129, label %81
    i32 128, label %85
  ]

81:                                               ; preds = %79
  %82 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %83 = load i32, i32* @BATADV_CNT_DAT_GET_TX, align 4
  %84 = call i32 @batadv_inc_counter(%struct.batadv_priv* %82, i32 %83)
  br label %89

85:                                               ; preds = %79
  %86 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %87 = load i32, i32* @BATADV_CNT_DAT_PUT_TX, align 4
  %88 = call i32 @batadv_inc_counter(%struct.batadv_priv* %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %85, %81
  store i32 1, i32* %12, align 4
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %14, align 8
  %93 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %92)
  br label %94

94:                                               ; preds = %91, %53
  %95 = load %struct.batadv_dat_candidate*, %struct.batadv_dat_candidate** %16, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %95, i64 %97
  %99 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @batadv_orig_node_put(i32 %100)
  br label %102

102:                                              ; preds = %94, %41
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %28

105:                                              ; preds = %28
  br label %106

106:                                              ; preds = %105, %23
  %107 = load %struct.batadv_dat_candidate*, %struct.batadv_dat_candidate** %16, align 8
  %108 = call i32 @kfree(%struct.batadv_dat_candidate* %107)
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local %struct.batadv_dat_candidate* @batadv_dat_select_candidates(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*) #1

declare dso_local %struct.batadv_neigh_node* @batadv_orig_router_get(i32, i32) #1

declare dso_local %struct.sk_buff* @pskb_copy_for_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_send_skb_prepare_unicast_4addr(%struct.batadv_priv*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @batadv_send_unicast_skb(%struct.sk_buff*, %struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_orig_node_put(i32) #1

declare dso_local i32 @kfree(%struct.batadv_dat_candidate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
