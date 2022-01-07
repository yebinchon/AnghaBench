; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_import_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_import_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, %struct.io_mapped_ubuf* }
%struct.io_mapped_ubuf = type { i64, i64, %struct.bio_vec*, i32 }
%struct.bio_vec = type { i64 }
%struct.io_uring_sqe = type { i32, i32, i32 }
%struct.iov_iter = type { i64, i64, i64, %struct.bio_vec* }

@EFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, i32, %struct.io_uring_sqe*, %struct.iov_iter*)* @io_import_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_import_fixed(%struct.io_ring_ctx* %0, i32 %1, %struct.io_uring_sqe* %2, %struct.iov_iter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_ring_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.io_uring_sqe*, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.io_mapped_ubuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.bio_vec*, align 8
  %17 = alloca i64, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.io_uring_sqe* %2, %struct.io_uring_sqe** %8, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %9, align 8
  %18 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %19 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @READ_ONCE(i32 %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %23, i32 0, i32 1
  %25 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %24, align 8
  %26 = icmp ne %struct.io_mapped_ubuf* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %167

34:                                               ; preds = %4
  %35 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %36 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @READ_ONCE(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %167

51:                                               ; preds = %34
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @array_index_nospec(i32 %52, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %57, i32 0, i32 1
  %59 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %59, i64 %61
  store %struct.io_mapped_ubuf* %62, %struct.io_mapped_ubuf** %11, align 8
  %63 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %8, align 8
  %64 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @READ_ONCE(i32 %65)
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %15, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %51
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %167

76:                                               ; preds = %51
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %11, align 8
  %79 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %11, align 8
  %87 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %11, align 8
  %90 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = icmp ugt i64 %85, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %82, %76
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %167

97:                                               ; preds = %82
  %98 = load i64, i64* %15, align 8
  %99 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %11, align 8
  %100 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %98, %101
  store i64 %102, i64* %14, align 8
  %103 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %11, align 8
  %106 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %105, i32 0, i32 2
  %107 = load %struct.bio_vec*, %struct.bio_vec** %106, align 8
  %108 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %11, align 8
  %109 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %111, %112
  %114 = call i32 @iov_iter_bvec(%struct.iov_iter* %103, i32 %104, %struct.bio_vec* %107, i32 %110, i64 %113)
  %115 = load i64, i64* %14, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %166

117:                                              ; preds = %97
  %118 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %11, align 8
  %119 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %118, i32 0, i32 2
  %120 = load %struct.bio_vec*, %struct.bio_vec** %119, align 8
  store %struct.bio_vec* %120, %struct.bio_vec** %16, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %123 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ule i64 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @iov_iter_advance(%struct.iov_iter* %127, i64 %128)
  br label %165

130:                                              ; preds = %117
  %131 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %132 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %14, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %14, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* @PAGE_SHIFT, align 8
  %138 = lshr i64 %136, %137
  %139 = add i64 1, %138
  store i64 %139, i64* %17, align 8
  %140 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %140, i64 %141
  %143 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %144 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %143, i32 0, i32 3
  store %struct.bio_vec* %142, %struct.bio_vec** %144, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %147 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %148, %145
  store i64 %149, i64* %147, align 8
  %150 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %151 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = add i64 %152, %153
  %155 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %156 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* @PAGE_MASK, align 8
  %161 = xor i64 %160, -1
  %162 = and i64 %159, %161
  %163 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %164 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %130, %126
  br label %166

166:                                              ; preds = %165, %97
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %94, %73, %48, %31
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.bio_vec*, i32, i64) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
