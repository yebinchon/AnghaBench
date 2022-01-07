; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c___gfs2_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c___gfs2_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32)* @__gfs2_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @__gfs2_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %11)
  store %struct.gfs2_inode* %12, %struct.gfs2_inode** %6, align 8
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @gfs2_acl_name(i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @gfs2_xattr_acl_get(%struct.gfs2_inode* %21, i8* %22, i8** %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.posix_acl* @ERR_PTR(i32 %27)
  store %struct.posix_acl* %28, %struct.posix_acl** %3, align 8
  br label %36

29:                                               ; preds = %18
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.posix_acl* @posix_acl_from_xattr(i32* @init_user_ns, i8* %30, i32 %31)
  store %struct.posix_acl* %32, %struct.posix_acl** %7, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* %35, %struct.posix_acl** %3, align 8
  br label %36

36:                                               ; preds = %29, %26, %17
  %37 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %37
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i8* @gfs2_acl_name(i32) #1

declare dso_local i32 @gfs2_xattr_acl_get(%struct.gfs2_inode*, i8*, i8**) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
