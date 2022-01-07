; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i32, i32, i32, %struct.TYPE_5__, i8*, i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.jfs_sb_info = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inomap = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.inomap* }

@.str = private unnamed_addr constant [14 x i8] c"In jfs_statfs\00", align 1
@JFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@JFS_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @jfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.jfs_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inomap*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.jfs_sb_info* @JFS_SBI(i32 %10)
  store %struct.jfs_sb_info* %11, %struct.jfs_sb_info** %5, align 8
  %12 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_6__* @JFS_IP(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.inomap*, %struct.inomap** %16, align 8
  store %struct.inomap* %17, %struct.inomap** %7, align 8
  %18 = call i32 @jfs_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @JFS_SUPER_MAGIC, align 4
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %33 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %35 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %40 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %42 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.inomap*, %struct.inomap** %7, align 8
  %49 = getelementptr inbounds %struct.inomap, %struct.inomap* %48, i32 0, i32 2
  %50 = call i8* @atomic_read(i32* %49)
  %51 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inomap*, %struct.inomap** %7, align 8
  %57 = getelementptr inbounds %struct.inomap, %struct.inomap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %55, %58
  %60 = load i32, i32* @L2INOSPEREXT, align 4
  %61 = shl i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %50, i64 %62
  %64 = call i8* @min(i8* %63, i8* inttoptr (i64 4294967295 to i8*))
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %67 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.inomap*, %struct.inomap** %7, align 8
  %70 = getelementptr inbounds %struct.inomap, %struct.inomap* %69, i32 0, i32 2
  %71 = call i8* @atomic_read(i32* %70)
  %72 = load %struct.inomap*, %struct.inomap** %7, align 8
  %73 = getelementptr inbounds %struct.inomap, %struct.inomap* %72, i32 0, i32 1
  %74 = call i8* @atomic_read(i32* %73)
  %75 = ptrtoint i8* %71 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sub i64 0, %77
  %79 = getelementptr i8, i8* %68, i64 %78
  %80 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %81 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %83 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %82, i32 0, i32 0
  %84 = bitcast i32* %83 to i8*
  %85 = call i8* @crc32_le(i32 0, i8* %84, i32 2)
  %86 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %87 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  store i8* %85, i8** %90, align 8
  %91 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %92 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %91, i32 0, i32 0
  %93 = bitcast i32* %92 to i8*
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = call i8* @crc32_le(i32 0, i8* %94, i32 2)
  %96 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %97 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  store i8* %95, i8** %100, align 8
  %101 = load i32, i32* @JFS_NAME_MAX, align 4
  %102 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %103 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  ret i32 0
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(i32) #1

declare dso_local i32 @jfs_info(i8*) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i8* @crc32_le(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
