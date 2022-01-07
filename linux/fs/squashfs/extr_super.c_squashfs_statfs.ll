; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_super.c_squashfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_super.c_squashfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.squashfs_sb_info* }
%struct.TYPE_4__ = type { i32 }
%struct.squashfs_sb_info = type { i32, i32, i32, i32 }
%struct.kstatfs = type { i32, %struct.TYPE_6__, i32, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i8** }

@.str = private unnamed_addr constant [25 x i8] c"Entered squashfs_statfs\0A\00", align 1
@SQUASHFS_MAGIC = common dso_local global i32 0, align 4
@SQUASHFS_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @squashfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @squashfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.squashfs_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %10, align 8
  store %struct.squashfs_sb_info* %11, %struct.squashfs_sb_info** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @huge_encode_dev(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @SQUASHFS_MAGIC, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %28 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %5, align 8
  %34 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  %37 = add nsw i32 %36, 1
  %38 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %43 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %50 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @SQUASHFS_NAME_LEN, align 4
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %58 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %56, i8** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, 32
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %67 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %65, i8** %70, align 8
  ret i32 0
}

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
