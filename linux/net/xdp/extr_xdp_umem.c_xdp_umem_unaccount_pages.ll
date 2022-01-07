; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_unaccount_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_unaccount_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdp_umem*)* @xdp_umem_unaccount_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdp_umem_unaccount_pages(%struct.xdp_umem* %0) #0 {
  %2 = alloca %struct.xdp_umem*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %2, align 8
  %3 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %4 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %9 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %12 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @atomic_long_sub(i32 %10, i32* %14)
  %16 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  %17 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @free_uid(%struct.TYPE_2__* %18)
  br label %20

20:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @atomic_long_sub(i32, i32*) #1

declare dso_local i32 @free_uid(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
