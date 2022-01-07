; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_fs.c_jffs2_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_fs.c_jffs2_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i32, i32, i64, i64, %struct.TYPE_3__, i32, i64, i64, i8* }
%struct.TYPE_3__ = type { i8** }
%struct.jffs2_sb_info = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@JFFS2_SUPER_MAGIC = common dso_local global i8* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@JFFS2_MAX_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %9)
  store %struct.jffs2_sb_info* %10, %struct.jffs2_sb_info** %5, align 8
  %11 = load i8*, i8** @JFFS2_SUPER_MAGIC, align 8
  %12 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %13 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %12, i32 0, i32 8
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %17 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %24 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %28 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @JFFS2_MAX_NAME_LEN, align 4
  %30 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %31 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** @JFFS2_SUPER_MAGIC, align 8
  %33 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %34 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* %32, i8** %37, align 8
  %38 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %38, i32 0, i32 6
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %42, i8** %47, align 8
  %48 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %48, i32 0, i32 5
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %55 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %63 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = mul i64 %61, %64
  %66 = icmp ugt i64 %58, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %2
  %68 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %69 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %72 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %70, %73
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %78

77:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %78

78:                                               ; preds = %77, %67
  %79 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %80 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %79, i32 0, i32 5
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i64, i64* %6, align 8
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = zext i32 %83 to i64
  %85 = lshr i64 %82, %84
  %86 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %87 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %89 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %88, i32 0, i32 2
  store i64 %85, i64* %89, align 8
  ret i32 0
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
