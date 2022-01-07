; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unlock_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unlock_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cluster_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_cluster_info*)* @unlock_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_cluster(%struct.swap_cluster_info* %0) #0 {
  %2 = alloca %struct.swap_cluster_info*, align 8
  store %struct.swap_cluster_info* %0, %struct.swap_cluster_info** %2, align 8
  %3 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %2, align 8
  %4 = icmp ne %struct.swap_cluster_info* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %2, align 8
  %7 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %6, i32 0, i32 0
  %8 = call i32 @spin_unlock(i32* %7)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
