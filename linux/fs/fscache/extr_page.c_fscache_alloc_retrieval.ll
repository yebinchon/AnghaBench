; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_alloc_retrieval.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_alloc_retrieval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_retrieval = type { %struct.fscache_cookie*, i32, i32, i8*, i32, %struct.address_space*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fscache_cookie = type { i32 }
%struct.address_space = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@fscache_n_retrievals_nomem = common dso_local global i32 0, align 4
@fscache_do_cancel_retrieval = common dso_local global i32 0, align 4
@fscache_release_retrieval_op = common dso_local global i32 0, align 4
@FSCACHE_OP_MYTHREAD = common dso_local global i64 0, align 8
@FSCACHE_OP_WAITING = common dso_local global i64 0, align 8
@FSCACHE_OP_UNUSE_COOKIE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_retrieval* (%struct.fscache_cookie*, %struct.address_space*, i32, i8*)* @fscache_alloc_retrieval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_retrieval* @fscache_alloc_retrieval(%struct.fscache_cookie* %0, %struct.address_space* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.fscache_retrieval*, align 8
  %6 = alloca %struct.fscache_cookie*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fscache_retrieval*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @GFP_NOIO, align 4
  %12 = call %struct.fscache_retrieval* @kzalloc(i32 48, i32 %11)
  store %struct.fscache_retrieval* %12, %struct.fscache_retrieval** %10, align 8
  %13 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %14 = icmp ne %struct.fscache_retrieval* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i32 @fscache_stat(i32* @fscache_n_retrievals_nomem)
  store %struct.fscache_retrieval* null, %struct.fscache_retrieval** %5, align 8
  br label %62

17:                                               ; preds = %4
  %18 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %19 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %20 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %19, i32 0, i32 6
  %21 = load i32, i32* @fscache_do_cancel_retrieval, align 4
  %22 = load i32, i32* @fscache_release_retrieval_op, align 4
  %23 = call i32 @fscache_operation_init(%struct.fscache_cookie* %18, %struct.TYPE_2__* %20, i32* null, i32 %21, i32 %22)
  %24 = load i64, i64* @FSCACHE_OP_MYTHREAD, align 8
  %25 = load i64, i64* @FSCACHE_OP_WAITING, align 8
  %26 = shl i64 1, %25
  %27 = or i64 %24, %26
  %28 = load i64, i64* @FSCACHE_OP_UNUSE_COOKIE, align 8
  %29 = shl i64 1, %28
  %30 = or i64 %27, %29
  %31 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %32 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %35 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %36 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %35, i32 0, i32 0
  store %struct.fscache_cookie* %34, %struct.fscache_cookie** %36, align 8
  %37 = load %struct.address_space*, %struct.address_space** %7, align 8
  %38 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %39 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %38, i32 0, i32 5
  store %struct.address_space* %37, %struct.address_space** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %42 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %45 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @jiffies, align 4
  %47 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %48 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %50 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %49, i32 0, i32 1
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %17
  %55 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %56 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %55, i32 0, i32 0
  %57 = load %struct.fscache_cookie*, %struct.fscache_cookie** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @fscache_get_context(%struct.fscache_cookie* %57, i8* %58)
  br label %60

60:                                               ; preds = %54, %17
  %61 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  store %struct.fscache_retrieval* %61, %struct.fscache_retrieval** %5, align 8
  br label %62

62:                                               ; preds = %60, %15
  %63 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %5, align 8
  ret %struct.fscache_retrieval* %63
}

declare dso_local %struct.fscache_retrieval* @kzalloc(i32, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @fscache_operation_init(%struct.fscache_cookie*, %struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fscache_get_context(%struct.fscache_cookie*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
