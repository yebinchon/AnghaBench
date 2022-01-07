; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submitter = type { i32, i64, %struct.TYPE_2__*, i32, %struct.file*, %struct.io_uring_sqe* }
%struct.TYPE_2__ = type { i64 }
%struct.file = type { i64, i32, i32, i32 }
%struct.io_uring_sqe = type { i64, i64, i32, i64, i64, i64, i32, i32, i64 }

@do_nop = common dso_local global i64 0, align 8
@IORING_OP_NOP = common dso_local global i32 0, align 4
@BS = common dso_local global i64 0, align 8
@register_files = common dso_local global i64 0, align 8
@IOSQE_FIXED_FILE = common dso_local global i64 0, align 8
@fixedbufs = common dso_local global i64 0, align 8
@IORING_OP_READ_FIXED = common dso_local global i32 0, align 4
@IORING_OP_READV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.submitter*, i32)* @init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_io(%struct.submitter* %0, i32 %1) #0 {
  %3 = alloca %struct.submitter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_uring_sqe*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  store %struct.submitter* %0, %struct.submitter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.submitter*, %struct.submitter** %3, align 8
  %10 = getelementptr inbounds %struct.submitter, %struct.submitter* %9, i32 0, i32 5
  %11 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %11, i64 %13
  store %struct.io_uring_sqe* %14, %struct.io_uring_sqe** %5, align 8
  %15 = load i64, i64* @do_nop, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @IORING_OP_NOP, align 4
  %19 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %20 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  br label %156

21:                                               ; preds = %2
  %22 = load %struct.submitter*, %struct.submitter** %3, align 8
  %23 = getelementptr inbounds %struct.submitter, %struct.submitter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.submitter*, %struct.submitter** %3, align 8
  %28 = getelementptr inbounds %struct.submitter, %struct.submitter* %27, i32 0, i32 4
  %29 = load %struct.file*, %struct.file** %28, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i64 0
  store %struct.file* %30, %struct.file** %7, align 8
  br label %70

31:                                               ; preds = %21
  %32 = load %struct.submitter*, %struct.submitter** %3, align 8
  %33 = getelementptr inbounds %struct.submitter, %struct.submitter* %32, i32 0, i32 4
  %34 = load %struct.file*, %struct.file** %33, align 8
  %35 = load %struct.submitter*, %struct.submitter** %3, align 8
  %36 = getelementptr inbounds %struct.submitter, %struct.submitter* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %34, i64 %37
  store %struct.file* %38, %struct.file** %7, align 8
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.submitter*, %struct.submitter** %3, align 8
  %43 = call i64 @file_depth(%struct.submitter* %42)
  %44 = icmp sge i64 %41, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %31
  %46 = load %struct.submitter*, %struct.submitter** %3, align 8
  %47 = getelementptr inbounds %struct.submitter, %struct.submitter* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.submitter*, %struct.submitter** %3, align 8
  %51 = getelementptr inbounds %struct.submitter, %struct.submitter* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.submitter*, %struct.submitter** %3, align 8
  %54 = getelementptr inbounds %struct.submitter, %struct.submitter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load %struct.submitter*, %struct.submitter** %3, align 8
  %60 = getelementptr inbounds %struct.submitter, %struct.submitter* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %45
  %62 = load %struct.submitter*, %struct.submitter** %3, align 8
  %63 = getelementptr inbounds %struct.submitter, %struct.submitter* %62, i32 0, i32 4
  %64 = load %struct.file*, %struct.file** %63, align 8
  %65 = load %struct.submitter*, %struct.submitter** %3, align 8
  %66 = getelementptr inbounds %struct.submitter, %struct.submitter* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %64, i64 %67
  store %struct.file* %68, %struct.file** %7, align 8
  br label %69

69:                                               ; preds = %61, %31
  br label %70

70:                                               ; preds = %69, %26
  %71 = load %struct.file*, %struct.file** %7, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.submitter*, %struct.submitter** %3, align 8
  %76 = getelementptr inbounds %struct.submitter, %struct.submitter* %75, i32 0, i32 3
  %77 = call i32 @lrand48_r(i32* %76, i64* %8)
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.file*, %struct.file** %7, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = srem i64 %78, %83
  %85 = load i64, i64* @BS, align 8
  %86 = mul nsw i64 %84, %85
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* @register_files, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %70
  %90 = load i64, i64* @IOSQE_FIXED_FILE, align 8
  %91 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %92 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %91, i32 0, i32 8
  store i64 %90, i64* %92, align 8
  %93 = load %struct.file*, %struct.file** %7, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %97 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  br label %106

98:                                               ; preds = %70
  %99 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %100 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %99, i32 0, i32 8
  store i64 0, i64* %100, align 8
  %101 = load %struct.file*, %struct.file** %7, align 8
  %102 = getelementptr inbounds %struct.file, %struct.file* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %105 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %89
  %107 = load i64, i64* @fixedbufs, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load i32, i32* @IORING_OP_READ_FIXED, align 4
  %111 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %112 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load %struct.submitter*, %struct.submitter** %3, align 8
  %114 = getelementptr inbounds %struct.submitter, %struct.submitter* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %122 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* @BS, align 8
  %124 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %125 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %128 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  br label %146

129:                                              ; preds = %106
  %130 = load i32, i32* @IORING_OP_READV, align 4
  %131 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %132 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = load %struct.submitter*, %struct.submitter** %3, align 8
  %134 = getelementptr inbounds %struct.submitter, %struct.submitter* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = ptrtoint %struct.TYPE_2__* %138 to i64
  %140 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %141 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %143 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %142, i32 0, i32 1
  store i64 1, i64* %143, align 8
  %144 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %145 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %144, i32 0, i32 2
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %129, %109
  %147 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %148 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %147, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %151 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load %struct.file*, %struct.file** %7, align 8
  %153 = ptrtoint %struct.file* %152 to i64
  %154 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %5, align 8
  %155 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %154, i32 0, i32 4
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %146, %17
  ret void
}

declare dso_local i64 @file_depth(%struct.submitter*) #1

declare dso_local i32 @lrand48_r(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
