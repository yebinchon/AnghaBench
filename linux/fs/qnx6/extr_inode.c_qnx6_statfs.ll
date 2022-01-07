; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { %struct.TYPE_6__, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i8** }
%struct.qnx6_sb_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@QNX6_LONG_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @qnx6_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx6_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.qnx6_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %11)
  store %struct.qnx6_sb_info* %12, %struct.qnx6_sb_info** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %28 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %30 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %31 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %29, i32 %34)
  %36 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %39 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %40 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %38, i32 %43)
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %48 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %49 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %47, i32 %52)
  %54 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %57 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @fs32_to_cpu(%struct.qnx6_sb_info* %56, i32 %61)
  %63 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %64 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %66 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %69 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @QNX6_LONG_NAME_MAX, align 4
  %71 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %72 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %77 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %75, i8** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 32
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %86 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* %84, i8** %89, align 8
  ret i32 0
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i8* @fs32_to_cpu(%struct.qnx6_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
