; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_control.c_fuse_ctl_file_conn_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_control.c_fuse_ctl_file_conn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { %struct.fuse_conn* }

@fuse_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fuse_conn* (%struct.file*)* @fuse_ctl_file_conn_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fuse_conn* @fuse_ctl_file_conn_get(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = call i32 @mutex_lock(i32* @fuse_mutex)
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.TYPE_2__* @file_inode(%struct.file* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  store %struct.fuse_conn* %8, %struct.fuse_conn** %3, align 8
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %10 = icmp ne %struct.fuse_conn* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %13 = call %struct.fuse_conn* @fuse_conn_get(%struct.fuse_conn* %12)
  store %struct.fuse_conn* %13, %struct.fuse_conn** %3, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = call i32 @mutex_unlock(i32* @fuse_mutex)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  ret %struct.fuse_conn* %16
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @fuse_conn_get(%struct.fuse_conn*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
