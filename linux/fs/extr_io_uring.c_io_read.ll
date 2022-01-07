; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, i32, i32, %struct.kiocb }
%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sqe_submit = type { i32 }
%struct.iovec = type { i32 }
%struct.iov_iter = type { i32 }

@UIO_FASTIOV = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@REQ_F_LINK = common dso_local global i32 0, align 4
@REQ_F_NOWAIT = common dso_local global i32 0, align 4
@REQ_F_ISREG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.sqe_submit*, i32)* @io_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_read(%struct.io_kiocb* %0, %struct.sqe_submit* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_kiocb*, align 8
  %6 = alloca %struct.sqe_submit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca %struct.kiocb*, align 8
  %12 = alloca %struct.iov_iter, align 4
  %13 = alloca %struct.file*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.io_kiocb* %0, %struct.io_kiocb** %5, align 8
  store %struct.sqe_submit* %1, %struct.sqe_submit** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @UIO_FASTIOV, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca %struct.iovec, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store %struct.iovec* %22, %struct.iovec** %10, align 8
  %23 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %24 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %23, i32 0, i32 3
  store %struct.kiocb* %24, %struct.kiocb** %11, align 8
  %25 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %26 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @io_prep_rw(%struct.io_kiocb* %25, %struct.sqe_submit* %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %156

33:                                               ; preds = %3
  %34 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %35 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %34, i32 0, i32 1
  %36 = load %struct.file*, %struct.file** %35, align 8
  store %struct.file* %36, %struct.file** %13, align 8
  %37 = load %struct.file*, %struct.file** %13, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FMODE_READ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @EBADF, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %156

50:                                               ; preds = %33
  %51 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %52 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @READ, align 4
  %55 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %56 = call i32 @io_import_iovec(i32 %53, i32 %54, %struct.sqe_submit* %55, %struct.iovec** %10, %struct.iov_iter* %12)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %156

61:                                               ; preds = %50
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %15, align 4
  %63 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %64 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @REQ_F_LINK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %72 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %61
  %74 = call i64 @iov_iter_count(%struct.iov_iter* %12)
  store i64 %74, i64* %14, align 8
  %75 = load i32, i32* @READ, align 4
  %76 = load %struct.file*, %struct.file** %13, align 8
  %77 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %78 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %77, i32 0, i32 0
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @rw_verify_area(i32 %75, %struct.file* %76, i32* %78, i64 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %152, label %83

83:                                               ; preds = %73
  %84 = load %struct.file*, %struct.file** %13, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.file*, %struct.file** %13, align 8
  %92 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %93 = call i32 @call_read_iter(%struct.file* %91, %struct.kiocb* %92, %struct.iov_iter* %12)
  store i32 %93, i32* %18, align 4
  br label %99

94:                                               ; preds = %83
  %95 = load i32, i32* @READ, align 4
  %96 = load %struct.file*, %struct.file** %13, align 8
  %97 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %98 = call i32 @loop_rw_iter(i32 %95, %struct.file* %96, %struct.kiocb* %97, %struct.iov_iter* %12)
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %104 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @REQ_F_NOWAIT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %102
  %110 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %111 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @REQ_F_ISREG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load i32, i32* %18, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %18, align 4
  br label %126

126:                                              ; preds = %123, %119, %116, %109, %102, %99
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp ne i32 %130, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %129, %126
  %135 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %136 = load i32, i32* %18, align 4
  %137 = call i32 @io_rw_done(%struct.kiocb* %135, i32 %136)
  br label %151

138:                                              ; preds = %129
  %139 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %140 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @READ, align 4
  %145 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %146 = load i64, i64* %14, align 8
  %147 = call i32 @io_async_list_note(i32 %144, %struct.io_kiocb* %145, i64 %146)
  br label %148

148:                                              ; preds = %143, %138
  %149 = load i32, i32* @EAGAIN, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %148, %134
  br label %152

152:                                              ; preds = %151, %73
  %153 = load %struct.iovec*, %struct.iovec** %10, align 8
  %154 = call i32 @kfree(%struct.iovec* %153)
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %156

156:                                              ; preds = %152, %59, %47, %31
  %157 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @io_prep_rw(%struct.io_kiocb*, %struct.sqe_submit*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @io_import_iovec(i32, i32, %struct.sqe_submit*, %struct.iovec**, %struct.iov_iter*) #2

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i32 @rw_verify_area(i32, %struct.file*, i32*, i64) #2

declare dso_local i32 @call_read_iter(%struct.file*, %struct.kiocb*, %struct.iov_iter*) #2

declare dso_local i32 @loop_rw_iter(i32, %struct.file*, %struct.kiocb*, %struct.iov_iter*) #2

declare dso_local i32 @io_rw_done(%struct.kiocb*, i32) #2

declare dso_local i32 @io_async_list_note(i32, %struct.io_kiocb*, i64) #2

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
