; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_prepare_for_gate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_prepare_for_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.mesh_path = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.ieee80211_hdr = type { i8*, i8*, i8*, i8*, i32 }
%struct.ieee80211s_hdr = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@MESH_FLAGS_AE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MESH_FLAGS_AE_A5_A6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*, %struct.mesh_path*)* @prepare_for_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_for_gate(%struct.sk_buff* %0, i8* %1, %struct.mesh_path* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mesh_path*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211s_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mesh_path* %2, %struct.mesh_path** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %7, align 8
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ieee80211_hdrlen(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = inttoptr i64 %25 to %struct.ieee80211s_hdr*
  store %struct.ieee80211s_hdr* %26, %struct.ieee80211s_hdr** %8, align 8
  %27 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MESH_FLAGS_AE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %76, label %33

33:                                               ; preds = %3
  store i32 6, i32* %9, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = mul nsw i32 2, %35
  %37 = call i32 @skb_push(%struct.sk_buff* %34, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @memmove(i64 %40, %struct.ieee80211_hdr* %41, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %49, %struct.ieee80211_hdr** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = inttoptr i64 %55 to %struct.ieee80211s_hdr*
  store %struct.ieee80211s_hdr* %56, %struct.ieee80211s_hdr** %8, align 8
  %57 = load i32, i32* @MESH_FLAGS_AE_A5_A6, align 4
  %58 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i8* %62, i8* %65, i32 %66)
  %68 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = call i32 @memcpy(i8* %70, i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %33, %3
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %80, %struct.ieee80211_hdr** %7, align 8
  %81 = call i32 (...) @rcu_read_lock()
  %82 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %83 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.TYPE_8__* @rcu_dereference(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %11, align 8
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %90 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  %95 = call i32 (...) @rcu_read_unlock()
  %96 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.mesh_path*, %struct.mesh_path** %6, align 8
  %100 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @memcpy(i8* %98, i8* %104, i32 %105)
  %107 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i8* %109, i8* %110, i32 %111)
  ret void
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, %struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_8__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
