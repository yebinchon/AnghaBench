; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @gfs2_xattr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_xattr_set(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gfs2_inode*, align 8
  %17 = alloca %struct.gfs2_holder, align 4
  %18 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.inode*, %struct.inode** %11, align 8
  %20 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %16, align 8
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %22 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %18, align 4
  store i32 %26, i32* %8, align 4
  br label %76

27:                                               ; preds = %7
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @gfs2_glock_is_locked_by_me(%struct.TYPE_3__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %38 = call i32 @gfs2_glock_nq_init(%struct.TYPE_3__* %36, i64 %37, i32 0, %struct.gfs2_holder* %17)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %8, align 4
  br label %76

43:                                               ; preds = %33
  br label %60

44:                                               ; preds = %27
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %16, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LM_ST_EXCLUSIVE, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON_ONCE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %76

58:                                               ; preds = %44
  %59 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %17)
  br label %60

60:                                               ; preds = %58, %43
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %67 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__gfs2_xattr_set(%struct.inode* %61, i8* %62, i8* %63, i64 %64, i32 %65, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %17)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %17)
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %55, %41, %25
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(%struct.TYPE_3__*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_3__*, i64, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local i32 @__gfs2_xattr_set(%struct.inode*, i8*, i8*, i64, i32, i32) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
