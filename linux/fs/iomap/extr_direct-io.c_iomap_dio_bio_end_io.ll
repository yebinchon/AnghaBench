; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_bio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_direct-io.c_iomap_dio_bio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.iomap_dio* }
%struct.iomap_dio = type { i32, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.task_struct* }
%struct.task_struct = type { i32 }
%struct.inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@IOMAP_DIO_DIRTY = common dso_local global i32 0, align 4
@IOMAP_DIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @iomap_dio_bio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomap_dio_bio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.iomap_dio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.iomap_dio*, %struct.iomap_dio** %8, align 8
  store %struct.iomap_dio* %9, %struct.iomap_dio** %3, align 8
  %10 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %11 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IOMAP_DIO_DIRTY, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @blk_status_to_errno(i64 %23)
  %25 = call i32 @iomap_dio_set_error(%struct.iomap_dio* %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %28 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %27, i32 0, i32 5
  %29 = call i64 @atomic_dec_and_test(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %26
  %32 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %33 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %38 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.task_struct*, %struct.task_struct** %39, align 8
  store %struct.task_struct* %40, %struct.task_struct** %5, align 8
  %41 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %42 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.task_struct*, %struct.task_struct** %43, align 8
  %45 = call i32 @WRITE_ONCE(%struct.task_struct* %44, i32* null)
  %46 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %47 = call i32 @blk_wake_io_task(%struct.task_struct* %46)
  br label %81

48:                                               ; preds = %31
  %49 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %50 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IOMAP_DIO_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %48
  %56 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %57 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.inode* @file_inode(i32 %60)
  store %struct.inode* %61, %struct.inode** %6, align 8
  %62 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %63 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i32 @INIT_WORK(i32* %64, i32 (i32*)* @iomap_dio_complete_work)
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %72 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @queue_work(i32 %70, i32* %73)
  br label %80

75:                                               ; preds = %48
  %76 = load %struct.iomap_dio*, %struct.iomap_dio** %3, align 8
  %77 = getelementptr inbounds %struct.iomap_dio, %struct.iomap_dio* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @iomap_dio_complete_work(i32* %78)
  br label %80

80:                                               ; preds = %75, %55
  br label %81

81:                                               ; preds = %80, %36
  br label %82

82:                                               ; preds = %81, %26
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.bio*, %struct.bio** %2, align 8
  %87 = call i32 @bio_check_pages_dirty(%struct.bio* %86)
  br label %93

88:                                               ; preds = %82
  %89 = load %struct.bio*, %struct.bio** %2, align 8
  %90 = call i32 @bio_release_pages(%struct.bio* %89, i32 0)
  %91 = load %struct.bio*, %struct.bio** %2, align 8
  %92 = call i32 @bio_put(%struct.bio* %91)
  br label %93

93:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32 @iomap_dio_set_error(%struct.iomap_dio*, i32) #1

declare dso_local i32 @blk_status_to_errno(i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @WRITE_ONCE(%struct.task_struct*, i32*) #1

declare dso_local i32 @blk_wake_io_task(%struct.task_struct*) #1

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @iomap_dio_complete_work(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @bio_check_pages_dirty(%struct.bio*) #1

declare dso_local i32 @bio_release_pages(%struct.bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
