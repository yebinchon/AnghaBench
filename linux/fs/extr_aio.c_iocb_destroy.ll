; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_iocb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_iocb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_kiocb = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@kiocb_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aio_kiocb*)* @iocb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iocb_destroy(%struct.aio_kiocb* %0) #0 {
  %2 = alloca %struct.aio_kiocb*, align 8
  store %struct.aio_kiocb* %0, %struct.aio_kiocb** %2, align 8
  %3 = load %struct.aio_kiocb*, %struct.aio_kiocb** %2, align 8
  %4 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.aio_kiocb*, %struct.aio_kiocb** %2, align 8
  %9 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @eventfd_ctx_put(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.aio_kiocb*, %struct.aio_kiocb** %2, align 8
  %14 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.aio_kiocb*, %struct.aio_kiocb** %2, align 8
  %19 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @fput(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.aio_kiocb*, %struct.aio_kiocb** %2, align 8
  %24 = getelementptr inbounds %struct.aio_kiocb, %struct.aio_kiocb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @percpu_ref_put(i32* %26)
  %28 = load i32, i32* @kiocb_cachep, align 4
  %29 = load %struct.aio_kiocb*, %struct.aio_kiocb** %2, align 8
  %30 = call i32 @kmem_cache_free(i32 %28, %struct.aio_kiocb* %29)
  ret void
}

declare dso_local i32 @eventfd_ctx_put(i64) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @percpu_ref_put(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.aio_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
