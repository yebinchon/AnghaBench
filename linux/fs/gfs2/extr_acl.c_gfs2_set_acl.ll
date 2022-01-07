; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c_gfs2_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c_gfs2_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.posix_acl = type { i64 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_holder, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %19 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @GFS2_SB(%struct.inode* %21)
  %23 = call i64 @GFS2_ACL_MAX_ENTRIES(i32 %22)
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @E2BIG, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %100

28:                                               ; preds = %17, %3
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %30 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %100

35:                                               ; preds = %28
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gfs2_glock_is_locked_by_me(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %46 = call i32 @gfs2_glock_nq_init(i32 %44, i32 %45, i32 0, %struct.gfs2_holder* %9)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %100

51:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %61 = icmp ne %struct.posix_acl* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call i32 @posix_acl_update_mode(%struct.inode* %63, i64* %12, %struct.posix_acl** %6)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %93

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %59, %52
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @__gfs2_set_acl(%struct.inode* %70, %struct.posix_acl* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = call i32 @current_time(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = call i32 @mark_inode_dirty(%struct.inode* %90)
  br label %92

92:                                               ; preds = %82, %76, %69
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %9)
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %49, %33, %25
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @GFS2_ACL_MAX_ENTRIES(i32) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i64*, %struct.posix_acl**) #1

declare dso_local i32 @__gfs2_set_acl(%struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
