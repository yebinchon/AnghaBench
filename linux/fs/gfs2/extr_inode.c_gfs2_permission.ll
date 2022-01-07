; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_permission.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@MAY_NOT_BLOCK = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %7)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %10)
  store %struct.gfs2_inode* %11, %struct.gfs2_inode** %6, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @gfs2_glock_is_locked_by_me(i32 %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ECHILD, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LM_ST_SHARED, align 4
  %30 = load i32, i32* @LM_FLAG_ANY, align 4
  %31 = call i32 @gfs2_glock_nq_init(i32 %28, i32 %29, i32 %30, %struct.gfs2_holder* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAY_WRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i64 @IS_IMMUTABLE(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %42, %37
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @generic_permission(%struct.inode* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %34, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32* @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @generic_permission(%struct.inode*, i32) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
