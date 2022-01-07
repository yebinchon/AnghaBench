; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_set_phy_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_set_phy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfcnfg = type { i32 }
%struct.cflayer = type { i32 }
%struct.cfcnfg_phyinfo = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfcnfg_set_phy_state(%struct.cfcnfg* %0, %struct.cflayer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfcnfg*, align 8
  %6 = alloca %struct.cflayer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfcnfg_phyinfo*, align 8
  store %struct.cfcnfg* %0, %struct.cfcnfg** %5, align 8
  store %struct.cflayer* %1, %struct.cflayer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.cfcnfg*, %struct.cfcnfg** %5, align 8
  %11 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %12 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cfcnfg_phyinfo* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg* %10, i32 %13)
  store %struct.cfcnfg_phyinfo* %14, %struct.cfcnfg_phyinfo** %8, align 8
  %15 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %8, align 8
  %16 = icmp eq %struct.cfcnfg_phyinfo* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 (...) @rcu_read_unlock()
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  %22 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %8, align 8
  %23 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %64

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %8, align 8
  %32 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %8, align 8
  %37 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cffrml_hold(i32 %38)
  %40 = load %struct.cfcnfg*, %struct.cfcnfg** %5, align 8
  %41 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %8, align 8
  %44 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %47 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cfmuxl_set_dnlayer(i32 %42, i32 %45, i32 %48)
  br label %62

50:                                               ; preds = %29
  %51 = load %struct.cfcnfg*, %struct.cfcnfg** %5, align 8
  %52 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cflayer*, %struct.cflayer** %6, align 8
  %55 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cfmuxl_remove_dnlayer(i32 %53, i32 %56)
  %58 = load %struct.cfcnfg_phyinfo*, %struct.cfcnfg_phyinfo** %8, align 8
  %59 = getelementptr inbounds %struct.cfcnfg_phyinfo, %struct.cfcnfg_phyinfo* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cffrml_put(i32 %60)
  br label %62

62:                                               ; preds = %50, %35
  %63 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %27, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfcnfg_phyinfo* @cfcnfg_get_phyinfo_rcu(%struct.cfcnfg*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cffrml_hold(i32) #1

declare dso_local i32 @cfmuxl_set_dnlayer(i32, i32, i32) #1

declare dso_local i32 @cfmuxl_remove_dnlayer(i32, i32) #1

declare dso_local i32 @cffrml_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
