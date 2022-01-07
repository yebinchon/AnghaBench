; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_init_local_system_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_init_local_system_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }

@OCFS2_LAST_GLOBAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@NUM_SYSTEM_INODES = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"status=%d, sysfile=%d, slot=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_init_local_system_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_local_system_inodes(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @OCFS2_LAST_GLOBAL_SYSTEM_INODE, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NUM_SYSTEM_INODES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ocfs2_need_system_inode(%struct.ocfs2_super* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %51

18:                                               ; preds = %12
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %19, i32 %20, i32 %23)
  store %struct.inode* %24, %struct.inode** %3, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %18
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %29 = call i32 @ocfs2_release_system_inodes(%struct.ocfs2_super* %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %31 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EROFS, align 4
  %35 = sub nsw i32 0, %34
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %35, %33 ], [ %38, %36 ]
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @ML_ERROR, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mlog(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %46)
  br label %55

48:                                               ; preds = %18
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  br label %51

51:                                               ; preds = %48, %17
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %8

54:                                               ; preds = %8
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ocfs2_need_system_inode(%struct.ocfs2_super*, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_release_system_inodes(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
