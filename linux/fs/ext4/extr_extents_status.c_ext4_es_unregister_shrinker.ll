; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_ext4_es_unregister_shrinker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_ext4_es_unregister_shrinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_es_unregister_shrinker(%struct.ext4_sb_info* %0) #0 {
  %2 = alloca %struct.ext4_sb_info*, align 8
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %2, align 8
  %3 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %4 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = call i32 @percpu_counter_destroy(i32* %5)
  %7 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %8 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @percpu_counter_destroy(i32* %9)
  %11 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %12 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @percpu_counter_destroy(i32* %13)
  %15 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %16 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @percpu_counter_destroy(i32* %17)
  %19 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %2, align 8
  %20 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %19, i32 0, i32 0
  %21 = call i32 @unregister_shrinker(i32* %20)
  ret void
}

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @unregister_shrinker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
