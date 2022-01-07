; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_node_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_node_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tvlv_gateway_data = type { i32, i32 }
%struct.batadv_gw_node = type { i32, i32, i32 }

@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Gateway bandwidth of originator %pM changed from %u.%u/%u.%u MBit to %u.%u/%u.%u MBit\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Gateway %pM removed from gateway list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_gw_node_update(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, %struct.batadv_tvlv_gateway_data* %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_orig_node*, align 8
  %6 = alloca %struct.batadv_tvlv_gateway_data*, align 8
  %7 = alloca %struct.batadv_gw_node*, align 8
  %8 = alloca %struct.batadv_gw_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %5, align 8
  store %struct.batadv_tvlv_gateway_data* %2, %struct.batadv_tvlv_gateway_data** %6, align 8
  store %struct.batadv_gw_node* null, %struct.batadv_gw_node** %8, align 8
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %10 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %14 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %15 = call %struct.batadv_gw_node* @batadv_gw_node_get(%struct.batadv_priv* %13, %struct.batadv_orig_node* %14)
  store %struct.batadv_gw_node* %15, %struct.batadv_gw_node** %7, align 8
  %16 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %17 = icmp ne %struct.batadv_gw_node* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %20 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %21 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %22 = call i32 @batadv_gw_node_add(%struct.batadv_priv* %19, %struct.batadv_orig_node* %20, %struct.batadv_tvlv_gateway_data* %21)
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %24 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  br label %157

27:                                               ; preds = %3
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %29 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %33 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %36 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %27
  %41 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %42 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %45 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %157

50:                                               ; preds = %40, %27
  %51 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %52 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %53 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %54 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %57 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 10
  %60 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %61 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %62, 10
  %64 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %65 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 10
  %68 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %69 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %70, 10
  %72 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %73 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  %76 = sdiv i32 %75, 10
  %77 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %78 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ntohl(i32 %79)
  %81 = srem i32 %80, 10
  %82 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %83 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohl(i32 %84)
  %86 = sdiv i32 %85, 10
  %87 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %88 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohl(i32 %89)
  %91 = srem i32 %90, 10
  %92 = call i32 (i32, %struct.batadv_priv*, i8*, i32, ...) @batadv_dbg(i32 %51, %struct.batadv_priv* %52, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59, i32 %63, i32 %67, i32 %71, i32 %76, i32 %81, i32 %86, i32 %91)
  %93 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %94 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohl(i32 %95)
  %97 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %98 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %100 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ntohl(i32 %101)
  %103 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %104 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %106 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ntohl(i32 %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %156

110:                                              ; preds = %50
  %111 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %112 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %113 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %114 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, %struct.batadv_priv*, i8*, i32, ...) @batadv_dbg(i32 %111, %struct.batadv_priv* %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %118 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 @spin_lock_bh(i32* %119)
  %121 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %122 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %121, i32 0, i32 2
  %123 = call i32 @hlist_unhashed(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %110
  %126 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %127 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %126, i32 0, i32 2
  %128 = call i32 @hlist_del_init_rcu(i32* %127)
  %129 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %130 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %129)
  %131 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %132 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %125, %110
  %137 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %138 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock_bh(i32* %139)
  %141 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %142 = call %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv* %141)
  store %struct.batadv_gw_node* %142, %struct.batadv_gw_node** %8, align 8
  %143 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %144 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %145 = icmp eq %struct.batadv_gw_node* %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %148 = call i32 @batadv_gw_reselect(%struct.batadv_priv* %147)
  br label %149

149:                                              ; preds = %146, %136
  %150 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %151 = icmp ne %struct.batadv_gw_node* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %154 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %153)
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %155, %50
  br label %157

157:                                              ; preds = %156, %49, %18
  %158 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %159 = icmp ne %struct.batadv_gw_node* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %162 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %161)
  br label %163

163:                                              ; preds = %160, %157
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_node_get(%struct.batadv_priv*, %struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_gw_node_add(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_gateway_data*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, ...) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_gw_reselect(%struct.batadv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
