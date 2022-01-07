; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_hpfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.hpfs_sb_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @hpfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hpfs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %11)
  store %struct.hpfs_sb_info* %12, %struct.hpfs_sb_info** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call i32 @hpfs_lock(%struct.super_block* %19)
  %21 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %6, align 8
  %22 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = call i32 @count_bitmaps(%struct.super_block* %26)
  %28 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %6, align 8
  %29 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %35 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 0
  store i32 512, i32* %37, align 8
  %38 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %6, align 8
  %39 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %6, align 8
  %44 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %6, align 8
  %49 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %52 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %6, align 8
  %54 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 4
  %57 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %58 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = call i32 @hpfs_get_free_dnodes(%struct.super_block* %59)
  %61 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %67 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %65, i8** %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 32
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %76 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  store i8* %74, i8** %79, align 8
  %80 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %81 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %80, i32 0, i32 4
  store i32 254, i32* %81, align 8
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = call i32 @hpfs_unlock(%struct.super_block* %82)
  ret i32 0
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @hpfs_lock(%struct.super_block*) #1

declare dso_local i32 @count_bitmaps(%struct.super_block*) #1

declare dso_local i32 @hpfs_get_free_dnodes(%struct.super_block*) #1

declare dso_local i32 @hpfs_unlock(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
