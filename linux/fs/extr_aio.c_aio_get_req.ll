; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_kiocb = type { i32*, i32, i32, %struct.kioctx* }
%struct.kioctx = type { i32 }

@kiocb_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aio_kiocb* (%struct.kioctx*)* @aio_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aio_kiocb* @aio_get_req(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.aio_kiocb*, align 8
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca %struct.aio_kiocb*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %3, align 8
  %5 = load i32, i32* @kiocb_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.aio_kiocb* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.aio_kiocb* %7, %struct.aio_kiocb** %4, align 8
  %8 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %9 = icmp ne %struct.aio_kiocb* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.aio_kiocb* null, %struct.aio_kiocb** %2, align 8
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %17 = call i32 @get_reqs_available(%struct.kioctx* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @kiocb_cachep, align 4
  %25 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %26 = call i32 @kmem_cache_free(i32 %24, %struct.aio_kiocb* %25)
  store %struct.aio_kiocb* null, %struct.aio_kiocb** %2, align 8
  br label %43

27:                                               ; preds = %15
  %28 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %29 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %28, i32 0, i32 0
  %30 = call i32 @percpu_ref_get(i32* %29)
  %31 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %32 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %33 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %32, i32 0, i32 3
  store %struct.kioctx* %31, %struct.kioctx** %33, align 8
  %34 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %35 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %34, i32 0, i32 2
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %38 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %37, i32 0, i32 1
  %39 = call i32 @refcount_set(i32* %38, i32 2)
  %40 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  %41 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.aio_kiocb*, %struct.aio_kiocb** %4, align 8
  store %struct.aio_kiocb* %42, %struct.aio_kiocb** %2, align 8
  br label %43

43:                                               ; preds = %27, %23, %14
  %44 = load %struct.aio_kiocb*, %struct.aio_kiocb** %2, align 8
  ret %struct.aio_kiocb* %44
}

declare dso_local %struct.aio_kiocb* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_reqs_available(%struct.kioctx*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.aio_kiocb*) #1

declare dso_local i32 @percpu_ref_get(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
