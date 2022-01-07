; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_atime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.vfsmount = type { i32 }
%struct.buffer_head = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_inode_lock_atime(%struct.inode* %0, %struct.vfsmount* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @ocfs2_inode_lock(%struct.inode* %15, %struct.buffer_head** null, i32 0)
  store i32 %16, i32* %10, align 4
  br label %20

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @ocfs2_try_inode_lock(%struct.inode* %18, %struct.buffer_head** null, i32 0)
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %79

33:                                               ; preds = %20
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %36 = call i64 @ocfs2_should_update_atime(%struct.inode* %34, %struct.vfsmount* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %33
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @ocfs2_inode_unlock(%struct.inode* %39, i32 0)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @ocfs2_inode_lock(%struct.inode* %44, %struct.buffer_head** %11, i32 1)
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i32 @ocfs2_try_inode_lock(%struct.inode* %47, %struct.buffer_head** %11, i32 1)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @mlog_errno(i32 %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %79

62:                                               ; preds = %49
  %63 = load i32*, i32** %8, align 8
  store i32 1, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %66 = call i64 @ocfs2_should_update_atime(%struct.inode* %64, %struct.vfsmount* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = call i32 @ocfs2_update_inode_atime(%struct.inode* %69, %struct.buffer_head* %70)
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %74 = call i32 @brelse(%struct.buffer_head* %73)
  br label %77

75:                                               ; preds = %33
  %76 = load i32*, i32** %8, align 8
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %60, %31
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_try_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_should_update_atime(%struct.inode*, %struct.vfsmount*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_update_inode_atime(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
