; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call i32 @may_delete(%struct.inode* %7, %struct.dentry* %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %89

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.inode*, %struct.dentry*)**
  %20 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %19, align 8
  %21 = icmp ne i32 (%struct.inode*, %struct.dentry*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %89

25:                                               ; preds = %14
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = call i32 @dget(%struct.dentry* %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @inode_lock(%struct.TYPE_5__* %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i64 @is_local_mountpoint(%struct.dentry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %75

38:                                               ; preds = %25
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call i32 @security_inode_rmdir(%struct.inode* %39, %struct.dentry* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %75

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.inode*, %struct.dentry*)**
  %51 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %50, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = call i32 %51(%struct.inode* %52, %struct.dentry* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %75

58:                                               ; preds = %45
  %59 = load %struct.dentry*, %struct.dentry** %5, align 8
  %60 = call i32 @shrink_dcache_parent(%struct.dentry* %59)
  %61 = load i32, i32* @S_DEAD, align 4
  %62 = load %struct.dentry*, %struct.dentry** %5, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load %struct.dentry*, %struct.dentry** %5, align 8
  %69 = call i32 @dont_mount(%struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i32 @detach_mounts(%struct.dentry* %70)
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = load %struct.dentry*, %struct.dentry** %5, align 8
  %74 = call i32 @fsnotify_rmdir(%struct.inode* %72, %struct.dentry* %73)
  br label %75

75:                                               ; preds = %58, %57, %44, %37
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = call i32 @inode_unlock(%struct.TYPE_5__* %78)
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = call i32 @dput(%struct.dentry* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load %struct.dentry*, %struct.dentry** %5, align 8
  %86 = call i32 @d_delete(%struct.dentry* %85)
  br label %87

87:                                               ; preds = %84, %75
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %22, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @may_delete(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.TYPE_5__*) #1

declare dso_local i64 @is_local_mountpoint(%struct.dentry*) #1

declare dso_local i32 @security_inode_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @detach_mounts(%struct.dentry*) #1

declare dso_local i32 @fsnotify_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
