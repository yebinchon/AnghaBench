; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_set_error.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_set_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }
%struct.nilfs_super_block = type { i32 }

@NILFS_ERROR_FS = common dso_local global i32 0, align 4
@NILFS_SB_COMMIT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @nilfs_set_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_set_error(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_super_block**, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  store %struct.the_nilfs* %7, %struct.the_nilfs** %3, align 8
  %8 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %9 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %8, i32 0, i32 1
  %10 = call i32 @down_write(i32* %9)
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NILFS_ERROR_FS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @NILFS_ERROR_FS, align 4
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.super_block*, %struct.super_block** %2, align 8
  %24 = call %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block* %23, i32 0)
  store %struct.nilfs_super_block** %24, %struct.nilfs_super_block*** %4, align 8
  %25 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %26 = call i64 @likely(%struct.nilfs_super_block** %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %17
  %29 = load i32, i32* @NILFS_ERROR_FS, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %31, i64 0
  %33 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %32, align 8
  %34 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %38 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %37, i64 1
  %39 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %38, align 8
  %40 = icmp ne %struct.nilfs_super_block* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load i32, i32* @NILFS_ERROR_FS, align 4
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %45 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %44, i64 1
  %46 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %45, align 8
  %47 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %41, %28
  %51 = load %struct.super_block*, %struct.super_block** %2, align 8
  %52 = load i32, i32* @NILFS_SB_COMMIT_ALL, align 4
  %53 = call i32 @nilfs_commit_super(%struct.super_block* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %17
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %57 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %56, i32 0, i32 1
  %58 = call i32 @up_write(i32* %57)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block*, i32) #1

declare dso_local i64 @likely(%struct.nilfs_super_block**) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @nilfs_commit_super(%struct.super_block*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
