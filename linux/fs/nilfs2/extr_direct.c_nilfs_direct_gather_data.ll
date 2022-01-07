; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_gather_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_direct.c_nilfs_direct_gather_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }

@NILFS_DIRECT_NBLOCKS = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32*, i32*, i32)* @nilfs_direct_gather_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_gather_data(%struct.nilfs_bmap* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @NILFS_DIRECT_NBLOCKS, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @NILFS_DIRECT_NBLOCKS, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %15, %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @nilfs_direct_get_ptr(%struct.nilfs_bmap* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %29, %22
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %18

46:                                               ; preds = %18
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local i32 @nilfs_direct_get_ptr(%struct.nilfs_bmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
