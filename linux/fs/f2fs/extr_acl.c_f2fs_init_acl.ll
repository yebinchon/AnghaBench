; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_init_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c_f2fs_init_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i32 }
%struct.page = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_init_acl(%struct.inode* %0, %struct.inode* %1, %struct.page* %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca %struct.posix_acl*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %10, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.page*, %struct.page** %9, align 8
  %17 = call i32 @f2fs_acl_create(%struct.inode* %13, i32* %15, %struct.posix_acl** %10, %struct.posix_acl** %11, %struct.page* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %23, i32 1)
  %25 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %26 = icmp ne %struct.posix_acl* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %30 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = call i32 @__f2fs_set_acl(%struct.inode* %28, i32 %29, %struct.posix_acl* %30, %struct.page* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %34 = call i32 @posix_acl_release(%struct.posix_acl* %33)
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %40 = icmp ne %struct.posix_acl* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %47 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = call i32 @__f2fs_set_acl(%struct.inode* %45, i32 %46, %struct.posix_acl* %47, %struct.page* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %52 = call i32 @posix_acl_release(%struct.posix_acl* %51)
  br label %56

53:                                               ; preds = %38
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @f2fs_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**, %struct.page*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @__f2fs_set_acl(%struct.inode*, i32, %struct.posix_acl*, %struct.page*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
