; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i8*, %struct.fuse_conn* }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_conn = type { i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuse_file* @fuse_file_alloc(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_file*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_file*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %6 = call i8* @kzalloc(i32 40, i32 %5)
  %7 = bitcast i8* %6 to %struct.fuse_file*
  store %struct.fuse_file* %7, %struct.fuse_file** %4, align 8
  %8 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %9 = icmp ne %struct.fuse_file* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.fuse_file* null, %struct.fuse_file** %2, align 8
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %17 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %17, i32 0, i32 7
  store %struct.fuse_conn* %16, %struct.fuse_conn** %18, align 8
  %19 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %20 = call i8* @kzalloc(i32 1, i32 %19)
  %21 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %22 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %23, i32 0, i32 6
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %29 = call i32 @kfree(%struct.fuse_file* %28)
  store %struct.fuse_file* null, %struct.fuse_file** %2, align 8
  br label %53

30:                                               ; preds = %15
  %31 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %32 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %31, i32 0, i32 5
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %35 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %39 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %38, i32 0, i32 3
  %40 = call i32 @refcount_set(i32* %39, i32 1)
  %41 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %42 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %41, i32 0, i32 2
  %43 = call i32 @RB_CLEAR_NODE(i32* %42)
  %44 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %45 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %44, i32 0, i32 1
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %48 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %47, i32 0, i32 0
  %49 = call i32 @atomic64_inc_return(i32* %48)
  %50 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %51 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  store %struct.fuse_file* %52, %struct.fuse_file** %2, align 8
  br label %53

53:                                               ; preds = %30, %27, %14
  %54 = load %struct.fuse_file*, %struct.fuse_file** %2, align 8
  ret %struct.fuse_file* %54
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.fuse_file*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
