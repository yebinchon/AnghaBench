; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.dentry = type { i32 }

@CAP_MKNOD = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = call i32 @may_create(%struct.inode* %11, %struct.dentry* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %82

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @S_ISCHR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @S_ISBLK(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @CAP_MKNOD, align 4
  %28 = call i32 @capable(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %82

33:                                               ; preds = %26, %22
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.inode*, %struct.dentry*, i32, i32)**
  %39 = load i32 (%struct.inode*, %struct.dentry*, i32, i32)*, i32 (%struct.inode*, %struct.dentry*, i32, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.inode*, %struct.dentry*, i32, i32)* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %82

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @devcgroup_inode_mknod(i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %82

52:                                               ; preds = %44
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @security_inode_mknod(%struct.inode* %53, %struct.dentry* %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %52
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = bitcast {}** %66 to i32 (%struct.inode*, %struct.dentry*, i32, i32)**
  %68 = load i32 (%struct.inode*, %struct.dentry*, i32, i32)*, i32 (%struct.inode*, %struct.dentry*, i32, i32)** %67, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 %68(%struct.inode* %69, %struct.dentry* %70, i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %62
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = call i32 @fsnotify_create(%struct.inode* %77, %struct.dentry* %78)
  br label %80

80:                                               ; preds = %76, %62
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %60, %50, %41, %30, %16
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @devcgroup_inode_mknod(i32, i32) #1

declare dso_local i32 @security_inode_mknod(%struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
