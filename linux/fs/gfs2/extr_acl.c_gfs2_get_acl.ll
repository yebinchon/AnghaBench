; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c_gfs2_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c_gfs2_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @gfs2_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %11)
  store %struct.gfs2_inode* %12, %struct.gfs2_inode** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gfs2_glock_is_locked_by_me(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %2
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LM_ST_SHARED, align 4
  %23 = load i32, i32* @LM_FLAG_ANY, align 4
  %24 = call i32 @gfs2_glock_nq_init(i32 %21, i32 %22, i32 %23, %struct.gfs2_holder* %7)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.posix_acl* @ERR_PTR(i32 %28)
  store %struct.posix_acl* %29, %struct.posix_acl** %3, align 8
  br label %41

30:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.posix_acl* @__gfs2_get_acl(%struct.inode* %32, i32 %33)
  store %struct.posix_acl* %34, %struct.posix_acl** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  store %struct.posix_acl* %40, %struct.posix_acl** %3, align 8
  br label %41

41:                                               ; preds = %39, %27
  %42 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %42
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @__gfs2_get_acl(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
