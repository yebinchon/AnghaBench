; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_vfs_reflink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_vfs_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_CHOWN = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ocfs2_vfs_reflink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_vfs_reflink(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %10, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %125

19:                                               ; preds = %4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = call i32 @ocfs2_may_create(%struct.inode* %20, %struct.dentry* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %125

27:                                               ; preds = %19
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EXDEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %125

38:                                               ; preds = %27
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = call i64 @IS_APPEND(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i64 @IS_IMMUTABLE(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %125

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @S_ISREG(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %125

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = call i32 (...) @current_fsuid()
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @uid_eq(i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @CAP_CHOWN, align 4
  %70 = call i32 @capable(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %125

75:                                               ; preds = %68, %61
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @in_group_p(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @CAP_CHOWN, align 4
  %83 = call i32 @capable(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @EPERM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %125

88:                                               ; preds = %81, %75
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = load i32, i32* @MAY_READ, align 4
  %95 = call i32 @inode_permission(%struct.inode* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %125

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i32 @inode_lock(%struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = call i32 @dquot_initialize(%struct.inode* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %101
  %109 = load %struct.dentry*, %struct.dentry** %6, align 8
  %110 = load %struct.inode*, %struct.inode** %7, align 8
  %111 = load %struct.dentry*, %struct.dentry** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @ocfs2_reflink(%struct.dentry* %109, %struct.inode* %110, %struct.dentry* %111, i32 %112)
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = call i32 @inode_unlock(%struct.inode* %115)
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = load %struct.inode*, %struct.inode** %7, align 8
  %121 = load %struct.dentry*, %struct.dentry** %8, align 8
  %122 = call i32 @fsnotify_create(%struct.inode* %120, %struct.dentry* %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %98, %85, %72, %55, %46, %35, %25, %16
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ocfs2_may_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @in_group_p(i32) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @ocfs2_reflink(%struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
