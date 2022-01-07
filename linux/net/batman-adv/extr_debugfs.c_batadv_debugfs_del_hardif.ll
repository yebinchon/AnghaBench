; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_del_hardif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_debugfs.c_batadv_debugfs_del_hardif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.batadv_hard_iface = type { i32*, i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@batadv_debugfs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_debugfs_del_hardif(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca %struct.net*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %4 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.net* @dev_net(i32 %6)
  store %struct.net* %7, %struct.net** %3, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = icmp ne %struct.net* %8, @init_net
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = load i64, i64* @batadv_debugfs, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %16 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @debugfs_remove_recursive(i32* %17)
  %19 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %20 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %10, %14, %11
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
