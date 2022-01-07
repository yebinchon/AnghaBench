; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_netif.c_sel_netif_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_netif.c_sel_netif_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sel_netif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sel_netif_sid(%struct.net* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sel_netif*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.sel_netif* @sel_netif_find(%struct.net* %10, i32 %11)
  store %struct.sel_netif* %12, %struct.sel_netif** %8, align 8
  %13 = load %struct.sel_netif*, %struct.sel_netif** %8, align 8
  %14 = icmp ne %struct.sel_netif* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.sel_netif*, %struct.sel_netif** %8, align 8
  %20 = getelementptr inbounds %struct.sel_netif, %struct.sel_netif* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.net*, %struct.net** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @sel_netif_sid_slow(%struct.net* %27, i32 %28, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sel_netif* @sel_netif_find(%struct.net*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sel_netif_sid_slow(%struct.net*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
