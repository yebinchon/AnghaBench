; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_seek_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_seek_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }

@NILFS_DIRECT_KEY_MAX = common dso_local global i64 0, align 8
@NILFS_BMAP_INVALID_PTR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64, i64*)* @nilfs_direct_seek_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_seek_key(%struct.nilfs_bmap* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %8, align 8
  br label %10

10:                                               ; preds = %24, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @NILFS_DIRECT_KEY_MAX, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_bmap* %15, i64 %16)
  %18 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = load i64*, i64** %7, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %4, align 4
  br label %30

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %8, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @nilfs_direct_get_ptr(%struct.nilfs_bmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
