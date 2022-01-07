; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_dev_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_dev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dev = type { %struct.TYPE_2__, i32, %struct.fuse_conn* }
%struct.TYPE_2__ = type { %struct.fuse_dev* }
%struct.fuse_conn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_dev_free(%struct.fuse_dev* %0) #0 {
  %2 = alloca %struct.fuse_dev*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  store %struct.fuse_dev* %0, %struct.fuse_dev** %2, align 8
  %4 = load %struct.fuse_dev*, %struct.fuse_dev** %2, align 8
  %5 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %4, i32 0, i32 2
  %6 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  store %struct.fuse_conn* %6, %struct.fuse_conn** %3, align 8
  %7 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %8 = icmp ne %struct.fuse_conn* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %11 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.fuse_dev*, %struct.fuse_dev** %2, align 8
  %14 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %20 = call i32 @fuse_conn_put(%struct.fuse_conn* %19)
  br label %21

21:                                               ; preds = %9, %1
  %22 = load %struct.fuse_dev*, %struct.fuse_dev** %2, align 8
  %23 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.fuse_dev*, %struct.fuse_dev** %24, align 8
  %26 = call i32 @kfree(%struct.fuse_dev* %25)
  %27 = load %struct.fuse_dev*, %struct.fuse_dev** %2, align 8
  %28 = call i32 @kfree(%struct.fuse_dev* %27)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_conn_put(%struct.fuse_conn*) #1

declare dso_local i32 @kfree(%struct.fuse_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
