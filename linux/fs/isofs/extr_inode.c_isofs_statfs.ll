; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c_isofs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c_isofs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i32, i32, %struct.TYPE_5__, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ISOFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @isofs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @huge_encode_dev(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @ISOFS_SUPER_MAGIC, align 4
  %17 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %18 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = call %struct.TYPE_6__* @ISOFS_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call %struct.TYPE_6__* @ISOFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = shl i32 %27, %35
  %37 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %38 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %40 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = call %struct.TYPE_6__* @ISOFS_SB(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %50 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %53, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 32
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %64 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  store i8* %62, i8** %67, align 8
  %68 = load i32, i32* @NAME_MAX, align 4
  %69 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  ret i32 0
}

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local %struct.TYPE_6__* @ISOFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
