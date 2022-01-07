; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }

@XATTR_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_xattr_set(%struct.dentry* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.dentry* @ovl_i_dentry_upper(%struct.inode* %17)
  store %struct.dentry* %18, %struct.dentry** %14, align 8
  %19 = load %struct.dentry*, %struct.dentry** %14, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %25

22:                                               ; preds = %6
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call %struct.dentry* @ovl_dentry_lower(%struct.dentry* %23)
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi %struct.dentry* [ %19, %21 ], [ %24, %22 ]
  store %struct.dentry* %26, %struct.dentry** %15, align 8
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = call i32 @ovl_want_write(%struct.dentry* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %91

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load %struct.dentry*, %struct.dentry** %14, align 8
  %37 = icmp ne %struct.dentry* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load %struct.dentry*, %struct.dentry** %15, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @vfs_getxattr(%struct.dentry* %39, i8* %40, i32* null, i32 0)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %88

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %35, %32
  %47 = load %struct.dentry*, %struct.dentry** %14, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = call i32 @ovl_copy_up(%struct.dentry* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %88

55:                                               ; preds = %49
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %56)
  store %struct.dentry* %57, %struct.dentry** %15, align 8
  br label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.cred* @ovl_override_creds(i32 %61)
  store %struct.cred* %62, %struct.cred** %16, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.dentry*, %struct.dentry** %15, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @vfs_setxattr(%struct.dentry* %66, i8* %67, i8* %68, i64 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  br label %81

72:                                               ; preds = %58
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @XATTR_REPLACE, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  %78 = load %struct.dentry*, %struct.dentry** %15, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @vfs_removexattr(%struct.dentry* %78, i8* %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %72, %65
  %82 = load %struct.cred*, %struct.cred** %16, align 8
  %83 = call i32 @revert_creds(%struct.cred* %82)
  %84 = load %struct.dentry*, %struct.dentry** %15, align 8
  %85 = call i32 @d_inode(%struct.dentry* %84)
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call i32 @ovl_copyattr(i32 %85, %struct.inode* %86)
  br label %88

88:                                               ; preds = %81, %54, %44
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = call i32 @ovl_drop_write(%struct.dentry* %89)
  br label %91

91:                                               ; preds = %88, %31
  %92 = load i32, i32* %13, align 4
  ret i32 %92
}

declare dso_local %struct.dentry* @ovl_i_dentry_upper(%struct.inode*) #1

declare dso_local %struct.dentry* @ovl_dentry_lower(%struct.dentry*) #1

declare dso_local i32 @ovl_want_write(%struct.dentry*) #1

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i8*, i32*, i32) #1

declare dso_local i32 @ovl_copy_up(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @vfs_setxattr(%struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vfs_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @ovl_copyattr(i32, %struct.inode*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_drop_write(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
