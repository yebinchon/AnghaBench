; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_open_xa_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr.c_open_xa_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%X.%X\00", align 1
@I_MUTEX_XATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, i32)* @open_xa_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @open_xa_dir(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca [17 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.dentry* @open_xa_root(i32 %12, i32 %13)
  store %struct.dentry* %14, %struct.dentry** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = call i64 @IS_ERR(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %19, %struct.dentry** %3, align 8
  br label %74

20:                                               ; preds = %2
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.TYPE_2__* @INODE_PKEY(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i8* %21, i32 17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = call i32 @d_inode(%struct.dentry* %31)
  %33 = load i32, i32* @I_MUTEX_XATTR, align 4
  %34 = call i32 @inode_lock_nested(i32 %32, i32 %33)
  %35 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %38 = call i32 @strlen(i8* %37)
  %39 = call %struct.dentry* @lookup_one_len(i8* %35, %struct.dentry* %36, i32 %38)
  store %struct.dentry* %39, %struct.dentry** %7, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = call i64 @IS_ERR(%struct.dentry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %20
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = call i64 @d_really_is_negative(%struct.dentry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load i32, i32* @ENODATA, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @xattr_may_create(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = call i32 @d_inode(%struct.dentry* %54)
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = call i32 @xattr_mkdir(i32 %55, %struct.dentry* %56, i32 448)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = call i32 @dput(%struct.dentry* %62)
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.dentry* @ERR_PTR(i32 %64)
  store %struct.dentry* %65, %struct.dentry** %7, align 8
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %43, %20
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = call i32 @d_inode(%struct.dentry* %68)
  %70 = call i32 @inode_unlock(i32 %69)
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = call i32 @dput(%struct.dentry* %71)
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %73, %struct.dentry** %3, align 8
  br label %74

74:                                               ; preds = %67, %18
  %75 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %75
}

declare dso_local %struct.dentry* @open_xa_root(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i64 @xattr_may_create(i32) #1

declare dso_local i32 @xattr_mkdir(i32, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
