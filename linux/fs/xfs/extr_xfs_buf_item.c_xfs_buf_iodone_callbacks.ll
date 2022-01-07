; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_iodone_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_iodone_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32*, i32, i32*, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_iodone_callbacks(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %3 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %9 = call i64 @xfs_buf_iodone_callback_error(%struct.xfs_buf* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %30

12:                                               ; preds = %7, %1
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %20 = call i32 @xfs_buf_do_callbacks(%struct.xfs_buf* %19)
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %22 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 1
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %27 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %29 = call i32 @xfs_buf_ioend(%struct.xfs_buf* %28)
  br label %30

30:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @xfs_buf_iodone_callback_error(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_do_callbacks(%struct.xfs_buf*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @xfs_buf_ioend(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
