; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_op_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_op_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_kernel_op_s = type { %struct.TYPE_4__, i32, i64, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@op_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ORANGEFS_VFS_OP_INVALID = common dso_local global i8* null, align 8
@OP_VFS_STATE_UNKNOWN = common dso_local global i32 0, align 4
@GOSSIP_CACHE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Alloced OP (%p: %llu %s)\0A\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"op_alloc: kmem_cache_zalloc failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.orangefs_kernel_op_s* @op_alloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.orangefs_kernel_op_s*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.orangefs_kernel_op_s* null, %struct.orangefs_kernel_op_s** %3, align 8
  %4 = load i32, i32* @op_cache, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.orangefs_kernel_op_s* @kmem_cache_zalloc(i32 %4, i32 %5)
  store %struct.orangefs_kernel_op_s* %6, %struct.orangefs_kernel_op_s** %3, align 8
  %7 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %8 = icmp ne %struct.orangefs_kernel_op_s* %7, null
  br i1 %8, label %9, label %60

9:                                                ; preds = %1
  %10 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %11 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %10, i32 0, i32 7
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %14 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %13, i32 0, i32 6
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %17 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %16, i32 0, i32 5
  %18 = call i32 @init_completion(i32* %17)
  %19 = load i8*, i8** @ORANGEFS_VFS_OP_INVALID, align 8
  %20 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %21 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @ORANGEFS_VFS_OP_INVALID, align 8
  %24 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %25 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %28 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load i32, i32* @OP_VFS_STATE_UNKNOWN, align 4
  %31 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %32 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %34 = call i32 @orangefs_new_tag(%struct.orangefs_kernel_op_s* %33)
  %35 = load i8*, i8** %2, align 8
  %36 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %37 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %40 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @GOSSIP_CACHE_DEBUG, align 4
  %42 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %43 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %44 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @llu(i32 %45)
  %47 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %48 = call i32 @get_opname_string(%struct.orangefs_kernel_op_s* %47)
  %49 = call i32 @gossip_debug(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.orangefs_kernel_op_s* %42, i32 %46, i32 %48)
  %50 = call i32 (...) @current_fsuid()
  %51 = call i32 @from_kuid(i32* @init_user_ns, i32 %50)
  %52 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %53 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = call i32 (...) @current_fsgid()
  %56 = call i32 @from_kgid(i32* @init_user_ns, i32 %55)
  %57 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  %58 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %62

60:                                               ; preds = %1
  %61 = call i32 @gossip_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %9
  %63 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %3, align 8
  ret %struct.orangefs_kernel_op_s* %63
}

declare dso_local %struct.orangefs_kernel_op_s* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @orangefs_new_tag(%struct.orangefs_kernel_op_s*) #1

declare dso_local i32 @gossip_debug(i32, i8*, %struct.orangefs_kernel_op_s*, i32, i32) #1

declare dso_local i32 @llu(i32) #1

declare dso_local i32 @get_opname_string(%struct.orangefs_kernel_op_s*) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @gossip_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
