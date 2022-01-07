; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iocb = type { i32 }
%struct.iovec = type { i32 }
%struct.iov_iter = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@UIO_FASTIOV = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@SB_FREEZE_WRITE = common dso_local global i32 0, align 4
@IOCB_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iocb*, i32, i32)* @aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_write(%struct.kiocb* %0, %struct.iocb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iocb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iovec*, align 8
  %13 = alloca %struct.iov_iter, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iocb* %1, %struct.iocb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @UIO_FASTIOV, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.iovec, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store %struct.iovec* %20, %struct.iovec** %12, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %22 = load %struct.iocb*, %struct.iocb** %7, align 8
  %23 = call i32 @aio_prep_rw(%struct.kiocb* %21, %struct.iocb* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %113

28:                                               ; preds = %4
  %29 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %30 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %29, i32 0, i32 2
  %31 = load %struct.file*, %struct.file** %30, align 8
  store %struct.file* %31, %struct.file** %14, align 8
  %32 = load %struct.file*, %struct.file** %14, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FMODE_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @EBADF, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %113

45:                                               ; preds = %28
  %46 = load %struct.file*, %struct.file** %14, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %113

59:                                               ; preds = %45
  %60 = load i32, i32* @WRITE, align 4
  %61 = load %struct.iocb*, %struct.iocb** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @aio_setup_rw(i32 %60, %struct.iocb* %61, %struct.iovec** %12, i32 %62, i32 %63, %struct.iov_iter* %13)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %113

69:                                               ; preds = %59
  %70 = load i32, i32* @WRITE, align 4
  %71 = load %struct.file*, %struct.file** %14, align 8
  %72 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %73 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %72, i32 0, i32 1
  %74 = call i32 @iov_iter_count(%struct.iov_iter* %13)
  %75 = call i32 @rw_verify_area(i32 %70, %struct.file* %71, i32* %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %69
  %79 = load %struct.file*, %struct.file** %14, align 8
  %80 = call %struct.TYPE_4__* @file_inode(%struct.file* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISREG(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.file*, %struct.file** %14, align 8
  %87 = call %struct.TYPE_4__* @file_inode(%struct.file* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %91 = call i32 @__sb_start_write(i32 %89, i32 %90, i32 1)
  %92 = load %struct.file*, %struct.file** %14, align 8
  %93 = call %struct.TYPE_4__* @file_inode(%struct.file* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %97 = call i32 @__sb_writers_release(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %85, %78
  %99 = load i32, i32* @IOCB_WRITE, align 4
  %100 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %101 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %105 = load %struct.file*, %struct.file** %14, align 8
  %106 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %107 = call i32 @call_write_iter(%struct.file* %105, %struct.kiocb* %106, %struct.iov_iter* %13)
  %108 = call i32 @aio_rw_done(%struct.kiocb* %104, i32 %107)
  br label %109

109:                                              ; preds = %98, %69
  %110 = load %struct.iovec*, %struct.iovec** %12, align 8
  %111 = call i32 @kfree(%struct.iovec* %110)
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %113

113:                                              ; preds = %109, %67, %56, %42, %26
  %114 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @aio_prep_rw(%struct.kiocb*, %struct.iocb*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @aio_setup_rw(i32, %struct.iocb*, %struct.iovec**, i32, i32, %struct.iov_iter*) #2

declare dso_local i32 @rw_verify_area(i32, %struct.file*, i32*, i32) #2

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #2

declare dso_local i32 @__sb_start_write(i32, i32, i32) #2

declare dso_local i32 @__sb_writers_release(i32, i32) #2

declare dso_local i32 @aio_rw_done(%struct.kiocb*, i32) #2

declare dso_local i32 @call_write_iter(%struct.file*, %struct.kiocb*, %struct.iov_iter*) #2

declare dso_local i32 @kfree(%struct.iovec*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
