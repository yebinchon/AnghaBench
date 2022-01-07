; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_tvlv_ogm_handler_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_tvlv_ogm_handler_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tvlv_gateway_data = type { i64, i64 }

@BATADV_TVLV_HANDLER_OGM_CIFNOTFND = common dso_local global i32 0, align 4
@BATADV_GW_MODE_CLIENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i8*, i32)* @batadv_gw_tvlv_ogm_handler_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_gw_tvlv_ogm_handler_v1(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.batadv_tvlv_gateway_data, align 8
  %12 = alloca %struct.batadv_tvlv_gateway_data*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @BATADV_TVLV_HANDLER_OGM_CIFNOTFND, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %5
  %22 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %46

24:                                               ; preds = %17
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.batadv_tvlv_gateway_data*
  store %struct.batadv_tvlv_gateway_data* %26, %struct.batadv_tvlv_gateway_data** %12, align 8
  %27 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %12, align 8
  %28 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.batadv_tvlv_gateway_data*, %struct.batadv_tvlv_gateway_data** %12, align 8
  %32 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %24
  %43 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %48 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %49 = call i32 @batadv_gw_node_update(%struct.batadv_priv* %47, %struct.batadv_orig_node* %48, %struct.batadv_tvlv_gateway_data* %11)
  %50 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %11, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %55 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i64 @atomic_read(i32* %56)
  %58 = load i64, i64* @BATADV_GW_MODE_CLIENT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %62 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %63 = call i32 @batadv_gw_check_election(%struct.batadv_priv* %61, %struct.batadv_orig_node* %62)
  br label %64

64:                                               ; preds = %60, %53, %46
  ret void
}

declare dso_local i32 @batadv_gw_node_update(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_gateway_data*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @batadv_gw_check_election(%struct.batadv_priv*, %struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
