; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_add_vendor_ies.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_add_vendor_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64*, i64 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_add_vendor_ies(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %12, %struct.ieee80211_if_mesh** %6, align 8
  %13 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %60

23:                                               ; preds = %17
  %24 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @ieee80211_ie_split_vendor(i64* %26, i64 %29, i32 0)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %23
  %37 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %8, align 8
  %42 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64* %46, i64** %9, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i64 @skb_tailroom(%struct.sk_buff* %47)
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %36
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @skb_put_data(%struct.sk_buff* %55, i64* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %23
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %51, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @ieee80211_ie_split_vendor(i64*, i64, i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
