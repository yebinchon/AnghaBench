; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_export.c_gfs2_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_export.c_gfs2_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, i32, i32 }
%struct.get_name_filldir = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.file_ra_state = type { i32 }

@get_name_filldir = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, %struct.dentry*)* @gfs2_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_get_name(%struct.dentry* %0, i8* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca %struct.get_name_filldir, align 8
  %13 = alloca %struct.gfs2_holder, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.file_ra_state, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = call %struct.inode* @d_inode(%struct.dentry* %18)
  store %struct.inode* %19, %struct.inode** %9, align 8
  %20 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* @get_name_filldir, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 2
  %26 = bitcast %struct.TYPE_3__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 8, i1 false)
  %27 = bitcast %struct.file_ra_state* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %86

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISDIR(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = icmp ne %struct.inode* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %86

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %46)
  store %struct.gfs2_inode* %47, %struct.gfs2_inode** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %48)
  store %struct.gfs2_inode* %49, %struct.gfs2_inode** %11, align 8
  %50 = load i8*, i8** %6, align 8
  store i8 0, i8* %50, align 1
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %52 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %57 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LM_ST_SHARED, align 4
  %65 = call i32 @gfs2_glock_nq_init(i32 %63, i32 %64, i32 0, %struct.gfs2_holder* %13)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %45
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %4, align 4
  br label %86

70:                                               ; preds = %45
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = getelementptr inbounds %struct.get_name_filldir, %struct.get_name_filldir* %12, i32 0, i32 1
  %73 = call i32 @gfs2_dir_read(%struct.inode* %71, %struct.TYPE_4__* %72, %struct.file_ra_state* %15)
  store i32 %73, i32* %14, align 4
  %74 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %13)
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %81, %77, %70
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %68, %42, %30
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_dir_read(%struct.inode*, %struct.TYPE_4__*, %struct.file_ra_state*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
