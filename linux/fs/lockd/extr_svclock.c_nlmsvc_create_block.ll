; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_create_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_create_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_block = type { %struct.nlm_rqst*, i32, %struct.nlm_file*, %struct.nlm_host*, i32, i32, i32 }
%struct.nlm_rqst = type { %struct.nlm_block*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.svc_rqst = type { i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32, i32 }
%struct.nlm_lock = type { i32 }
%struct.nlm_cookie = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FL_SLEEP = common dso_local global i32 0, align 4
@nlmsvc_lock_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"lockd: created block %p...\0A\00", align 1
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlm_block* (%struct.svc_rqst*, %struct.nlm_host*, %struct.nlm_file*, %struct.nlm_lock*, %struct.nlm_cookie*)* @nlmsvc_create_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlm_block* @nlmsvc_create_block(%struct.svc_rqst* %0, %struct.nlm_host* %1, %struct.nlm_file* %2, %struct.nlm_lock* %3, %struct.nlm_cookie* %4) #0 {
  %6 = alloca %struct.nlm_block*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.nlm_host*, align 8
  %9 = alloca %struct.nlm_file*, align 8
  %10 = alloca %struct.nlm_lock*, align 8
  %11 = alloca %struct.nlm_cookie*, align 8
  %12 = alloca %struct.nlm_block*, align 8
  %13 = alloca %struct.nlm_rqst*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.nlm_host* %1, %struct.nlm_host** %8, align 8
  store %struct.nlm_file* %2, %struct.nlm_file** %9, align 8
  store %struct.nlm_lock* %3, %struct.nlm_lock** %10, align 8
  store %struct.nlm_cookie* %4, %struct.nlm_cookie** %11, align 8
  store %struct.nlm_rqst* null, %struct.nlm_rqst** %13, align 8
  %14 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %15 = call %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host* %14)
  store %struct.nlm_rqst* %15, %struct.nlm_rqst** %13, align 8
  %16 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %17 = icmp eq %struct.nlm_rqst* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.nlm_block* null, %struct.nlm_block** %6, align 8
  br label %96

19:                                               ; preds = %5
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.nlm_block* @kzalloc(i32 48, i32 %20)
  store %struct.nlm_block* %21, %struct.nlm_block** %12, align 8
  %22 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %23 = icmp eq %struct.nlm_block* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %93

25:                                               ; preds = %19
  %26 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %27 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %26, i32 0, i32 6
  %28 = call i32 @kref_init(i32* %27)
  %29 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %30 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %29, i32 0, i32 5
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %33 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %32, i32 0, i32 1
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %36 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %37 = call i32 @nlmsvc_setgrantargs(%struct.nlm_rqst* %35, %struct.nlm_lock* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  br label %90

40:                                               ; preds = %25
  %41 = load i32, i32* @FL_SLEEP, align 4
  %42 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %43 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %41
  store i32 %48, i32* %46, align 8
  %49 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %50 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* @nlmsvc_lock_operations, i32** %53, align 8
  %54 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %55 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @nlmclnt_next_cookie(i32* %56)
  %58 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %59 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.nlm_block* %58)
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %61 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %64 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %66 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %67 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %66, i32 0, i32 3
  store %struct.nlm_host* %65, %struct.nlm_host** %67, align 8
  %68 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %69 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %70 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %69, i32 0, i32 2
  store %struct.nlm_file* %68, %struct.nlm_file** %70, align 8
  %71 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %72 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %76 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %75, i32 0, i32 1
  %77 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %78 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %77, i32 0, i32 0
  %79 = call i32 @list_add(i32* %76, i32* %78)
  %80 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %81 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %82 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %81, i32 0, i32 0
  store %struct.nlm_rqst* %80, %struct.nlm_rqst** %82, align 8
  %83 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %84 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %85 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %87 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %88 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %87, i32 0, i32 0
  store %struct.nlm_block* %86, %struct.nlm_block** %88, align 8
  %89 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  store %struct.nlm_block* %89, %struct.nlm_block** %6, align 8
  br label %96

90:                                               ; preds = %39
  %91 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %92 = call i32 @kfree(%struct.nlm_block* %91)
  br label %93

93:                                               ; preds = %90, %24
  %94 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %95 = call i32 @nlmsvc_release_call(%struct.nlm_rqst* %94)
  store %struct.nlm_block* null, %struct.nlm_block** %6, align 8
  br label %96

96:                                               ; preds = %93, %40, %18
  %97 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  ret %struct.nlm_block* %97
}

declare dso_local %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host*) #1

declare dso_local %struct.nlm_block* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nlmsvc_setgrantargs(%struct.nlm_rqst*, %struct.nlm_lock*) #1

declare dso_local i32 @nlmclnt_next_cookie(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.nlm_block*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.nlm_block*) #1

declare dso_local i32 @nlmsvc_release_call(%struct.nlm_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
