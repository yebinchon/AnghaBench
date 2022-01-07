; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_copy_page_to_iter_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_copy_page_to_iter_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.iov_iter = type { i64, i64, i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i64, %struct.pipe_buffer* }
%struct.pipe_buffer = type { i64, i64, %struct.page*, i32* }

@page_cache_pipe_buf_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.page*, i64, i64, %struct.iov_iter*)* @copy_page_to_iter_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_page_to_iter_pipe(%struct.page* %0, i64 %1, i64 %2, %struct.iov_iter* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca %struct.pipe_inode_info*, align 8
  %11 = alloca %struct.pipe_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %9, align 8
  %14 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %15 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %14, i32 0, i32 3
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %15, align 8
  store %struct.pipe_inode_info* %16, %struct.pipe_inode_info** %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %19 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %27 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %25, %4
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %132

37:                                               ; preds = %29
  %38 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %39 = call i32 @sanity(%struct.iov_iter* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i64 0, i64* %5, align 8
  br label %132

42:                                               ; preds = %37
  %43 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %44 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %47 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %50 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %49, i32 0, i32 2
  %51 = load %struct.pipe_buffer*, %struct.pipe_buffer** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %51, i64 %53
  store %struct.pipe_buffer* %54, %struct.pipe_buffer** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %42
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %63 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %62, i32 0, i32 2
  %64 = load %struct.page*, %struct.page** %63, align 8
  %65 = load %struct.page*, %struct.page** %6, align 8
  %66 = icmp eq %struct.page* %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %70 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %75 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %125

78:                                               ; preds = %61, %57
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %81 = call i32 @next_idx(i32 %79, %struct.pipe_inode_info* %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %83 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %82, i32 0, i32 2
  %84 = load %struct.pipe_buffer*, %struct.pipe_buffer** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %84, i64 %86
  store %struct.pipe_buffer* %87, %struct.pipe_buffer** %11, align 8
  br label %88

88:                                               ; preds = %78, %42
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %91 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %96 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i64 0, i64* %5, align 8
  br label %132

100:                                              ; preds = %94, %88
  %101 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %102 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %106 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %105, i32 0, i32 3
  store i32* @page_cache_pipe_buf_ops, i32** %106, align 8
  %107 = load %struct.page*, %struct.page** %6, align 8
  %108 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %109 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %108, i32 0, i32 2
  store %struct.page* %107, %struct.page** %109, align 8
  %110 = call i32 @get_page(%struct.page* %107)
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %113 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.pipe_buffer*, %struct.pipe_buffer** %11, align 8
  %116 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %117, %118
  %120 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %121 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %124 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %100, %67
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %128 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %5, align 8
  br label %132

132:                                              ; preds = %125, %99, %41, %36
  %133 = load i64, i64* %5, align 8
  ret i64 %133
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sanity(%struct.iov_iter*) #1

declare dso_local i32 @next_idx(i32, %struct.pipe_inode_info*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
