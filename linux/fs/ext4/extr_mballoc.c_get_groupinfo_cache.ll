; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_get_groupinfo_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_get_groupinfo_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@EXT4_MIN_BLOCK_LOG_SIZE = common dso_local global i32 0, align 4
@ext4_groupinfo_caches = common dso_local global %struct.kmem_cache** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (i32)* @get_groupinfo_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @get_groupinfo_cache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @EXT4_MIN_BLOCK_LOG_SIZE, align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.kmem_cache**, %struct.kmem_cache*** @ext4_groupinfo_caches, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %8, i64 %10
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %11, align 8
  store %struct.kmem_cache* %12, %struct.kmem_cache** %4, align 8
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %14 = icmp ne %struct.kmem_cache* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  ret %struct.kmem_cache* %18
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
