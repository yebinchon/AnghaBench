; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.dentry*, i32)* }

@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@slash_name = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@I_LINKABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @vfs_tmpfile(%struct.dentry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dentry* null, %struct.dentry** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = load i32, i32* @MAY_WRITE, align 4
  %17 = load i32, i32* @MAY_EXEC, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @inode_permission(%struct.inode* %15, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %92

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.inode*, %struct.dentry*, i32)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %92

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call %struct.dentry* @d_alloc(%struct.dentry* %36, i32* @slash_name)
  store %struct.dentry* %37, %struct.dentry** %8, align 8
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = icmp ne %struct.dentry* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %92

45:                                               ; preds = %33
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %49, align 8
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = load %struct.dentry*, %struct.dentry** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 %50(%struct.inode* %51, %struct.dentry* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %92

58:                                               ; preds = %45
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  %61 = load %struct.dentry*, %struct.dentry** %8, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.inode*, %struct.inode** %62, align 8
  store %struct.inode* %63, %struct.inode** %10, align 8
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = icmp ne %struct.inode* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %92

71:                                               ; preds = %58
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @O_EXCL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load i32, i32* @I_LINKABLE, align 4
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %76, %71
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call i32 @ima_post_create_tmpfile(%struct.inode* %89)
  %91 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %91, %struct.dentry** %4, align 8
  br label %97

92:                                               ; preds = %70, %57, %44, %32, %22
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = call i32 @dput(%struct.dentry* %93)
  %95 = load i32, i32* %11, align 4
  %96 = call %struct.dentry* @ERR_PTR(i32 %95)
  store %struct.dentry* %96, %struct.dentry** %4, align 8
  br label %97

97:                                               ; preds = %92, %88
  %98 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %98
}

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ima_post_create_tmpfile(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
