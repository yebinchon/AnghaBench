; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_pool_stats_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_pool_stats_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.nfsd_net = type { i32* }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfsd_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_pool_stats_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd_net*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @nfsd_net_id, align 4
  %14 = call %struct.nfsd_net* @net_generic(i32 %12, i32 %13)
  store %struct.nfsd_net* %14, %struct.nfsd_net** %7, align 8
  %15 = call i32 @mutex_lock(i32* @nfsd_mutex)
  %16 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @svc_get(i32* %27)
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = call i32 @svc_pool_stats_open(i32* %31, %struct.file* %32)
  store i32 %33, i32* %6, align 4
  %34 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %24, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @svc_get(i32*) #1

declare dso_local i32 @svc_pool_stats_open(i32*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
