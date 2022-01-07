; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_local_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.batadv_hashtable* }
%struct.batadv_hashtable = type { i64, i32*, %struct.hlist_head* }
%struct.hlist_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, i32)* @batadv_tt_local_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tt_local_purge(%struct.batadv_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_hashtable*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %10 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %11, align 8
  store %struct.batadv_hashtable* %12, %struct.batadv_hashtable** %5, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %5, align 8
  %16 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %5, align 8
  %21 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %20, i32 0, i32 2
  %22 = load %struct.hlist_head*, %struct.hlist_head** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %22, i64 %23
  store %struct.hlist_head* %24, %struct.hlist_head** %6, align 8
  %25 = load %struct.batadv_hashtable*, %struct.batadv_hashtable** %5, align 8
  %26 = getelementptr inbounds %struct.batadv_hashtable, %struct.batadv_hashtable* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %33 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @batadv_tt_local_purge_list(%struct.batadv_priv* %32, %struct.hlist_head* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @spin_unlock_bh(i32* %36)
  br label %38

38:                                               ; preds = %19
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %13

41:                                               ; preds = %13
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_tt_local_purge_list(%struct.batadv_priv*, %struct.hlist_head*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
