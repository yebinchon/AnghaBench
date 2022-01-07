; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_lockres_master_requery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_lockres_master_requery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_node_iter = type { i32 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"lock master is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i64*)* @dlm_lockres_master_requery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_lockres_master_requery(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i64* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.dlm_node_iter, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 %10, i64* %11, align 8
  %12 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dlm_node_iter_init(i32 %17, %struct.dlm_node_iter* %7)
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  br label %22

22:                                               ; preds = %58, %31, %3
  %23 = call i32 @dlm_node_iter_next(%struct.dlm_node_iter* %7)
  store i32 %23, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %22

32:                                               ; preds = %25
  %33 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %34 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i64*, i64** %6, align 8
  %37 = call i32 @dlm_do_master_requery(%struct.dlm_ctxt* %33, %struct.dlm_lock_resource* %34, i32 %35, i64* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dlm_is_host_down(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 (...) @BUG()
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %59

58:                                               ; preds = %49
  br label %22

59:                                               ; preds = %54, %22
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_node_iter_init(i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_node_iter_next(%struct.dlm_node_iter*) #1

declare dso_local i32 @dlm_do_master_requery(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
