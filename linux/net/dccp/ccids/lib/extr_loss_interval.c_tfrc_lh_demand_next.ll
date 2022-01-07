; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_demand_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/lib/extr_loss_interval.c_tfrc_lh_demand_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfrc_loss_interval = type { i32 }
%struct.tfrc_loss_hist = type { i32, %struct.tfrc_loss_interval** }

@tfrc_lh_slab = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tfrc_loss_interval* (%struct.tfrc_loss_hist*)* @tfrc_lh_demand_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tfrc_loss_interval* @tfrc_lh_demand_next(%struct.tfrc_loss_hist* %0) #0 {
  %2 = alloca %struct.tfrc_loss_hist*, align 8
  store %struct.tfrc_loss_hist* %0, %struct.tfrc_loss_hist** %2, align 8
  %3 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %4 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %3, i32 0, i32 1
  %5 = load %struct.tfrc_loss_interval**, %struct.tfrc_loss_interval*** %4, align 8
  %6 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %7 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @LIH_INDEX(i32 %8)
  %10 = getelementptr inbounds %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %5, i64 %9
  %11 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %10, align 8
  %12 = icmp eq %struct.tfrc_loss_interval* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @tfrc_lh_slab, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.tfrc_loss_interval* @kmem_cache_alloc(i32 %14, i32 %15)
  %17 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %18 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %17, i32 0, i32 1
  %19 = load %struct.tfrc_loss_interval**, %struct.tfrc_loss_interval*** %18, align 8
  %20 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %21 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @LIH_INDEX(i32 %22)
  %24 = getelementptr inbounds %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %19, i64 %23
  store %struct.tfrc_loss_interval* %16, %struct.tfrc_loss_interval** %24, align 8
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %27 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %26, i32 0, i32 1
  %28 = load %struct.tfrc_loss_interval**, %struct.tfrc_loss_interval*** %27, align 8
  %29 = load %struct.tfrc_loss_hist*, %struct.tfrc_loss_hist** %2, align 8
  %30 = getelementptr inbounds %struct.tfrc_loss_hist, %struct.tfrc_loss_hist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @LIH_INDEX(i32 %31)
  %33 = getelementptr inbounds %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %28, i64 %32
  %34 = load %struct.tfrc_loss_interval*, %struct.tfrc_loss_interval** %33, align 8
  ret %struct.tfrc_loss_interval* %34
}

declare dso_local i64 @LIH_INDEX(i32) #1

declare dso_local %struct.tfrc_loss_interval* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
