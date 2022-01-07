; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iov_iter = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_6__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@ocfs2_lock_get_block = common dso_local global i32* null, align 8
@ocfs2_dio_wr_get_block = common dso_local global i32* null, align 8
@ocfs2_dio_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ocfs2_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 1
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %6, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__* %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

30:                                               ; preds = %2
  %31 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %35 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call i64 @i_size_read(%struct.inode* %38)
  %40 = icmp sgt i64 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %43 = call i32 @ocfs2_supports_append_dio(%struct.ocfs2_super* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %67

46:                                               ; preds = %41, %30
  %47 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %48 = call i64 @iov_iter_rw(%struct.iov_iter* %47)
  %49 = load i64, i64* @READ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32*, i32** @ocfs2_lock_get_block, align 8
  store i32* %52, i32** %9, align 8
  br label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** @ocfs2_dio_wr_get_block, align 8
  store i32* %54, i32** %9, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @ocfs2_dio_end_io, align 4
  %66 = call i32 @__blockdev_direct_IO(%struct.kiocb* %56, %struct.inode* %57, i32 %62, %struct.iov_iter* %63, i32* %64, i32 %65, i32* null, i32 0)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %45, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_supports_append_dio(%struct.ocfs2_super*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @__blockdev_direct_IO(%struct.kiocb*, %struct.inode*, i32, %struct.iov_iter*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
