; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_orig_ifinfo_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_orig_ifinfo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i32 }
%struct.batadv_orig_ifinfo = type { i64, i32, i32, %struct.batadv_hard_iface* }
%struct.batadv_orig_node = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_IF_DEFAULT = common dso_local global %struct.batadv_hard_iface* null, align 8
@jiffies = common dso_local global i32 0, align 4
@BATADV_RESET_PROTECTION_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_new(%struct.batadv_orig_node* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.batadv_orig_node*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_orig_ifinfo*, align 8
  %6 = alloca i64, align 8
  store %struct.batadv_orig_node* %0, %struct.batadv_orig_node** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %7 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %8 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %11 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %12 = call %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_get(%struct.batadv_orig_node* %10, %struct.batadv_hard_iface* %11)
  store %struct.batadv_orig_ifinfo* %12, %struct.batadv_orig_ifinfo** %5, align 8
  %13 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %14 = icmp ne %struct.batadv_orig_ifinfo* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.batadv_orig_ifinfo* @kzalloc(i32 24, i32 %17)
  store %struct.batadv_orig_ifinfo* %18, %struct.batadv_orig_ifinfo** %5, align 8
  %19 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %20 = icmp ne %struct.batadv_orig_ifinfo* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %58

22:                                               ; preds = %16
  %23 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  %25 = icmp ne %struct.batadv_hard_iface* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %28 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %27, i32 0, i32 0
  %29 = call i32 @kref_get(i32* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @jiffies, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %6, align 8
  %34 = load i32, i32* @BATADV_RESET_PROTECTION_MS, align 4
  %35 = call i64 @msecs_to_jiffies(i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %40 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %42 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %43 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %42, i32 0, i32 3
  store %struct.batadv_hard_iface* %41, %struct.batadv_hard_iface** %43, align 8
  %44 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %45 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %44, i32 0, i32 1
  %46 = call i32 @INIT_HLIST_NODE(i32* %45)
  %47 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %48 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %47, i32 0, i32 2
  %49 = call i32 @kref_init(i32* %48)
  %50 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %51 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %50, i32 0, i32 2
  %52 = call i32 @kref_get(i32* %51)
  %53 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %54 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %53, i32 0, i32 1
  %55 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %56 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %55, i32 0, i32 1
  %57 = call i32 @hlist_add_head_rcu(i32* %54, i32* %56)
  br label %58

58:                                               ; preds = %30, %21, %15
  %59 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %60 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  ret %struct.batadv_orig_ifinfo* %62
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_get(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local %struct.batadv_orig_ifinfo* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
