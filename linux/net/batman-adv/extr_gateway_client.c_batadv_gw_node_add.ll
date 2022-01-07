; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_node_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_node_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.batadv_orig_node = type { i32, i32 }
%struct.batadv_tvlv_gateway_data = type { i64, i64 }
%struct.batadv_gw_node = type { i32, i32, i32, i32, %struct.batadv_orig_node* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Found new gateway %pM -> gw bandwidth: %u.%u/%u.%u MBit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_gateway_data*)* @batadv_gw_node_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_gw_node_add(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, %struct.batadv_tvlv_gateway_data* %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_orig_node*, align 8
  %6 = alloca %struct.batadv_tvlv_gateway_data*, align 8
  %7 = alloca %struct.batadv_gw_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %5, align 8
  store %struct.batadv_tvlv_gateway_data* %2, %struct.batadv_tvlv_gateway_data** %6, align 8
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %9 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %13 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %90

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.batadv_gw_node* @kzalloc(i32 24, i32 %18)
  store %struct.batadv_gw_node* %19, %struct.batadv_gw_node** %7, align 8
  %20 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %21 = icmp ne %struct.batadv_gw_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %90

23:                                               ; preds = %17
  %24 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %25 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %24, i32 0, i32 3
  %26 = call i32 @kref_init(i32* %25)
  %27 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %28 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %27, i32 0, i32 2
  %29 = call i32 @INIT_HLIST_NODE(i32* %28)
  %30 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %31 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %30, i32 0, i32 1
  %32 = call i32 @kref_get(i32* %31)
  %33 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %34 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %35 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %34, i32 0, i32 4
  store %struct.batadv_orig_node* %33, %struct.batadv_orig_node** %35, align 8
  %36 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %37 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ntohl(i64 %38)
  %40 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %41 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %43 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ntohl(i64 %44)
  %46 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %47 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %49 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %48, i32 0, i32 3
  %50 = call i32 @kref_get(i32* %49)
  %51 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %52 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %51, i32 0, i32 2
  %53 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %54 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @hlist_add_head_rcu(i32* %52, i32* %55)
  %57 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %58 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %63 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %64 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %65 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %68 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ntohl(i64 %69)
  %71 = sdiv i32 %70, 10
  %72 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %73 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ntohl(i64 %74)
  %76 = srem i32 %75, 10
  %77 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %78 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ntohl(i64 %79)
  %81 = sdiv i32 %80, 10
  %82 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %6, align 8
  %83 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ntohl(i64 %84)
  %86 = srem i32 %85, 10
  %87 = call i32 @batadv_dbg(i32 %62, %struct.batadv_priv* %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %71, i32 %76, i32 %81, i32 %86)
  %88 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %89 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %88)
  br label %90

90:                                               ; preds = %23, %22, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.batadv_gw_node* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
