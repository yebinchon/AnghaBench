; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_ctx_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_ctx_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userfaultfd_ctx = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@userfaultfd_ctx_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.userfaultfd_ctx*)* @userfaultfd_ctx_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @userfaultfd_ctx_put(%struct.userfaultfd_ctx* %0) #0 {
  %2 = alloca %struct.userfaultfd_ctx*, align 8
  store %struct.userfaultfd_ctx* %0, %struct.userfaultfd_ctx** %2, align 8
  %3 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %3, i32 0, i32 5
  %5 = call i64 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @spin_is_locked(i32* %10)
  %12 = call i32 @VM_BUG_ON(i32 %11)
  %13 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %13, i32 0, i32 4
  %15 = call i32 @waitqueue_active(%struct.TYPE_2__* %14)
  %16 = call i32 @VM_BUG_ON(i32 %15)
  %17 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_is_locked(i32* %19)
  %21 = call i32 @VM_BUG_ON(i32 %20)
  %22 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %22, i32 0, i32 3
  %24 = call i32 @waitqueue_active(%struct.TYPE_2__* %23)
  %25 = call i32 @VM_BUG_ON(i32 %24)
  %26 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_is_locked(i32* %28)
  %30 = call i32 @VM_BUG_ON(i32 %29)
  %31 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %31, i32 0, i32 2
  %33 = call i32 @waitqueue_active(%struct.TYPE_2__* %32)
  %34 = call i32 @VM_BUG_ON(i32 %33)
  %35 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_is_locked(i32* %37)
  %39 = call i32 @VM_BUG_ON(i32 %38)
  %40 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %40, i32 0, i32 1
  %42 = call i32 @waitqueue_active(%struct.TYPE_2__* %41)
  %43 = call i32 @VM_BUG_ON(i32 %42)
  %44 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mmdrop(i32 %46)
  %48 = load i32, i32* @userfaultfd_ctx_cachep, align 4
  %49 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %2, align 8
  %50 = call i32 @kmem_cache_free(i32 %48, %struct.userfaultfd_ctx* %49)
  br label %51

51:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @waitqueue_active(%struct.TYPE_2__*) #1

declare dso_local i32 @mmdrop(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.userfaultfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
