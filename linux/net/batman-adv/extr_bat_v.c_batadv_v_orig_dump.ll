; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_orig_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_orig_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_priv = type { %struct.batadv_hashtable* }
%struct.batadv_hashtable = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.netlink_callback*, %struct.batadv_priv*, %struct.batadv_hard_iface*)* @batadv_v_orig_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_v_orig_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.batadv_priv* %2, %struct.batadv_hard_iface* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca %struct.batadv_hashtable*, align 8
  %10 = alloca %struct.hlist_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.batadv_priv* %2, %struct.batadv_priv** %7, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %8, align 8
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %17 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %16, i32 0, i32 0
  %18 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %17, align 8
  store %struct.batadv_hashtable* %18, %struct.batadv_hashtable** %9, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %30 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %35 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @NETLINK_CB(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %67, %4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %9, align 8
  %44 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %9, align 8
  %49 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %48, i32 0, i32 1
  %50 = load %struct.hlist_head*, %struct.hlist_head** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %50, i64 %52
  store %struct.hlist_head* %53, %struct.hlist_head** %10, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %57 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %62 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %63 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %64 = call i64 @batadv_v_orig_dump_bucket(%struct.sk_buff* %54, i32 %55, i32 %60, %struct.batadv_priv* %61, %struct.batadv_hard_iface* %62, %struct.hlist_head* %63, i32* %12, i32* %13)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %70

67:                                               ; preds = %47
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %41

70:                                               ; preds = %66, %41
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %73 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %78 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %83 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %81, i32* %85, align 4
  ret void
}

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i64 @batadv_v_orig_dump_bucket(%struct.sk_buff*, i32, i32, %struct.batadv_priv*, %struct.batadv_hard_iface*, %struct.hlist_head*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
