; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64, i32 }

@BATADV_IF_NOT_IN_USE = common dso_local global i64 0, align 8
@BATADV_IF_CLEANUP_KEEP = common dso_local global i32 0, align 4
@BATADV_IF_TO_BE_REMOVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hard_iface*)* @batadv_hardif_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_hardif_remove_interface(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %3 = call i32 (...) @ASSERT_RTNL()
  %4 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BATADV_IF_NOT_IN_USE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %11 = load i32, i32* @BATADV_IF_CLEANUP_KEEP, align 4
  %12 = call i32 @batadv_hardif_disable_interface(%struct.batadv_hard_iface* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %15 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BATADV_IF_NOT_IN_USE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %31

20:                                               ; preds = %13
  %21 = load i64, i64* @BATADV_IF_TO_BE_REMOVED, align 8
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %23 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %25 = call i32 @batadv_debugfs_del_hardif(%struct.batadv_hard_iface* %24)
  %26 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %27 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %26, i32 0, i32 1
  %28 = call i32 @batadv_sysfs_del_hardif(i32* %27)
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %30 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %29)
  br label %31

31:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @batadv_hardif_disable_interface(%struct.batadv_hard_iface*, i32) #1

declare dso_local i32 @batadv_debugfs_del_hardif(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_sysfs_del_hardif(i32*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
