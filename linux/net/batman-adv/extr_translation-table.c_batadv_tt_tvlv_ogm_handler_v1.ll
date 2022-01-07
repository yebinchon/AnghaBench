; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_tvlv_ogm_handler_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_tvlv_ogm_handler_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tvlv_tt_vlan_data = type { i32 }
%struct.batadv_tvlv_tt_change = type { i32 }
%struct.batadv_tvlv_tt_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i8*, i32)* @batadv_tt_tvlv_ogm_handler_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_tvlv_ogm_handler_v1(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.batadv_tvlv_tt_vlan_data*, align 8
  %12 = alloca %struct.batadv_tvlv_tt_change*, align 8
  %13 = alloca %struct.batadv_tvlv_tt_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %66

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.batadv_tvlv_tt_data*
  store %struct.batadv_tvlv_tt_data* %22, %struct.batadv_tvlv_tt_data** %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %28 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohs(i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %66

38:                                               ; preds = %20
  %39 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %40 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %39, i64 1
  %41 = bitcast %struct.batadv_tvlv_tt_data* %40 to %struct.batadv_tvlv_tt_vlan_data*
  store %struct.batadv_tvlv_tt_vlan_data* %41, %struct.batadv_tvlv_tt_vlan_data** %11, align 8
  %42 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %11, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.batadv_tvlv_tt_vlan_data, %struct.batadv_tvlv_tt_vlan_data* %42, i64 %44
  %46 = bitcast %struct.batadv_tvlv_tt_vlan_data* %45 to %struct.batadv_tvlv_tt_change*
  store %struct.batadv_tvlv_tt_change* %46, %struct.batadv_tvlv_tt_change** %12, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @batadv_tt_entries(i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %57 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %58 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %13, align 8
  %63 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @batadv_tt_update_orig(%struct.batadv_priv* %56, %struct.batadv_orig_node* %57, %struct.batadv_tvlv_tt_vlan_data* %58, i32 %59, %struct.batadv_tvlv_tt_change* %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %38, %37, %19
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @batadv_tt_entries(i32) #1

declare dso_local i32 @batadv_tt_update_orig(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_tt_vlan_data*, i32, %struct.batadv_tvlv_tt_change*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
