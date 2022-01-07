; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.super_block* }
%struct.super_block = type { %struct.ocfs2_super* }
%struct.ocfs2_super = type { i32 }
%struct.kstat = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.path*, %struct.path** %5, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call %struct.inode* @d_inode(%struct.TYPE_4__* %15)
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.path*, %struct.path** %5, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %10, align 8
  %22 = load %struct.super_block*, %struct.super_block** %10, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %23, align 8
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %11, align 8
  %25 = load %struct.path*, %struct.path** %5, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @ocfs2_inode_revalidate(%struct.TYPE_4__* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %68

40:                                               ; preds = %4
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load %struct.kstat*, %struct.kstat** %6, align 8
  %43 = call i32 @generic_fillattr(%struct.inode* %41, %struct.kstat* %42)
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load %struct.kstat*, %struct.kstat** %6, align 8
  %54 = getelementptr inbounds %struct.kstat, %struct.kstat* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 511
  %57 = ashr i32 %56, 9
  %58 = load %struct.kstat*, %struct.kstat** %6, align 8
  %59 = getelementptr inbounds %struct.kstat, %struct.kstat* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %52, %40
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.kstat*, %struct.kstat** %6, align 8
  %67 = getelementptr inbounds %struct.kstat, %struct.kstat* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %39
  %69 = load i32, i32* %12, align 4
  ret i32 %69
}

declare dso_local %struct.inode* @d_inode(%struct.TYPE_4__*) #1

declare dso_local i32 @ocfs2_inode_revalidate(%struct.TYPE_4__*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
