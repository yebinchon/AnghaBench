; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.fuse_dev = type { %struct.fuse_pqueue, %struct.fuse_conn* }
%struct.fuse_pqueue = type { i32, i32*, i32 }
%struct.fuse_conn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@to_end = common dso_local global i32 0, align 4
@FUSE_PQ_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_dev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_dev*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_pqueue*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.fuse_dev* @fuse_get_dev(%struct.file* %9)
  store %struct.fuse_dev* %10, %struct.fuse_dev** %5, align 8
  %11 = load %struct.fuse_dev*, %struct.fuse_dev** %5, align 8
  %12 = icmp ne %struct.fuse_dev* %11, null
  br i1 %12, label %13, label %69

13:                                               ; preds = %2
  %14 = load %struct.fuse_dev*, %struct.fuse_dev** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %14, i32 0, i32 1
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %15, align 8
  store %struct.fuse_conn* %16, %struct.fuse_conn** %6, align 8
  %17 = load %struct.fuse_dev*, %struct.fuse_dev** %5, align 8
  %18 = getelementptr inbounds %struct.fuse_dev, %struct.fuse_dev* %17, i32 0, i32 0
  store %struct.fuse_pqueue* %18, %struct.fuse_pqueue** %7, align 8
  %19 = load i32, i32* @to_end, align 4
  %20 = call i32 @LIST_HEAD(i32 %19)
  %21 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %7, align 8
  %22 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %7, align 8
  %25 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %24, i32 0, i32 2
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %43, %13
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @FUSE_PQ_HASH_SIZE, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %7, align 8
  %37 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @list_splice_init(i32* %41, i32* @to_end)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load %struct.fuse_pqueue*, %struct.fuse_pqueue** %7, align 8
  %48 = getelementptr inbounds %struct.fuse_pqueue, %struct.fuse_pqueue* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %51 = call i32 @end_requests(%struct.fuse_conn* %50, i32* @to_end)
  %52 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %53 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %52, i32 0, i32 1
  %54 = call i64 @atomic_dec_and_test(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %58 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %65 = call i32 @fuse_abort_conn(%struct.fuse_conn* %64)
  br label %66

66:                                               ; preds = %56, %46
  %67 = load %struct.fuse_dev*, %struct.fuse_dev** %5, align 8
  %68 = call i32 @fuse_dev_free(%struct.fuse_dev* %67)
  br label %69

69:                                               ; preds = %66, %2
  ret i32 0
}

declare dso_local %struct.fuse_dev* @fuse_get_dev(%struct.file*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @end_requests(%struct.fuse_conn*, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @fuse_abort_conn(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_dev_free(%struct.fuse_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
