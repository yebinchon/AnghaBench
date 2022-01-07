; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kstatfs = type { i64, i64, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8** }
%struct.ufs_sb_private_info = type { i64, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.ufs_sb_private_info* }

@UFS_TYPE_MASK = common dso_local global i32 0, align 4
@UFS_TYPE_UFS2 = common dso_local global i32 0, align 4
@UFS2_MAGIC = common dso_local global i32 0, align 4
@UFS_MAGIC = common dso_local global i32 0, align 4
@UFS_MAXNAMLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ufs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.TYPE_8__* @UFS_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %14, align 8
  store %struct.ufs_sb_private_info* %15, %struct.ufs_sb_private_info** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = call %struct.TYPE_8__* @UFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @huge_encode_dev(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = call %struct.TYPE_8__* @UFS_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UFS_TYPE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @UFS_TYPE_UFS2, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @UFS2_MAGIC, align 4
  %37 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %38 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %2
  %40 = load i32, i32* @UFS_MAGIC, align 4
  %41 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %45 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %50 = call i64 @ufs_freefrags(%struct.ufs_sb_private_info* %49)
  %51 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %52 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %54 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %58 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %63 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %65 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %68 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %43
  %72 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %73 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %76 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  br label %80

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %71
  %81 = phi i64 [ %78, %71 ], [ 0, %79 ]
  %82 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %83 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %85 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %88 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %92 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @UFS_MAXNAMLEN, align 4
  %94 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %95 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %100 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %98, i8** %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = ashr i32 %104, 32
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %109 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  store i8* %107, i8** %112, align 8
  %113 = load %struct.super_block*, %struct.super_block** %5, align 8
  %114 = call %struct.TYPE_8__* @UFS_SB(%struct.super_block* %113)
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ufs_freefrags(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
