; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_security.c_reiserfs_security_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_security.c_reiserfs_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.reiserfs_security_handle = type { i64, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@i_has_xattr_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_security_init(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2, %struct.reiserfs_security_handle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.reiserfs_security_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.reiserfs_security_handle* %3, %struct.reiserfs_security_handle** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %13 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i64 @IS_PRIVATE(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %73

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load %struct.qstr*, %struct.qstr** %8, align 8
  %22 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %23 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %22, i32 0, i32 2
  %24 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %25 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %24, i32 0, i32 1
  %26 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %27 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %26, i32 0, i32 0
  %28 = call i32 @security_old_inode_init_security(%struct.inode* %19, %struct.inode* %20, %struct.qstr* %21, i32** %23, i32** %25, i64* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %18
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %39 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %41 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %43 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %73

45:                                               ; preds = %18
  %46 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %47 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @reiserfs_xattrs_initialized(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = call i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %9, align 8
  %61 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @reiserfs_xattr_nblocks(%struct.inode* %59, i64 %62)
  %64 = add nsw i32 %58, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @i_has_xattr_dir, align 4
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %56, %50, %45
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %37, %17
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @security_old_inode_init_security(%struct.inode*, %struct.inode*, %struct.qstr*, i32**, i32**, i64*) #1

declare dso_local i64 @reiserfs_xattrs_initialized(i32) #1

declare dso_local i32 @reiserfs_xattr_jcreate_nblocks(%struct.inode*) #1

declare dso_local i32 @reiserfs_xattr_nblocks(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
