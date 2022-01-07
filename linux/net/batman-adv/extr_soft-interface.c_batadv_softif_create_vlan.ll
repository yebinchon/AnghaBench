; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_create_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_soft-interface.c_batadv_softif_create_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_softif_vlan = type { i16, i32, i32, i32, %struct.batadv_priv* }

@EEXIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BATADV_NULL_IFINDEX = common dso_local global i32 0, align 4
@BATADV_NO_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_softif_create_vlan(%struct.batadv_priv* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.batadv_softif_vlan*, align 8
  %7 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %9 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %12 = load i16, i16* %5, align 2
  %13 = call %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv* %11, i16 zeroext %12)
  store %struct.batadv_softif_vlan* %13, %struct.batadv_softif_vlan** %6, align 8
  %14 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %15 = icmp ne %struct.batadv_softif_vlan* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %18 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %17)
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %20 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock_bh(i32* %20)
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %87

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.batadv_softif_vlan* @kzalloc(i32 24, i32 %25)
  store %struct.batadv_softif_vlan* %26, %struct.batadv_softif_vlan** %6, align 8
  %27 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %28 = icmp ne %struct.batadv_softif_vlan* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %31 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %87

35:                                               ; preds = %24
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %37 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %38 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %37, i32 0, i32 4
  store %struct.batadv_priv* %36, %struct.batadv_priv** %38, align 8
  %39 = load i16, i16* %5, align 2
  %40 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %41 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %40, i32 0, i32 0
  store i16 %39, i16* %41, align 8
  %42 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %43 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %42, i32 0, i32 2
  %44 = call i32 @kref_init(i32* %43)
  %45 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %46 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %45, i32 0, i32 3
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %49 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %48, i32 0, i32 2
  %50 = call i32 @kref_get(i32* %49)
  %51 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %52 = getelementptr inbounds %struct.batadv_softif_vlan, %struct.batadv_softif_vlan* %51, i32 0, i32 1
  %53 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %54 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %53, i32 0, i32 2
  %55 = call i32 @hlist_add_head_rcu(i32* %52, i32* %54)
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %57 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %60 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %63 = call i32 @batadv_sysfs_add_vlan(%struct.TYPE_3__* %61, %struct.batadv_softif_vlan* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %35
  %67 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %68 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %67)
  %69 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %70 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %87

72:                                               ; preds = %35
  %73 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %74 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %77 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i16, i16* %5, align 2
  %82 = load i32, i32* @BATADV_NULL_IFINDEX, align 4
  %83 = load i32, i32* @BATADV_NO_MARK, align 4
  %84 = call i32 @batadv_tt_local_add(%struct.TYPE_3__* %75, i32 %80, i16 zeroext %81, i32 %82, i32 %83)
  %85 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %6, align 8
  %86 = call i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %72, %66, %29, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_softif_vlan* @batadv_softif_vlan_get(%struct.batadv_priv*, i16 zeroext) #1

declare dso_local i32 @batadv_softif_vlan_put(%struct.batadv_softif_vlan*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.batadv_softif_vlan* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @batadv_sysfs_add_vlan(%struct.TYPE_3__*, %struct.batadv_softif_vlan*) #1

declare dso_local i32 @batadv_tt_local_add(%struct.TYPE_3__*, i32, i16 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
