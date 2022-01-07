; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zswap_pool = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"destroying\00", align 1
@CPUHP_MM_ZSWP_POOL_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zswap_pool*)* @zswap_pool_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zswap_pool_destroy(%struct.zswap_pool* %0) #0 {
  %2 = alloca %struct.zswap_pool*, align 8
  store %struct.zswap_pool* %0, %struct.zswap_pool** %2, align 8
  %3 = load %struct.zswap_pool*, %struct.zswap_pool** %2, align 8
  %4 = call i32 @zswap_pool_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.zswap_pool* %3)
  %5 = load i32, i32* @CPUHP_MM_ZSWP_POOL_PREPARE, align 4
  %6 = load %struct.zswap_pool*, %struct.zswap_pool** %2, align 8
  %7 = getelementptr inbounds %struct.zswap_pool, %struct.zswap_pool* %6, i32 0, i32 2
  %8 = call i32 @cpuhp_state_remove_instance(i32 %5, i32* %7)
  %9 = load %struct.zswap_pool*, %struct.zswap_pool** %2, align 8
  %10 = getelementptr inbounds %struct.zswap_pool, %struct.zswap_pool* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free_percpu(i32 %11)
  %13 = load %struct.zswap_pool*, %struct.zswap_pool** %2, align 8
  %14 = getelementptr inbounds %struct.zswap_pool, %struct.zswap_pool* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @zpool_destroy_pool(i32 %15)
  %17 = load %struct.zswap_pool*, %struct.zswap_pool** %2, align 8
  %18 = call i32 @kfree(%struct.zswap_pool* %17)
  ret void
}

declare dso_local i32 @zswap_pool_debug(i8*, %struct.zswap_pool*) #1

declare dso_local i32 @cpuhp_state_remove_instance(i32, i32*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @zpool_destroy_pool(i32) #1

declare dso_local i32 @kfree(%struct.zswap_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
