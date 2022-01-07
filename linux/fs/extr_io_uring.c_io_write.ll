; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, i32, i32, %struct.kiocb }
%struct.kiocb = type { i32, i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sqe_submit = type { i32 }
%struct.iovec = type { i32 }
%struct.iov_iter = type { i32 }
%struct.TYPE_4__ = type { i32 }

@UIO_FASTIOV = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@REQ_F_LINK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IOCB_DIRECT = common dso_local global i32 0, align 4
@REQ_F_ISREG = common dso_local global i32 0, align 4
@SB_FREEZE_WRITE = common dso_local global i32 0, align 4
@IOCB_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_kiocb*, %struct.sqe_submit*, i32)* @io_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_write(%struct.io_kiocb* %0, %struct.sqe_submit* %1, i32 %2) #0 {
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
  store %struct.io_kiocb* %0, %struct.io_kiocb** %5, align 8
  store %struct.sqe_submit* %1, %struct.sqe_submit** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @UIO_FASTIOV, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca %struct.iovec, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store %struct.iovec* %21, %struct.iovec** %10, align 8
  %22 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %23 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %22, i32 0, i32 3
  store %struct.kiocb* %23, %struct.kiocb** %11, align 8
  %24 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %25 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @io_prep_rw(%struct.io_kiocb* %24, %struct.sqe_submit* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %176

32:                                               ; preds = %3
  %33 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %34 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %33, i32 0, i32 2
  %35 = load %struct.file*, %struct.file** %34, align 8
  store %struct.file* %35, %struct.file** %13, align 8
  %36 = load %struct.file*, %struct.file** %13, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FMODE_WRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @EBADF, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %176

49:                                               ; preds = %32
  %50 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %51 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WRITE, align 4
  %54 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %55 = call i32 @io_import_iovec(i32 %52, i32 %53, %struct.sqe_submit* %54, %struct.iovec** %10, %struct.iov_iter* %12)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %176

60:                                               ; preds = %49
  %61 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %62 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @REQ_F_LINK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %70 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = call i64 @iov_iter_count(%struct.iov_iter* %12)
  store i64 %72, i64* %14, align 8
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %79 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IOCB_DIRECT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %77
  %85 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %86 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @WRITE, align 4
  %91 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @io_async_list_note(i32 %90, %struct.io_kiocb* %91, i64 %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %172

95:                                               ; preds = %77, %71
  %96 = load i32, i32* @WRITE, align 4
  %97 = load %struct.file*, %struct.file** %13, align 8
  %98 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %99 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %98, i32 0, i32 1
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @rw_verify_area(i32 %96, %struct.file* %97, i32* %99, i64 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %171, label %104

104:                                              ; preds = %95
  %105 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %106 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @REQ_F_ISREG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load %struct.file*, %struct.file** %13, align 8
  %113 = call %struct.TYPE_4__* @file_inode(%struct.file* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %117 = call i32 @__sb_start_write(i32 %115, i32 %116, i32 1)
  %118 = load %struct.file*, %struct.file** %13, align 8
  %119 = call %struct.TYPE_4__* @file_inode(%struct.file* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %123 = call i32 @__sb_writers_release(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %111, %104
  %125 = load i32, i32* @IOCB_WRITE, align 4
  %126 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %127 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.file*, %struct.file** %13, align 8
  %131 = getelementptr inbounds %struct.file, %struct.file* %130, i32 0, i32 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %124
  %137 = load %struct.file*, %struct.file** %13, align 8
  %138 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %139 = call i32 @call_write_iter(%struct.file* %137, %struct.kiocb* %138, %struct.iov_iter* %12)
  store i32 %139, i32* %17, align 4
  br label %145

140:                                              ; preds = %124
  %141 = load i32, i32* @WRITE, align 4
  %142 = load %struct.file*, %struct.file** %13, align 8
  %143 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %144 = call i32 @loop_rw_iter(i32 %141, %struct.file* %142, %struct.kiocb* %143, %struct.iov_iter* %12)
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %140, %136
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148, %145
  %154 = load %struct.kiocb*, %struct.kiocb** %11, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 @io_rw_done(%struct.kiocb* %154, i32 %155)
  br label %170

157:                                              ; preds = %148
  %158 = load %struct.sqe_submit*, %struct.sqe_submit** %6, align 8
  %159 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @WRITE, align 4
  %164 = load %struct.io_kiocb*, %struct.io_kiocb** %5, align 8
  %165 = load i64, i64* %14, align 8
  %166 = call i32 @io_async_list_note(i32 %163, %struct.io_kiocb* %164, i64 %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %15, align 4
  br label %170

170:                                              ; preds = %167, %153
  br label %171

171:                                              ; preds = %170, %95
  br label %172

172:                                              ; preds = %171, %94
  %173 = load %struct.iovec*, %struct.iovec** %10, align 8
  %174 = call i32 @kfree(%struct.iovec* %173)
  %175 = load i32, i32* %15, align 4
  store i32 %175, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %176

176:                                              ; preds = %172, %58, %46, %30
  %177 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @io_prep_rw(%struct.io_kiocb*, %struct.sqe_submit*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @io_import_iovec(i32, i32, %struct.sqe_submit*, %struct.iovec**, %struct.iov_iter*) #2

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i32 @io_async_list_note(i32, %struct.io_kiocb*, i64) #2

declare dso_local i32 @rw_verify_area(i32, %struct.file*, i32*, i64) #2

declare dso_local i32 @__sb_start_write(i32, i32, i32) #2

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #2

declare dso_local i32 @__sb_writers_release(i32, i32) #2

declare dso_local i32 @call_write_iter(%struct.file*, %struct.kiocb*, %struct.iov_iter*) #2

declare dso_local i32 @loop_rw_iter(i32, %struct.file*, %struct.kiocb*, %struct.iov_iter*) #2

declare dso_local i32 @io_rw_done(%struct.kiocb*, i32) #2

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
