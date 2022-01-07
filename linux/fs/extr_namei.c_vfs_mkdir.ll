; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = call i32 @may_create(%struct.inode* %10, %struct.dentry* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.inode*, %struct.dentry*, i32)**
  %28 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.inode*, %struct.dentry*, i32)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %78

33:                                               ; preds = %22
  %34 = load i32, i32* @S_IRWXUGO, align 4
  %35 = load i32, i32* @S_ISVTX, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @security_inode_mkdir(%struct.inode* %39, %struct.dentry* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %78

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EMLINK, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %50, %47
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to i32 (%struct.inode*, %struct.dentry*, i32)**
  %65 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %64, align 8
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 %65(%struct.inode* %66, %struct.dentry* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %59
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = call i32 @fsnotify_mkdir(%struct.inode* %73, %struct.dentry* %74)
  br label %76

76:                                               ; preds = %72, %59
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %56, %45, %30, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @security_inode_mkdir(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
