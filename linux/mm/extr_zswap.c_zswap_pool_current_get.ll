; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_pool_current_get.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zswap.c_zswap_pool_current_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zswap_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zswap_pool* ()* @zswap_pool_current_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zswap_pool* @zswap_pool_current_get() #0 {
  %1 = alloca %struct.zswap_pool*, align 8
  %2 = call i32 (...) @rcu_read_lock()
  %3 = call %struct.zswap_pool* (...) @__zswap_pool_current()
  store %struct.zswap_pool* %3, %struct.zswap_pool** %1, align 8
  %4 = load %struct.zswap_pool*, %struct.zswap_pool** %1, align 8
  %5 = call i32 @zswap_pool_get(%struct.zswap_pool* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.zswap_pool* null, %struct.zswap_pool** %1, align 8
  br label %8

8:                                                ; preds = %7, %0
  %9 = call i32 (...) @rcu_read_unlock()
  %10 = load %struct.zswap_pool*, %struct.zswap_pool** %1, align 8
  ret %struct.zswap_pool* %10
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.zswap_pool* @__zswap_pool_current(...) #1

declare dso_local i32 @zswap_pool_get(%struct.zswap_pool*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
