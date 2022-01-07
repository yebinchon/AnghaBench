; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_bio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_bio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.blkdev_dio* }
%struct.blkdev_dio = type { i32, %struct.task_struct*, %struct.bio, i64, %struct.kiocb*, i64, i32, i32 }
%struct.task_struct = type { i32 }
%struct.kiocb = type { i32 (%struct.kiocb*, i64, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @blkdev_bio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkdev_bio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.blkdev_dio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 1
  %10 = load %struct.blkdev_dio*, %struct.blkdev_dio** %9, align 8
  store %struct.blkdev_dio* %10, %struct.blkdev_dio** %3, align 8
  %11 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %12 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %20 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %29 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %24, %18, %1
  %32 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %33 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %38 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %37, i32 0, i32 7
  %39 = call i64 @atomic_dec_and_test(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %105

41:                                               ; preds = %36, %31
  %42 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %43 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %94, label %46

46:                                               ; preds = %41
  %47 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %48 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %47, i32 0, i32 4
  %49 = load %struct.kiocb*, %struct.kiocb** %48, align 8
  store %struct.kiocb* %49, %struct.kiocb** %5, align 8
  %50 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %51 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %46
  %60 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %61 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %65 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  br label %76

70:                                               ; preds = %46
  %71 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %72 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @blk_status_to_errno(i64 %74)
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %70, %59
  %77 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %78 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %77, i32 0, i32 4
  %79 = load %struct.kiocb*, %struct.kiocb** %78, align 8
  %80 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %79, i32 0, i32 0
  %81 = load i32 (%struct.kiocb*, i64, i32)*, i32 (%struct.kiocb*, i64, i32)** %80, align 8
  %82 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 %81(%struct.kiocb* %82, i64 %83, i32 0)
  %85 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %86 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %91 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %90, i32 0, i32 2
  %92 = call i32 @bio_put(%struct.bio* %91)
  br label %93

93:                                               ; preds = %89, %76
  br label %104

94:                                               ; preds = %41
  %95 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %96 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %95, i32 0, i32 1
  %97 = load %struct.task_struct*, %struct.task_struct** %96, align 8
  store %struct.task_struct* %97, %struct.task_struct** %7, align 8
  %98 = load %struct.blkdev_dio*, %struct.blkdev_dio** %3, align 8
  %99 = getelementptr inbounds %struct.blkdev_dio, %struct.blkdev_dio* %98, i32 0, i32 1
  %100 = load %struct.task_struct*, %struct.task_struct** %99, align 8
  %101 = call i32 @WRITE_ONCE(%struct.task_struct* %100, i32* null)
  %102 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %103 = call i32 @blk_wake_io_task(%struct.task_struct* %102)
  br label %104

104:                                              ; preds = %94, %93
  br label %105

105:                                              ; preds = %104, %36
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.bio*, %struct.bio** %2, align 8
  %110 = call i32 @bio_check_pages_dirty(%struct.bio* %109)
  br label %116

111:                                              ; preds = %105
  %112 = load %struct.bio*, %struct.bio** %2, align 8
  %113 = call i32 @bio_release_pages(%struct.bio* %112, i32 0)
  %114 = load %struct.bio*, %struct.bio** %2, align 8
  %115 = call i32 @bio_put(%struct.bio* %114)
  br label %116

116:                                              ; preds = %111, %108
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @blk_status_to_errno(i64) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @WRITE_ONCE(%struct.task_struct*, i32*) #1

declare dso_local i32 @blk_wake_io_task(%struct.task_struct*) #1

declare dso_local i32 @bio_check_pages_dirty(%struct.bio*) #1

declare dso_local i32 @bio_release_pages(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
