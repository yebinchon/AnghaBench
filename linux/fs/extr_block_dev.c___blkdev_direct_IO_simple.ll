; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c___blkdev_direct_IO_simple.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c___blkdev_direct_IO_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, i32, i32, %struct.file* }
%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.block_device = type { i32 }
%struct.bio_vec = type { i32 }
%struct.bio = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DIO_INLINE_BIO_VECS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@blkdev_bio_end_io_simple = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@IOCB_HIPRI = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*, i32)* @__blkdev_direct_IO_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blkdev_direct_IO_simple(%struct.kiocb* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bio_vec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bio, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 4
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %8, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = call i32 @bdev_file_inode(%struct.file* %22)
  %24 = call %struct.block_device* @I_BDEV(i32 %23)
  store %struct.block_device* %24, %struct.block_device** %9, align 8
  %25 = load i32, i32* @DIO_INLINE_BIO_VECS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.bio_vec, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %30 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %34 = call i32 @iov_iter_alignment(%struct.iov_iter* %33)
  %35 = or i32 %32, %34
  %36 = load %struct.block_device*, %struct.block_device** %9, align 8
  %37 = call i32 @bdev_logical_block_size(%struct.block_device* %36)
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %168

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @DIO_INLINE_BIO_VECS, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.bio_vec* %28, %struct.bio_vec** %12, align 8
  br label %59

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.bio_vec* @kmalloc_array(i32 %50, i32 4, i32 %51)
  store %struct.bio_vec* %52, %struct.bio_vec** %12, align 8
  %53 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %54 = icmp ne %struct.bio_vec* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %168

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @bio_init(%struct.bio* %15, %struct.bio_vec* %60, i32 %61)
  %63 = load %struct.block_device*, %struct.block_device** %9, align 8
  %64 = call i32 @bio_set_dev(%struct.bio* %15, %struct.block_device* %63)
  %65 = load i32, i32* %13, align 4
  %66 = ashr i32 %65, 9
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %70 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 6
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @current, align 4
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @blkdev_bio_end_io_simple, align 4
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 5
  store i32 %75, i32* %76, align 4
  %77 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %78 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %82 = call i32 @bio_iov_iter_get_pages(%struct.bio* %15, %struct.iov_iter* %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  br label %159

87:                                               ; preds = %59
  %88 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %16, align 4
  %91 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %92 = call i64 @iov_iter_rw(%struct.iov_iter* %91)
  %93 = load i64, i64* @READ, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load i32, i32* @REQ_OP_READ, align 4
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %99 = call i64 @iter_is_iovec(%struct.iov_iter* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 1, i32* %14, align 4
  br label %102

102:                                              ; preds = %101, %95
  br label %109

103:                                              ; preds = %87
  %104 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %105 = call i32 @dio_bio_write_op(%struct.kiocb* %104)
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 2
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @task_io_account_write(i32 %107)
  br label %109

109:                                              ; preds = %103, %102
  %110 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %111 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IOCB_HIPRI, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %118 = call i32 @bio_set_polled(%struct.bio* %15, %struct.kiocb* %117)
  br label %119

119:                                              ; preds = %116, %109
  %120 = call i32 @submit_bio(%struct.bio* %15)
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %144, %119
  %122 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %123 = call i32 @set_current_state(i32 %122)
  %124 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @READ_ONCE(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %145

129:                                              ; preds = %121
  %130 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %131 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IOCB_HIPRI, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.block_device*, %struct.block_device** %9, align 8
  %138 = call i32 @bdev_get_queue(%struct.block_device* %137)
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @blk_poll(i32 %138, i32 %139, i32 1)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %136, %129
  %143 = call i32 (...) @io_schedule()
  br label %144

144:                                              ; preds = %142, %136
  br label %121

145:                                              ; preds = %128
  %146 = load i32, i32* @TASK_RUNNING, align 4
  %147 = call i32 @__set_current_state(i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @bio_release_pages(%struct.bio* %15, i32 %148)
  %150 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @blk_status_to_errno(i32 %156)
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %154, %145
  br label %159

159:                                              ; preds = %158, %86
  %160 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %161 = icmp ne %struct.bio_vec* %160, %28
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  %164 = call i32 @kfree(%struct.bio_vec* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = call i32 @bio_uninit(%struct.bio* %15)
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %168

168:                                              ; preds = %165, %55, %41
  %169 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local %struct.block_device* @I_BDEV(i32) #1

declare dso_local i32 @bdev_file_inode(%struct.file*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @iov_iter_alignment(%struct.iov_iter*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local %struct.bio_vec* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @bio_init(%struct.bio*, %struct.bio_vec*, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_iov_iter_get_pages(%struct.bio*, %struct.iov_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i32 @dio_bio_write_op(%struct.kiocb*) #1

declare dso_local i32 @task_io_account_write(i32) #1

declare dso_local i32 @bio_set_polled(%struct.bio*, %struct.kiocb*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @blk_poll(i32, i32, i32) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @bio_release_pages(%struct.bio*, i32) #1

declare dso_local i32 @blk_status_to_errno(i32) #1

declare dso_local i32 @kfree(%struct.bio_vec*) #1

declare dso_local i32 @bio_uninit(%struct.bio*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
