; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_orig_node_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_orig_node_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i64, i32*, i32, i32, %struct.batadv_priv*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node_vlan = type { i32 }

@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Creating new originator: %pM\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@BATADV_RESET_PROTECTION_MS = common dso_local global i32 0, align 4
@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@BATADV_FRAG_BUFFER_COUNT = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_NO_RTR4 = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_NO_RTR6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_orig_node* @batadv_orig_node_new(%struct.batadv_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.batadv_orig_node*, align 8
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_orig_node_vlan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @batadv_dbg(i32 %10, %struct.batadv_priv* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.batadv_orig_node* @kzalloc(i32 120, i32 %14)
  store %struct.batadv_orig_node* %15, %struct.batadv_orig_node** %6, align 8
  %16 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %17 = icmp ne %struct.batadv_orig_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %3, align 8
  br label %123

19:                                               ; preds = %2
  %20 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %21 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %20, i32 0, i32 21
  %22 = call i32 @INIT_HLIST_HEAD(i32* %21)
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %24 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %23, i32 0, i32 20
  %25 = call i32 @INIT_HLIST_HEAD(i32* %24)
  %26 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %27 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %26, i32 0, i32 19
  %28 = call i32 @INIT_HLIST_HEAD(i32* %27)
  %29 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %30 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %29, i32 0, i32 18
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %33 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %32, i32 0, i32 17
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %36 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %35, i32 0, i32 16
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %39 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %38, i32 0, i32 15
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %42 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %41, i32 0, i32 14
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %45 = call i32 @batadv_nc_init_orig(%struct.batadv_orig_node* %44)
  %46 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %47 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %46, i32 0, i32 13
  %48 = call i32 @kref_init(i32* %47)
  %49 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %50 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %51 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %50, i32 0, i32 12
  store %struct.batadv_priv* %49, %struct.batadv_priv** %51, align 8
  %52 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %53 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @ether_addr_copy(i32 %54, i32* %55)
  %57 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %58 = call i32 @batadv_dat_init_orig_node_addr(%struct.batadv_orig_node* %57)
  %59 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %60 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %59, i32 0, i32 10
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  %62 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %63 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %62, i32 0, i32 9
  store i32* null, i32** %63, align 8
  %64 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %65 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %64, i32 0, i32 8
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @jiffies, align 4
  %67 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %68 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @jiffies, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* @BATADV_RESET_PROTECTION_MS, align 4
  %72 = call i32 @msecs_to_jiffies(i32 %71)
  %73 = sub nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %77 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %79 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %80 = call %struct.batadv_orig_node_vlan* @batadv_orig_node_vlan_new(%struct.batadv_orig_node* %78, i32 %79)
  store %struct.batadv_orig_node_vlan* %80, %struct.batadv_orig_node_vlan** %7, align 8
  %81 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %7, align 8
  %82 = icmp ne %struct.batadv_orig_node_vlan* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %19
  br label %120

84:                                               ; preds = %19
  %85 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %7, align 8
  %86 = call i32 @batadv_orig_node_vlan_put(%struct.batadv_orig_node_vlan* %85)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %115, %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @BATADV_FRAG_BUFFER_COUNT, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %87
  %92 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %93 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = call i32 @INIT_HLIST_HEAD(i32* %98)
  %100 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %101 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = call i32 @spin_lock_init(i32* %106)
  %108 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %109 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %91
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %87

118:                                              ; preds = %87
  %119 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  store %struct.batadv_orig_node* %119, %struct.batadv_orig_node** %3, align 8
  br label %123

120:                                              ; preds = %83
  %121 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %122 = call i32 @kfree(%struct.batadv_orig_node* %121)
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %3, align 8
  br label %123

123:                                              ; preds = %120, %118, %18
  %124 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  ret %struct.batadv_orig_node* %124
}

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*) #1

declare dso_local %struct.batadv_orig_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @batadv_nc_init_orig(%struct.batadv_orig_node*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @batadv_dat_init_orig_node_addr(%struct.batadv_orig_node*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local %struct.batadv_orig_node_vlan* @batadv_orig_node_vlan_new(%struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_orig_node_vlan_put(%struct.batadv_orig_node_vlan*) #1

declare dso_local i32 @kfree(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
