; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_gtk_rekey_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_gtk_rekey_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_key = type { %struct.ieee80211_key_conf }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_MFP_DISABLED = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_RX_MGMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_key_conf* @ieee80211_gtk_rekey_add(%struct.ieee80211_vif* %0, %struct.ieee80211_key_conf* %1) #0 {
  %3 = alloca %struct.ieee80211_key_conf*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_key*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %10)
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %7, align 8
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ieee80211_key_conf* @ERR_PTR(i32 %25)
  store %struct.ieee80211_key_conf* %26, %struct.ieee80211_key_conf** %3, align 8
  br label %87

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ieee80211_key_conf* @ERR_PTR(i32 %38)
  store %struct.ieee80211_key_conf* %39, %struct.ieee80211_key_conf** %3, align 8
  br label %87

40:                                               ; preds = %27
  %41 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ieee80211_key* @ieee80211_key_alloc(i32 %43, i32 %46, i32 %49, i32 %52, i32 0, i32* null, i32* null)
  store %struct.ieee80211_key* %53, %struct.ieee80211_key** %8, align 8
  %54 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %55 = call i64 @IS_ERR(%struct.ieee80211_key* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %59 = call %struct.ieee80211_key_conf* @ERR_CAST(%struct.ieee80211_key* %58)
  store %struct.ieee80211_key_conf* %59, %struct.ieee80211_key_conf** %3, align 8
  br label %87

60:                                               ; preds = %40
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_MFP_DISABLED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %70 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %60
  %76 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %78 = call i32 @ieee80211_key_link(%struct.ieee80211_key* %76, %struct.ieee80211_sub_if_data* %77, i32* null)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = call %struct.ieee80211_key_conf* @ERR_PTR(i32 %82)
  store %struct.ieee80211_key_conf* %83, %struct.ieee80211_key_conf** %3, align 8
  br label %87

84:                                               ; preds = %75
  %85 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %85, i32 0, i32 0
  store %struct.ieee80211_key_conf* %86, %struct.ieee80211_key_conf** %3, align 8
  br label %87

87:                                               ; preds = %84, %81, %57, %36, %23
  %88 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %3, align 8
  ret %struct.ieee80211_key_conf* %88
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_key_conf* @ERR_PTR(i32) #1

declare dso_local %struct.ieee80211_key* @ieee80211_key_alloc(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_key*) #1

declare dso_local %struct.ieee80211_key_conf* @ERR_CAST(%struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_link(%struct.ieee80211_key*, %struct.ieee80211_sub_if_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
