; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_get_fs_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_get_fs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_super_block_first = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ufs_super_block_third = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@UFS_ST_MASK = common dso_local global i32 0, align 4
@UFS_42POSTBLFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ufs_super_block_first*, %struct.ufs_super_block_third*)* @ufs_get_fs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_get_fs_state(%struct.super_block* %0, %struct.ufs_super_block_first* %1, %struct.ufs_super_block_third* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_super_block_first*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ufs_super_block_first* %1, %struct.ufs_super_block_first** %6, align 8
  store %struct.ufs_super_block_third* %2, %struct.ufs_super_block_third** %7, align 8
  %8 = load %struct.super_block*, %struct.super_block** %5, align 8
  %9 = call %struct.TYPE_16__* @UFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UFS_ST_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %48 [
    i32 129, label %14
    i32 130, label %31
    i32 128, label %39
    i32 131, label %47
  ]

14:                                               ; preds = %3
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %17 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fs32_to_cpu(%struct.super_block* %15, i32 %18)
  %20 = load i32, i32* @UFS_42POSTBLFMT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %25 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fs32_to_cpu(%struct.super_block* %23, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %3, %30
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %34 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fs32_to_cpu(%struct.super_block* %32, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %3
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %42 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fs32_to_cpu(%struct.super_block* %40, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %3
  br label %48

48:                                               ; preds = %3, %47
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %51 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fs32_to_cpu(%struct.super_block* %49, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %48, %39, %31, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_16__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
