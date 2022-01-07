; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_preload.c_init_preload.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_preload.c_init_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__init_state = common dso_local global i64 0, align 8
@done = common dso_local global i64 0, align 8
@prepare = common dso_local global i64 0, align 8
@RTLD_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pthread_mutex_init\00", align 1
@ll_pthread_mutex_init = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"pthread_mutex_lock\00", align 1
@ll_pthread_mutex_lock = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"pthread_mutex_trylock\00", align 1
@ll_pthread_mutex_trylock = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"pthread_mutex_unlock\00", align 1
@ll_pthread_mutex_unlock = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"pthread_mutex_destroy\00", align 1
@ll_pthread_mutex_destroy = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"pthread_rwlock_init\00", align 1
@ll_pthread_rwlock_init = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"pthread_rwlock_destroy\00", align 1
@ll_pthread_rwlock_destroy = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"pthread_rwlock_rdlock\00", align 1
@ll_pthread_rwlock_rdlock = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"pthread_rwlock_tryrdlock\00", align 1
@ll_pthread_rwlock_tryrdlock = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"pthread_rwlock_wrlock\00", align 1
@ll_pthread_rwlock_wrlock = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"pthread_rwlock_trywrlock\00", align 1
@ll_pthread_rwlock_trywrlock = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"pthread_rwlock_unlock\00", align 1
@ll_pthread_rwlock_unlock = common dso_local global i8* null, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @init_preload, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_preload() #0 {
  %1 = load i64, i64* @__init_state, align 8
  %2 = load i64, i64* @done, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %32

5:                                                ; preds = %0
  %6 = load i64, i64* @prepare, align 8
  store i64 %6, i64* @__init_state, align 8
  %7 = load i32, i32* @RTLD_NEXT, align 4
  %8 = call i8* @dlsym(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** @ll_pthread_mutex_init, align 8
  %9 = load i32, i32* @RTLD_NEXT, align 4
  %10 = call i8* @dlsym(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** @ll_pthread_mutex_lock, align 8
  %11 = load i32, i32* @RTLD_NEXT, align 4
  %12 = call i8* @dlsym(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %12, i8** @ll_pthread_mutex_trylock, align 8
  %13 = load i32, i32* @RTLD_NEXT, align 4
  %14 = call i8* @dlsym(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** @ll_pthread_mutex_unlock, align 8
  %15 = load i32, i32* @RTLD_NEXT, align 4
  %16 = call i8* @dlsym(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i8* %16, i8** @ll_pthread_mutex_destroy, align 8
  %17 = load i32, i32* @RTLD_NEXT, align 4
  %18 = call i8* @dlsym(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i8* %18, i8** @ll_pthread_rwlock_init, align 8
  %19 = load i32, i32* @RTLD_NEXT, align 4
  %20 = call i8* @dlsym(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i8* %20, i8** @ll_pthread_rwlock_destroy, align 8
  %21 = load i32, i32* @RTLD_NEXT, align 4
  %22 = call i8* @dlsym(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i8* %22, i8** @ll_pthread_rwlock_rdlock, align 8
  %23 = load i32, i32* @RTLD_NEXT, align 4
  %24 = call i8* @dlsym(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i8* %24, i8** @ll_pthread_rwlock_tryrdlock, align 8
  %25 = load i32, i32* @RTLD_NEXT, align 4
  %26 = call i8* @dlsym(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i8* %26, i8** @ll_pthread_rwlock_wrlock, align 8
  %27 = load i32, i32* @RTLD_NEXT, align 4
  %28 = call i8* @dlsym(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i8* %28, i8** @ll_pthread_rwlock_trywrlock, align 8
  %29 = load i32, i32* @RTLD_NEXT, align 4
  %30 = call i8* @dlsym(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i8* %30, i8** @ll_pthread_rwlock_unlock, align 8
  %31 = load i64, i64* @done, align 8
  store i64 %31, i64* @__init_state, align 8
  br label %32

32:                                               ; preds = %5, %4
  ret void
}

declare dso_local i8* @dlsym(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
