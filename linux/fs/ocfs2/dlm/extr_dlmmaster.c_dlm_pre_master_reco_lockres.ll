; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_pre_master_reco_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_pre_master_reco_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32 }
%struct.dlm_node_iter = type { i32 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"%s: node %u has not seen node %u go down yet, and thinks the dead node is mastering the recovery lock.  must wait.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: reco lock master is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*)* @dlm_pre_master_reco_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_pre_master_reco_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.dlm_node_iter, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %14 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dlm_node_iter_init(i32 %15, %struct.dlm_node_iter* %5)
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock(i32* %18)
  br label %20

20:                                               ; preds = %79, %29, %2
  %21 = call i32 @dlm_node_iter_next(%struct.dlm_node_iter* %5)
  store i32 %21, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %20

30:                                               ; preds = %23
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dlm_do_master_requery(%struct.dlm_ctxt* %31, %struct.dlm_lock_resource* %32, i32 %33, i32* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dlm_is_host_down(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %37
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %52 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %51, i32 0, i32 2
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %56 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @test_bit(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load i32, i32* @ML_NOTICE, align 4
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %63 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %61, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %60, %50
  %71 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %72 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %71, i32 0, i32 2
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %75 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  br label %80

79:                                               ; preds = %46
  br label %20

80:                                               ; preds = %70, %20
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_node_iter_init(i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_node_iter_next(%struct.dlm_node_iter*) #1

declare dso_local i32 @dlm_do_master_requery(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
