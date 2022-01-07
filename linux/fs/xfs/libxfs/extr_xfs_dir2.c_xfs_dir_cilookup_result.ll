; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_cilookup_result.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2.c_xfs_dir_cilookup_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i64, i32, i32, i32 }

@XFS_CMP_DIFFERENT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@XFS_CMP_CASE = common dso_local global i64 0, align 8
@XFS_DA_OP_CILOOKUP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_cilookup_result(%struct.xfs_da_args* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XFS_CMP_DIFFERENT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XFS_CMP_CASE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @XFS_DA_OP_CILOOKUP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %59

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @KM_NOFS, align 4
  %35 = load i32, i32* @KM_MAYFAIL, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @kmem_alloc(i32 %33, i32 %36)
  %38 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %59

47:                                               ; preds = %32
  %48 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @memcpy(i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @EEXIST, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %47, %44, %29, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @kmem_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
