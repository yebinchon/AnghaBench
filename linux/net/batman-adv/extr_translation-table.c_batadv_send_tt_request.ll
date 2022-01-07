; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_tt_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_tt_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tvlv_tt_vlan_data = type { i32, i32 }
%struct.batadv_tvlv_tt_data = type { i32, i32, i32 }
%struct.batadv_tt_req_node = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_TT_REQUEST = common dso_local global i32 0, align 4
@BATADV_TT_FULL_TABLE = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Sending TT_REQUEST to %pM [%c]\0A\00", align 1
@BATADV_CNT_TT_REQUEST_TX = common dso_local global i32 0, align 4
@BATADV_TVLV_TT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, i32, %struct.batadv_tvlv_tt_vlan_data*, i32, i32)* @batadv_send_tt_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_send_tt_request(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i32 %2, %struct.batadv_tvlv_tt_vlan_data* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_orig_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_tvlv_tt_vlan_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.batadv_tvlv_tt_data*, align 8
  %14 = alloca %struct.batadv_tt_req_node*, align 8
  %15 = alloca %struct.batadv_tvlv_tt_vlan_data*, align 8
  %16 = alloca %struct.batadv_hard_iface*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.batadv_tvlv_tt_vlan_data* %3, %struct.batadv_tvlv_tt_vlan_data** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.batadv_tvlv_tt_data* null, %struct.batadv_tvlv_tt_data** %13, align 8
  store %struct.batadv_tt_req_node* null, %struct.batadv_tt_req_node** %14, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %21 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %20)
  store %struct.batadv_hard_iface* %21, %struct.batadv_hard_iface** %16, align 8
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %16, align 8
  %23 = icmp ne %struct.batadv_hard_iface* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  br label %117

25:                                               ; preds = %6
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %27 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %28 = call %struct.batadv_tt_req_node* @batadv_tt_req_node_new(%struct.batadv_priv* %26, %struct.batadv_orig_node* %27)
  store %struct.batadv_tt_req_node* %28, %struct.batadv_tt_req_node** %14, align 8
  %29 = load %struct.batadv_tt_req_node*, %struct.batadv_tt_req_node** %14, align 8
  %30 = icmp ne %struct.batadv_tt_req_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %117

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = add i64 12, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.batadv_tvlv_tt_data* @kzalloc(i32 %38, i32 %39)
  store %struct.batadv_tvlv_tt_data* %40, %struct.batadv_tvlv_tt_data** %13, align 8
  %41 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %42 = icmp ne %struct.batadv_tvlv_tt_data* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %117

44:                                               ; preds = %32
  %45 = load i32, i32* @BATADV_TT_REQUEST, align 4
  %46 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %47 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %50 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @htons(i32 %51)
  %53 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %54 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %56 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %55, i64 1
  %57 = bitcast %struct.batadv_tvlv_tt_data* %56 to %struct.batadv_tvlv_tt_vlan_data*
  store %struct.batadv_tvlv_tt_vlan_data* %57, %struct.batadv_tvlv_tt_vlan_data** %15, align 8
  store i32 0, i32* %18, align 4
  br label %58

58:                                               ; preds = %77, %44
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %10, align 8
  %64 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, %struct.batadv_tvlv_tt_vlan_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %15, align 8
  %67 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, %struct.batadv_tvlv_tt_vlan_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %10, align 8
  %69 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, %struct.batadv_tvlv_tt_vlan_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %15, align 8
  %72 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, %struct.batadv_tvlv_tt_vlan_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %15, align 8
  %74 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, %struct.batadv_tvlv_tt_vlan_data* %73, i32 1
  store %struct.batadv_tvlv_tt_vlan_data* %74, %struct.batadv_tvlv_tt_vlan_data** %15, align 8
  %75 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %10, align 8
  %76 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, %struct.batadv_tvlv_tt_vlan_data* %75, i32 1
  store %struct.batadv_tvlv_tt_vlan_data* %76, %struct.batadv_tvlv_tt_vlan_data** %10, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %18, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* @BATADV_TT_FULL_TABLE, align 4
  %85 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %86 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %80
  %90 = load i32, i32* @BATADV_DBG_TT, align 4
  %91 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %92 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %93 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 70, i32 46
  %99 = sitofp i32 %98 to float
  %100 = call i32 @batadv_dbg(i32 %90, %struct.batadv_priv* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %94, float %99)
  %101 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %102 = load i32, i32* @BATADV_CNT_TT_REQUEST_TX, align 4
  %103 = call i32 @batadv_inc_counter(%struct.batadv_priv* %101, i32 %102)
  %104 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %105 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %16, align 8
  %106 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %111 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BATADV_TVLV_TT, align 4
  %114 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @batadv_tvlv_unicast_send(%struct.batadv_priv* %104, i32 %109, i32 %112, i32 %113, i32 1, %struct.batadv_tvlv_tt_data* %114, i32 %115)
  store i32 1, i32* %17, align 4
  br label %117

117:                                              ; preds = %89, %43, %31, %24
  %118 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %16, align 8
  %119 = icmp ne %struct.batadv_hard_iface* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %16, align 8
  %122 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %123
  %127 = load %struct.batadv_tt_req_node*, %struct.batadv_tt_req_node** %14, align 8
  %128 = icmp ne %struct.batadv_tt_req_node* %127, null
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %131 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @spin_lock_bh(i32* %132)
  %134 = load %struct.batadv_tt_req_node*, %struct.batadv_tt_req_node** %14, align 8
  %135 = getelementptr inbounds %struct.batadv_tt_req_node, %struct.batadv_tt_req_node* %134, i32 0, i32 0
  %136 = call i32 @hlist_unhashed(i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %129
  %139 = load %struct.batadv_tt_req_node*, %struct.batadv_tt_req_node** %14, align 8
  %140 = getelementptr inbounds %struct.batadv_tt_req_node, %struct.batadv_tt_req_node* %139, i32 0, i32 0
  %141 = call i32 @hlist_del_init(i32* %140)
  %142 = load %struct.batadv_tt_req_node*, %struct.batadv_tt_req_node** %14, align 8
  %143 = call i32 @batadv_tt_req_node_put(%struct.batadv_tt_req_node* %142)
  br label %144

144:                                              ; preds = %138, %129
  %145 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %146 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_bh(i32* %147)
  br label %149

149:                                              ; preds = %144, %126, %123
  %150 = load %struct.batadv_tt_req_node*, %struct.batadv_tt_req_node** %14, align 8
  %151 = icmp ne %struct.batadv_tt_req_node* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.batadv_tt_req_node*, %struct.batadv_tt_req_node** %14, align 8
  %154 = call i32 @batadv_tt_req_node_put(%struct.batadv_tt_req_node* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %157 = call i32 @kfree(%struct.batadv_tvlv_tt_data* %156)
  %158 = load i32, i32* %17, align 4
  ret i32 %158
}

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_tt_req_node* @batadv_tt_req_node_new(%struct.batadv_priv*, %struct.batadv_orig_node*) #1

declare dso_local %struct.batadv_tvlv_tt_data* @kzalloc(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, float) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_tvlv_unicast_send(%struct.batadv_priv*, i32, i32, i32, i32, %struct.batadv_tvlv_tt_data*, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @batadv_tt_req_node_put(%struct.batadv_tt_req_node*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.batadv_tvlv_tt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
