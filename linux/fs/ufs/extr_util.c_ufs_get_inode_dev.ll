; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ufs_get_inode_dev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ufs_get_inode_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_inode_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@UFS_ST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_get_inode_dev(%struct.super_block* %0, %struct.ufs_inode_info* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ufs_inode_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ufs_inode_info* %1, %struct.ufs_inode_info** %4, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UFS_ST_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fs32_to_cpu(%struct.super_block* %15, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %4, align 8
  %26 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fs32_to_cpu(%struct.super_block* %24, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %14
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UFS_ST_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %58 [
    i32 128, label %39
    i32 129, label %39
  ]

39:                                               ; preds = %32, %32
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, -65536
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, -65536
  %46 = icmp eq i32 %45, -65536
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 32767
  %50 = call i32 @old_decode_dev(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %57

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @sysv_major(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @sysv_minor(i32 %54)
  %56 = call i32 @MKDEV(i32 %53, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %51, %47
  br label %61

58:                                               ; preds = %32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @old_decode_dev(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_4__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @old_decode_dev(i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @sysv_major(i32) #1

declare dso_local i32 @sysv_minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
