; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { %struct.xdp_umem*, i32*, i32*, i32 }

@umem_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdp_umem*)* @xdp_umem_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdp_umem_release(%struct.xdp_umem* %0) #0 {
  %2 = alloca %struct.xdp_umem*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %2, align 8
  %3 = call i32 (...) @rtnl_lock()
  %4 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %5 = call i32 @xdp_umem_clear_dev(%struct.xdp_umem* %4)
  %6 = call i32 (...) @rtnl_unlock()
  %7 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %8 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ida_simple_remove(i32* @umem_ida, i32 %9)
  %11 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %12 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %17 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @xskq_destroy(i32* %18)
  %20 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %21 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %24 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %29 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @xskq_destroy(i32* %30)
  %32 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %33 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %36 = call i32 @xsk_reuseq_destroy(%struct.xdp_umem* %35)
  %37 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %38 = call i32 @xdp_umem_unmap_pages(%struct.xdp_umem* %37)
  %39 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %40 = call i32 @xdp_umem_unpin_pages(%struct.xdp_umem* %39)
  %41 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %42 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %41, i32 0, i32 0
  %43 = load %struct.xdp_umem*, %struct.xdp_umem** %42, align 8
  %44 = call i32 @kfree(%struct.xdp_umem* %43)
  %45 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %46 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %45, i32 0, i32 0
  store %struct.xdp_umem* null, %struct.xdp_umem** %46, align 8
  %47 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %48 = call i32 @xdp_umem_unaccount_pages(%struct.xdp_umem* %47)
  %49 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %50 = call i32 @kfree(%struct.xdp_umem* %49)
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @xdp_umem_clear_dev(%struct.xdp_umem*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @xskq_destroy(i32*) #1

declare dso_local i32 @xsk_reuseq_destroy(%struct.xdp_umem*) #1

declare dso_local i32 @xdp_umem_unmap_pages(%struct.xdp_umem*) #1

declare dso_local i32 @xdp_umem_unpin_pages(%struct.xdp_umem*) #1

declare dso_local i32 @kfree(%struct.xdp_umem*) #1

declare dso_local i32 @xdp_umem_unaccount_pages(%struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
