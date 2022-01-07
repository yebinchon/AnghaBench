; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlm_alloc_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlm_alloc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nlm_host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"nlm_alloc_call: failed, waiting for memory\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_rqst*, align 8
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca %struct.nlm_rqst*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nlm_rqst* @kzalloc(i32 16, i32 %6)
  store %struct.nlm_rqst* %7, %struct.nlm_rqst** %4, align 8
  %8 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %9 = icmp ne %struct.nlm_rqst* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %11, i32 0, i32 3
  %13 = call i32 @refcount_set(i32* %12, i32 1)
  %14 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @locks_init_lock(i32* %17)
  %19 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @locks_init_lock(i32* %22)
  %24 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %25 = call i32 @nlm_get_host(%struct.nlm_host* %24)
  %26 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %27 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  store %struct.nlm_rqst* %28, %struct.nlm_rqst** %2, align 8
  br label %39

29:                                               ; preds = %5
  %30 = call i64 (...) @signalled()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %38

33:                                               ; preds = %29
  %34 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 5, %35
  %37 = call i32 @schedule_timeout_interruptible(i32 %36)
  br label %5

38:                                               ; preds = %32
  store %struct.nlm_rqst* null, %struct.nlm_rqst** %2, align 8
  br label %39

39:                                               ; preds = %38, %10
  %40 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  ret %struct.nlm_rqst* %40
}

declare dso_local %struct.nlm_rqst* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @locks_init_lock(i32*) #1

declare dso_local i32 @nlm_get_host(%struct.nlm_host*) #1

declare dso_local i64 @signalled(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
