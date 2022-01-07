; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_xen_9pfs_front_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_xen_9pfs_front_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_9pfs_dataring = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xen_9pfs_front_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_9pfs_front_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xen_9pfs_dataring*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.xen_9pfs_dataring*
  store %struct.xen_9pfs_dataring* %8, %struct.xen_9pfs_dataring** %6, align 8
  %9 = load %struct.xen_9pfs_dataring*, %struct.xen_9pfs_dataring** %6, align 8
  %10 = icmp ne %struct.xen_9pfs_dataring* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.xen_9pfs_dataring*, %struct.xen_9pfs_dataring** %6, align 8
  %13 = getelementptr inbounds %struct.xen_9pfs_dataring, %struct.xen_9pfs_dataring* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11, %2
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %11
  %21 = load %struct.xen_9pfs_dataring*, %struct.xen_9pfs_dataring** %6, align 8
  %22 = getelementptr inbounds %struct.xen_9pfs_dataring, %struct.xen_9pfs_dataring* %21, i32 0, i32 1
  %23 = call i32 @wake_up_interruptible(i32* %22)
  %24 = load %struct.xen_9pfs_dataring*, %struct.xen_9pfs_dataring** %6, align 8
  %25 = getelementptr inbounds %struct.xen_9pfs_dataring, %struct.xen_9pfs_dataring* %24, i32 0, i32 0
  %26 = call i32 @schedule_work(i32* %25)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
