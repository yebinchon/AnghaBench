; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_reassemble_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_reassemble_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_fragment_entry = type { i32, i32, i32, i32, i64 }
%struct.ieee80211_sub_if_data = type { i32, %struct.ieee80211_fragment_entry* }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }

@IEEE80211_FRAGMENT_MAX = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_fragment_entry* (%struct.ieee80211_sub_if_data*, i32, i32, i32, %struct.ieee80211_hdr*)* @ieee80211_reassemble_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_fragment_entry* @ieee80211_reassemble_find(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2, i32 %3, %struct.ieee80211_hdr* %4) #0 {
  %6 = alloca %struct.ieee80211_fragment_entry*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.ieee80211_fragment_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_hdr* %4, %struct.ieee80211_hdr** %11, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %118, %5
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @IEEE80211_FRAGMENT_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %121

24:                                               ; preds = %20
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @IEEE80211_FRAGMENT_MAX, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 1
  %35 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %35, i64 %37
  store %struct.ieee80211_fragment_entry* %38, %struct.ieee80211_fragment_entry** %12, align 8
  %39 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %40 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %39, i32 0, i32 3
  %41 = call i64 @skb_queue_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %32
  %44 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %45 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %43
  %50 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %51 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %57 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %49, %43, %32
  br label %118

63:                                               ; preds = %55
  %64 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %64, i32 0, i32 3
  %66 = call %struct.sk_buff* @__skb_peek(i32* %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %16, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %70, %struct.ieee80211_hdr** %15, align 8
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %73, %76
  %78 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %79 = call i32 @cpu_to_le16(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %63
  %83 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ether_addr_equal(i32 %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ether_addr_equal(i32 %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91, %82, %63
  br label %118

101:                                              ; preds = %91
  %102 = load i32, i32* @jiffies, align 4
  %103 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %104 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @HZ, align 4
  %107 = mul nsw i32 2, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = call i64 @time_after(i32 %102, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  %114 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %113, i32 0, i32 3
  %115 = call i32 @__skb_queue_purge(i32* %114)
  br label %118

116:                                              ; preds = %101
  %117 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %12, align 8
  store %struct.ieee80211_fragment_entry* %117, %struct.ieee80211_fragment_entry** %6, align 8
  br label %122

118:                                              ; preds = %112, %100, %62
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %20

121:                                              ; preds = %20
  store %struct.ieee80211_fragment_entry* null, %struct.ieee80211_fragment_entry** %6, align 8
  br label %122

122:                                              ; preds = %121, %116
  %123 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %6, align 8
  ret %struct.ieee80211_fragment_entry* %123
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @__skb_peek(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
