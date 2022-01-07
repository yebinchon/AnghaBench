; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.posix_acl = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_acl_chmod(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ocfs2_super* @OCFS2_SB(i32 %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISLNK(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %69

29:                                               ; preds = %21
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @down_read(i32* %32)
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %37 = call %struct.posix_acl* @ocfs2_get_acl_nolock(%struct.inode* %34, i32 %35, %struct.buffer_head* %36)
  store %struct.posix_acl* %37, %struct.posix_acl** %7, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @up_read(i32* %40)
  %42 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %43 = call i64 @IS_ERR(%struct.posix_acl* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %47 = icmp ne %struct.posix_acl* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45, %29
  %49 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %50 = call i32 @PTR_ERR(%struct.posix_acl* %49)
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %45
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__posix_acl_chmod(%struct.posix_acl** %7, i32 %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %51
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %64 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %65 = call i32 @ocfs2_set_acl(i32* null, %struct.inode* %62, i32* null, i32 %63, %struct.posix_acl* %64, i32* null, i32* null)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %67 = call i32 @posix_acl_release(%struct.posix_acl* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %59, %48, %28, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.posix_acl* @ocfs2_get_acl_nolock(%struct.inode*, i32, %struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @__posix_acl_chmod(%struct.posix_acl**, i32, i32) #1

declare dso_local i32 @ocfs2_set_acl(i32*, %struct.inode*, i32*, i32, %struct.posix_acl*, i32*, i32*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
