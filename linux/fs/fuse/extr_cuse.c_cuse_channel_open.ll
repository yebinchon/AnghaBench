; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_channel_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_channel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.fuse_dev*, %struct.TYPE_5__* }
%struct.fuse_dev = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cuse_conn = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fuse_dev_fiq_ops = common dso_local global i32 0, align 4
@cuse_fc_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cuse_channel_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_channel_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fuse_dev*, align 8
  %7 = alloca %struct.cuse_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cuse_conn* @kzalloc(i32 12, i32 %9)
  store %struct.cuse_conn* %10, %struct.cuse_conn** %7, align 8
  %11 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %12 = icmp ne %struct.cuse_conn* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %18 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fuse_conn_init(%struct.TYPE_6__* %18, i32 %23, i32* @fuse_dev_fiq_ops, i32* null)
  %25 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %26 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %25, i32 0, i32 0
  %27 = call %struct.fuse_dev* @fuse_dev_alloc_install(%struct.TYPE_6__* %26)
  store %struct.fuse_dev* %27, %struct.fuse_dev** %6, align 8
  %28 = load %struct.fuse_dev*, %struct.fuse_dev** %6, align 8
  %29 = icmp ne %struct.fuse_dev* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %16
  %31 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %32 = call i32 @kfree(%struct.cuse_conn* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %61

35:                                               ; preds = %16
  %36 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %37 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load i32, i32* @cuse_fc_release, align 4
  %40 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %41 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %44 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %47 = call i32 @cuse_send_init(%struct.cuse_conn* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %35
  %51 = load %struct.fuse_dev*, %struct.fuse_dev** %6, align 8
  %52 = call i32 @fuse_dev_free(%struct.fuse_dev* %51)
  %53 = load %struct.cuse_conn*, %struct.cuse_conn** %7, align 8
  %54 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %53, i32 0, i32 0
  %55 = call i32 @fuse_conn_put(%struct.TYPE_6__* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %61

57:                                               ; preds = %35
  %58 = load %struct.fuse_dev*, %struct.fuse_dev** %6, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  store %struct.fuse_dev* %58, %struct.fuse_dev** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %50, %30, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.cuse_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @fuse_conn_init(%struct.TYPE_6__*, i32, i32*, i32*) #1

declare dso_local %struct.fuse_dev* @fuse_dev_alloc_install(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.cuse_conn*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cuse_send_init(%struct.cuse_conn*) #1

declare dso_local i32 @fuse_dev_free(%struct.fuse_dev*) #1

declare dso_local i32 @fuse_conn_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
