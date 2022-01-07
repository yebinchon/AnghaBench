; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_update_orig.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_update_orig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32, i32, i32, i32 }
%struct.batadv_tvlv_tt_change = type { i32 }
%struct.batadv_tvlv_tt_vlan_data = type { i32 }

@BATADV_ORIG_CAPA_HAS_TT = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"TT inconsistency for %pM. Need to retrieve the correct information (ttvn: %u last_ttvn: %u num_changes: %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, i8*, i32, %struct.batadv_tvlv_tt_change*, i32, i32)* @batadv_tt_update_orig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_update_orig(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i8* %2, i32 %3, %struct.batadv_tvlv_tt_change* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.batadv_orig_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.batadv_tvlv_tt_change*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.batadv_tvlv_tt_vlan_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %8, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.batadv_tvlv_tt_change* %4, %struct.batadv_tvlv_tt_change** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %20 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %19, i32 0, i32 3
  %21 = call i32 @atomic_read(i32* %20)
  store i32 %21, i32* %15, align 4
  store i32 1, i32* %17, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.batadv_tvlv_tt_vlan_data*
  store %struct.batadv_tvlv_tt_vlan_data* %23, %struct.batadv_tvlv_tt_vlan_data** %16, align 8
  %24 = load i32, i32* @BATADV_ORIG_CAPA_HAS_TT, align 4
  %25 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %26 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %25, i32 0, i32 2
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %14, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %7
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sub nsw i32 %34, %35
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %65

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %17, align 4
  br label %79

42:                                               ; preds = %38
  %43 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %44 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %43, i32 0, i32 1
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %47 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %12, align 8
  %51 = call i32 @batadv_tt_update_changes(%struct.batadv_priv* %46, %struct.batadv_orig_node* %47, i32 %48, i32 %49, %struct.batadv_tvlv_tt_change* %50)
  %52 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %53 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %54 = call i32 @batadv_tt_global_update_crc(%struct.batadv_priv* %52, %struct.batadv_orig_node* %53)
  %55 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %56 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %59 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %16, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @batadv_tt_global_check_crc(%struct.batadv_orig_node* %58, %struct.batadv_tvlv_tt_vlan_data* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %42
  br label %79

64:                                               ; preds = %42
  br label %97

65:                                               ; preds = %33
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %74 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %16, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @batadv_tt_global_check_crc(%struct.batadv_orig_node* %73, %struct.batadv_tvlv_tt_vlan_data* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %72, %68, %65
  br label %79

79:                                               ; preds = %78, %63, %41
  %80 = load i32, i32* @BATADV_DBG_TT, align 4
  %81 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %82 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %83 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @batadv_dbg(i32 %80, %struct.batadv_priv* %81, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %90 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.batadv_tvlv_tt_vlan_data*, %struct.batadv_tvlv_tt_vlan_data** %16, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @batadv_send_tt_request(%struct.batadv_priv* %89, %struct.batadv_orig_node* %90, i32 %91, %struct.batadv_tvlv_tt_vlan_data* %92, i32 %93, i32 %94)
  br label %97

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %79, %96, %64
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_tt_update_changes(%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i32, %struct.batadv_tvlv_tt_change*) #1

declare dso_local i32 @batadv_tt_global_update_crc(%struct.batadv_priv*, %struct.batadv_orig_node*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_tt_global_check_crc(%struct.batadv_orig_node*, %struct.batadv_tvlv_tt_vlan_data*, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @batadv_send_tt_request(%struct.batadv_priv*, %struct.batadv_orig_node*, i32, %struct.batadv_tvlv_tt_vlan_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
