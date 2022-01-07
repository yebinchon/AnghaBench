; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c___batadv_mcast_flags_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c___batadv_mcast_flags_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.batadv_priv = type { %struct.batadv_hashtable* }
%struct.batadv_hashtable = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_priv*, i64*, i64*)* @__batadv_mcast_flags_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__batadv_mcast_flags_dump(%struct.sk_buff* %0, i32 %1, %struct.netlink_callback* %2, %struct.batadv_priv* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca %struct.batadv_priv*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.batadv_hashtable*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.netlink_callback* %2, %struct.netlink_callback** %9, align 8
  store %struct.batadv_priv* %3, %struct.batadv_priv** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %17 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %16, i32 0, i32 0
  %18 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %17, align 8
  store %struct.batadv_hashtable* %18, %struct.batadv_hashtable** %13, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  br label %23

23:                                               ; preds = %38, %6
  %24 = load i64, i64* %14, align 8
  %25 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %13, align 8
  %26 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %33 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @batadv_mcast_flags_dump_bucket(%struct.sk_buff* %30, i32 %31, %struct.netlink_callback* %32, %struct.batadv_hashtable* %33, i64 %34, i64* %15)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %41

38:                                               ; preds = %29
  %39 = load i64, i64* %14, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %23

41:                                               ; preds = %37, %23
  %42 = load i64, i64* %14, align 8
  %43 = load i64*, i64** %11, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64*, i64** %12, align 8
  store i64 %44, i64* %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  ret i32 %48
}

declare dso_local i64 @batadv_mcast_flags_dump_bucket(%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_hashtable*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
