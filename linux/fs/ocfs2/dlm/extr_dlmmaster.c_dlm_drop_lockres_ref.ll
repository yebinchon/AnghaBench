; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_drop_lockres_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_drop_lockres_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.dlm_deref_lockres = type { i32, i32, i32 }

@O2NM_MAX_NAME_LEN = common dso_local global i32 0, align 4
@DLM_DEREF_LOCKRES_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: res %.*s, error %d send DEREF to node %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: res %.*s, DEREF to node %u got %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_drop_lockres_ref(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.dlm_deref_lockres, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @O2NM_MAX_NAME_LEN, align 4
  %20 = icmp ugt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = call i32 @memset(%struct.dlm_deref_lockres* %5, i32 0, i32 12)
  %24 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dlm_deref_lockres, %struct.dlm_deref_lockres* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.dlm_deref_lockres, %struct.dlm_deref_lockres* %5, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.dlm_deref_lockres, %struct.dlm_deref_lockres* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @memcpy(i32 %31, i8* %32, i32 %33)
  %35 = load i32, i32* @DLM_DEREF_LOCKRES_MSG, align 4
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %37 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @o2net_send_message(i32 %35, i32 %38, %struct.dlm_deref_lockres* %5, i32 12, i32 %41, i32* %7)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %2
  %46 = load i32, i32* @ML_ERROR, align 4
  %47 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %48 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mlog(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i8* %51, i32 %52, i32 %55)
  br label %84

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i32, i32* @ML_ERROR, align 4
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %63 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %68 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mlog(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i8* %66, i32 %69, i32 %70)
  %72 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %73 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = call i32 (...) @BUG()
  br label %80

80:                                               ; preds = %78, %60
  br label %83

81:                                               ; preds = %57
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %83, %45
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.dlm_deref_lockres*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_deref_lockres*, i32, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
