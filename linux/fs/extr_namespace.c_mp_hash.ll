; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mp_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mp_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.dentry = type { i32 }

@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@mp_hash_shift = common dso_local global i64 0, align 8
@mountpoint_hashtable = common dso_local global %struct.hlist_head* null, align 8
@mp_hash_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.dentry*)* @mp_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @mp_hash(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = ptrtoint %struct.dentry* %4 to i64
  %6 = load i64, i64* @L1_CACHE_BYTES, align 8
  %7 = udiv i64 %5, %6
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @mp_hash_shift, align 8
  %11 = lshr i64 %9, %10
  %12 = add i64 %8, %11
  store i64 %12, i64* %3, align 8
  %13 = load %struct.hlist_head*, %struct.hlist_head** @mountpoint_hashtable, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @mp_hash_mask, align 8
  %16 = and i64 %14, %15
  %17 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %13, i64 %16
  ret %struct.hlist_head* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
