; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_gfs2_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.gfs2_inode = type { i64, i32 }
%struct.gfs2_ea_request = type { i8*, i64 }
%struct.gfs2_holder = type { i32 }
%struct.ea_list = type { i32, %struct.gfs2_ea_request* }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@ea_list_i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_ea_request, align 8
  %10 = alloca %struct.gfs2_holder, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ea_list, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call i32 @d_inode(%struct.dentry* %13)
  %15 = call %struct.gfs2_inode* @GFS2_I(i32 %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %8, align 8
  %16 = call i32 @memset(%struct.gfs2_ea_request* %9, i32 0, i32 16)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %9, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %9, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LM_ST_SHARED, align 4
  %29 = load i32, i32* @LM_FLAG_ANY, align 4
  %30 = call i32 @gfs2_glock_nq_init(i32 %27, i32 %28, i32 %29, %struct.gfs2_holder* %10)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %24
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %12, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %12, i32 0, i32 1
  store %struct.gfs2_ea_request* %9, %struct.gfs2_ea_request** %42, align 8
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %44 = load i32, i32* @ea_list_i, align 4
  %45 = call i32 @ea_foreach(%struct.gfs2_inode* %43, i32 %44, %struct.ea_list* %12)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51, %35
  %53 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %10)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %33
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @memset(%struct.gfs2_ea_request*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @ea_foreach(%struct.gfs2_inode*, i32, %struct.ea_list*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
