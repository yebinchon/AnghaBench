; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_tracker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.pid = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res }

@current = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Recursive locking is not permitted to upgrade to EX level from PR level.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_GETBH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_inode_lock_tracker(%struct.inode* %0, %struct.buffer_head** %1, i32 %2, %struct.ocfs2_lock_holder* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_lock_holder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_lock_res*, align 8
  %12 = alloca %struct.ocfs2_lock_holder*, align 8
  %13 = alloca %struct.pid*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_lock_holder* %3, %struct.ocfs2_lock_holder** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call %struct.pid* @task_pid(i32 %14)
  store %struct.pid* %15, %struct.pid** %13, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ocfs2_lock_res* %18, %struct.ocfs2_lock_res** %11, align 8
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %11, align 8
  %20 = load %struct.pid*, %struct.pid** %13, align 8
  %21 = call %struct.ocfs2_lock_holder* @ocfs2_pid_holder(%struct.ocfs2_lock_res* %19, %struct.pid* %20)
  store %struct.ocfs2_lock_holder* %21, %struct.ocfs2_lock_holder** %12, align 8
  %22 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %12, align 8
  %23 = icmp ne %struct.ocfs2_lock_holder* %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ocfs2_inode_lock_full(%struct.inode* %25, %struct.buffer_head** %26, i32 %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %95

41:                                               ; preds = %24
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %9, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_holder, %struct.ocfs2_lock_holder* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %11, align 8
  %46 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %9, align 8
  %47 = call i32 @ocfs2_add_holder(%struct.ocfs2_lock_res* %45, %struct.ocfs2_lock_holder* %46)
  store i32 0, i32* %5, align 4
  br label %95

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %12, align 8
  %53 = getelementptr inbounds %struct.ocfs2_lock_holder, %struct.ocfs2_lock_holder* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i1 [ false, %48 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = call i32 @mlog(i32 %63, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 (...) @dump_stack()
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %95

68:                                               ; preds = %57
  %69 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %70 = icmp ne %struct.buffer_head** %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @OCFS2_META_LOCK_GETBH, align 4
  %76 = call i32 @ocfs2_inode_lock_full(%struct.inode* %72, %struct.buffer_head** %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %95

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %12, align 8
  %92 = icmp ne %struct.ocfs2_lock_holder* %91, null
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %87, %62, %41, %39
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.pid* @task_pid(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_lock_holder* @ocfs2_pid_holder(%struct.ocfs2_lock_res*, %struct.pid*) #1

declare dso_local i32 @ocfs2_inode_lock_full(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_add_holder(%struct.ocfs2_lock_res*, %struct.ocfs2_lock_holder*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
