; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @gfs2_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_holder, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %12)
  store %struct.gfs2_inode* %13, %struct.gfs2_inode** %7, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %15 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %22 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %25 = call i32 @gfs2_glock_nq_init(i32 %23, i32 %24, i32 0, %struct.gfs2_holder* %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %105

30:                                               ; preds = %20
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i64 @IS_IMMUTABLE(%struct.inode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call i64 @IS_APPEND(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %30
  br label %96

41:                                               ; preds = %36
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = load %struct.iattr*, %struct.iattr** %5, align 8
  %44 = call i32 @setattr_prepare(%struct.dentry* %42, %struct.iattr* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %96

48:                                               ; preds = %41
  %49 = load %struct.iattr*, %struct.iattr** %5, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ATTR_SIZE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = load %struct.iattr*, %struct.iattr** %5, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gfs2_setattr_size(%struct.inode* %56, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %95

61:                                               ; preds = %48
  %62 = load %struct.iattr*, %struct.iattr** %5, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ATTR_UID, align 4
  %66 = load i32, i32* @ATTR_GID, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = load %struct.iattr*, %struct.iattr** %5, align 8
  %73 = call i32 @setattr_chown(%struct.inode* %71, %struct.iattr* %72)
  store i32 %73, i32* %9, align 4
  br label %94

74:                                               ; preds = %61
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = load %struct.iattr*, %struct.iattr** %5, align 8
  %77 = call i32 @gfs2_setattr_simple(%struct.inode* %75, %struct.iattr* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %74
  %81 = load %struct.iattr*, %struct.iattr** %5, align 8
  %82 = getelementptr inbounds %struct.iattr, %struct.iattr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATTR_MODE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @posix_acl_chmod(%struct.inode* %88, i32 %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %87, %80, %74
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94, %55
  br label %96

96:                                               ; preds = %95, %47, %40
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = call i32 @mark_inode_dirty(%struct.inode* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %8)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %28, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @gfs2_setattr_size(%struct.inode*, i32) #1

declare dso_local i32 @setattr_chown(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @gfs2_setattr_simple(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @posix_acl_chmod(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
