; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_free_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_free_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@REQ_F_FIXED_FILE = common dso_local global i32 0, align 4
@req_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_kiocb*)* @__io_free_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__io_free_req(%struct.io_kiocb* %0) #0 {
  %2 = alloca %struct.io_kiocb*, align 8
  store %struct.io_kiocb* %0, %struct.io_kiocb** %2, align 8
  %3 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %4 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %9 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @REQ_F_FIXED_FILE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %16 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @fput(i64 %17)
  br label %19

19:                                               ; preds = %14, %7, %1
  %20 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %21 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @percpu_ref_put(i32* %23)
  %25 = load i32, i32* @req_cachep, align 4
  %26 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %27 = call i32 @kmem_cache_free(i32 %25, %struct.io_kiocb* %26)
  ret void
}

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @percpu_ref_put(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.io_kiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
