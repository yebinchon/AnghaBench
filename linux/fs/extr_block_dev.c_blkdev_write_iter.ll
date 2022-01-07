; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.blk_plug = type { i32 }

@EPERM = common dso_local global i64 0, align 8
@ETXTBSY = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@IOCB_DIRECT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @blkdev_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.blk_plug, align 4
  %10 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 2
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %6, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = call %struct.inode* @bdev_file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i64 @i_size_read(%struct.inode* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @I_BDEV(%struct.inode* %18)
  %20 = call i64 @bdev_read_only(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i64, i64* @EPERM, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %3, align 8
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i64 @IS_SWAPFILE(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @ETXTBSY, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %3, align 8
  br label %80

32:                                               ; preds = %25
  %33 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %34 = call i32 @iov_iter_count(%struct.iov_iter* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  br label %80

37:                                               ; preds = %32
  %38 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %39 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @ENOSPC, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %3, align 8
  br label %80

46:                                               ; preds = %37
  %47 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %48 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IOCB_NOWAIT, align 4
  %51 = load i32, i32* @IOCB_DIRECT, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* @IOCB_NOWAIT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i64, i64* @EOPNOTSUPP, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %3, align 8
  br label %80

59:                                               ; preds = %46
  %60 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %63 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = call i32 @iov_iter_truncate(%struct.iov_iter* %60, i64 %65)
  %67 = call i32 @blk_start_plug(%struct.blk_plug* %9)
  %68 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %69 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %70 = call i64 @__generic_file_write_iter(%struct.kiocb* %68, %struct.iov_iter* %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @generic_write_sync(%struct.kiocb* %74, i64 %75)
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %73, %59
  %78 = call i32 @blk_finish_plug(%struct.blk_plug* %9)
  %79 = load i64, i64* %10, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %77, %56, %43, %36, %29, %22
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local %struct.inode* @bdev_file_inode(%struct.file*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @bdev_read_only(i32) #1

declare dso_local i32 @I_BDEV(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i64) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i64 @__generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @generic_write_sync(%struct.kiocb*, i64) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
