; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_cache_enforce_limit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_access_cache_enforce_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfs_access_nr_entries = common dso_local global i32 0, align 4
@nfs_access_max_cachesize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nfs_access_cache_enforce_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_access_cache_enforce_limit() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 @atomic_long_read(i32* @nfs_access_nr_entries)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @nfs_access_max_cachesize, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %0
  br label %26

12:                                               ; preds = %7
  store i32 100, i32* %3, align 4
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @nfs_access_max_cachesize, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i64, i64* %2, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @nfs_do_access_cache_scan(i32 %24)
  br label %26

26:                                               ; preds = %23, %11
  ret void
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @nfs_do_access_cache_scan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
