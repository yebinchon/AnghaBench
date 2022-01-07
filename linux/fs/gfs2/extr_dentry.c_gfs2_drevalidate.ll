; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dentry.c_gfs2_drevalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dentry.c_gfs2_drevalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.gfs2_inode = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @gfs2_drevalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_drevalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gfs2_inode* null, %struct.gfs2_inode** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @LOOKUP_RCU, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ECHILD, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %102

22:                                               ; preds = %2
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call %struct.dentry* @dget_parent(%struct.dentry* %23)
  store %struct.dentry* %24, %struct.dentry** %6, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = call %struct.inode* @d_inode(%struct.dentry* %25)
  %27 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %26)
  store %struct.gfs2_sbd* %27, %struct.gfs2_sbd** %7, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call %struct.inode* @d_inode(%struct.dentry* %28)
  %30 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %29)
  store %struct.gfs2_inode* %30, %struct.gfs2_inode** %8, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = call %struct.inode* @d_inode(%struct.dentry* %31)
  store %struct.inode* %32, %struct.inode** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = call i64 @is_bad_inode(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %98

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %41)
  store %struct.gfs2_inode* %42, %struct.gfs2_inode** %11, align 8
  br label %43

43:                                               ; preds = %40, %22
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %13, align 4
  br label %98

52:                                               ; preds = %43
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %54 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @gfs2_glock_is_locked_by_me(i32 %55)
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %52
  %62 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %63 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LM_ST_SHARED, align 4
  %66 = call i32 @gfs2_glock_nq_init(i32 %64, i32 %65, i32 0, %struct.gfs2_holder* %10)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %98

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = call %struct.inode* @d_inode(%struct.dentry* %72)
  %74 = load %struct.dentry*, %struct.dentry** %4, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 0
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %77 = call i32 @gfs2_dir_check(%struct.inode* %73, i32* %75, %struct.gfs2_inode* %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = icmp ne %struct.inode* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  br label %91

85:                                               ; preds = %71
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  br label %91

91:                                               ; preds = %85, %80
  %92 = phi i32 [ %84, %80 ], [ %90, %85 ]
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %69, %51, %39
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = call i32 @dput(%struct.dentry* %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %19
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32* @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_dir_check(%struct.inode*, i32*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
