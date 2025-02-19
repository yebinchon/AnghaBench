; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_cache_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_cache_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }
%struct.shrink_control = type { i32 }

@nfs_access_nr_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs_access_cache_count(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca %struct.shrinker*, align 8
  %4 = alloca %struct.shrink_control*, align 8
  store %struct.shrinker* %0, %struct.shrinker** %3, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %4, align 8
  %5 = call i32 @atomic_long_read(i32* @nfs_access_nr_entries)
  %6 = call i64 @vfs_pressure_ratio(i32 %5)
  ret i64 %6
}

declare dso_local i64 @vfs_pressure_ratio(i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
