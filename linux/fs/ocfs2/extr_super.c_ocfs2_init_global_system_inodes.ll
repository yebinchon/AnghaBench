; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_init_global_system_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_init_global_system_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.inode*, i32, %struct.inode*, i32 }
%struct.inode = type { i32 }

@OCFS2_FI_FLAG_SYSFILE = common dso_local global i32 0, align 4
@OCFS2_FIRST_ONLINE_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_LAST_GLOBAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Unable to load system inode %d, possibly corrupt fs?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_init_global_system_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_global_system_inodes(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %11 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %6, i32 %9, i32 %10, i32 0)
  store %struct.inode* %11, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i64 @IS_ERR(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @PTR_ERR(%struct.inode* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mlog_errno(i32 %18)
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 3
  store %struct.inode* %21, %struct.inode** %23, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @OCFS2_FI_FLAG_SYSFILE, align 4
  %29 = call %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %24, i32 %27, i32 %28, i32 0)
  store %struct.inode* %29, %struct.inode** %3, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i64 @IS_ERR(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call i32 @PTR_ERR(%struct.inode* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %88

38:                                               ; preds = %20
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 1
  store %struct.inode* %39, %struct.inode** %41, align 8
  %42 = load i32, i32* @OCFS2_FIRST_ONLINE_SYSTEM_INODE, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %84, %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @OCFS2_LAST_GLOBAL_SYSTEM_INODE, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ocfs2_need_system_inode(%struct.ocfs2_super* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %84

53:                                               ; preds = %47
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %54, i32 %55, i32 %58)
  store %struct.inode* %59, %struct.inode** %3, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = icmp ne %struct.inode* %60, null
  br i1 %61, label %81, label %62

62:                                               ; preds = %53
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %64 = call i32 @ocfs2_release_system_inodes(%struct.ocfs2_super* %63)
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %66 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EROFS, align 4
  %70 = sub nsw i32 0, %69
  br label %74

71:                                               ; preds = %62
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i32 [ %70, %68 ], [ %73, %71 ]
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  %78 = load i32, i32* @ML_ERROR, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @mlog(i32 %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %88

81:                                               ; preds = %53
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = call i32 @iput(%struct.inode* %82)
  br label %84

84:                                               ; preds = %81, %52
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %43

87:                                               ; preds = %43
  br label %88

88:                                               ; preds = %87, %74, %33, %15
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @mlog_errno(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_need_system_inode(%struct.ocfs2_super*, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_release_system_inodes(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
