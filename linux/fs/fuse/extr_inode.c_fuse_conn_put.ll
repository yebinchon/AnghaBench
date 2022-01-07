; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_conn_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_conn_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 (%struct.fuse_conn*)*, i32, i32, %struct.fuse_iqueue, i32 }
%struct.fuse_iqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fuse_iqueue*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_conn_put(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_conn*, align 8
  %3 = alloca %struct.fuse_iqueue*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %2, align 8
  %4 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %5 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %4, i32 0, i32 4
  %6 = call i64 @refcount_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %10 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %9, i32 0, i32 3
  store %struct.fuse_iqueue* %10, %struct.fuse_iqueue** %3, align 8
  %11 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %3, align 8
  %12 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.fuse_iqueue*)*, i32 (%struct.fuse_iqueue*)** %14, align 8
  %16 = icmp ne i32 (%struct.fuse_iqueue*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %3, align 8
  %19 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.fuse_iqueue*)*, i32 (%struct.fuse_iqueue*)** %21, align 8
  %23 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %3, align 8
  %24 = call i32 %22(%struct.fuse_iqueue* %23)
  br label %25

25:                                               ; preds = %17, %8
  %26 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %27 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @put_pid_ns(i32 %28)
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %31 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @put_user_ns(i32 %32)
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %35 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %34, i32 0, i32 0
  %36 = load i32 (%struct.fuse_conn*)*, i32 (%struct.fuse_conn*)** %35, align 8
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %38 = call i32 %36(%struct.fuse_conn* %37)
  br label %39

39:                                               ; preds = %25, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @put_pid_ns(i32) #1

declare dso_local i32 @put_user_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
