; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_queue_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_queue_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_iqueue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fuse_iqueue*)* }
%struct.fuse_req = type { i32, i32 }

@FR_INTERRUPTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FR_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_iqueue*, %struct.fuse_req*)* @queue_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_interrupt(%struct.fuse_iqueue* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_iqueue*, align 8
  %5 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_iqueue* %0, %struct.fuse_iqueue** %4, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %5, align 8
  %6 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %4, align 8
  %7 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* @FR_INTERRUPTED, align 4
  %10 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %11 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %4, align 8
  %20 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %2
  %25 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %26 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %25, i32 0, i32 0
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %31 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %30, i32 0, i32 0
  %32 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %4, align 8
  %33 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %32, i32 0, i32 2
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = call i32 (...) @smp_mb()
  %36 = load i32, i32* @FR_FINISHED, align 4
  %37 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %38 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %43 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %42, i32 0, i32 0
  %44 = call i32 @list_del_init(i32* %43)
  %45 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %4, align 8
  %46 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  store i32 0, i32* %3, align 4
  br label %61

48:                                               ; preds = %29
  %49 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %4, align 8
  %50 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.fuse_iqueue*)*, i32 (%struct.fuse_iqueue*)** %52, align 8
  %54 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %4, align 8
  %55 = call i32 %53(%struct.fuse_iqueue* %54)
  br label %60

56:                                               ; preds = %24
  %57 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %4, align 8
  %58 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %48
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %41, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
