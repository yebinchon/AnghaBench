; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.hfsplus_sb_info = type { i32, i32, i32, i64 }

@HFSPLUS_SUPER_MAGIC = common dso_local global i32 0, align 4
@HFSPLUS_MAX_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @hfsplus_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hfsplus_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %11)
  store %struct.hfsplus_sb_info* %12, %struct.hfsplus_sb_info** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @HFSPLUS_SUPER_MAGIC, align 4
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %28 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %31 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  %34 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %35 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %37 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %40 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %38, %41
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %49 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 3
  store i32 -1, i32* %51, align 4
  %52 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %53 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 4294967295, %54
  %56 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %57 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  store i8* %60, i8** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 32
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %71 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %69, i8** %74, align 8
  %75 = load i32, i32* @HFSPLUS_MAX_STRLEN, align 4
  %76 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %77 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  ret i32 0
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
