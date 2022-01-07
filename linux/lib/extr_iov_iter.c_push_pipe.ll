; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_push_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_iov_iter.c_push_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i64, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, %struct.page*, i32* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_USER = common dso_local global i32 0, align 4
@default_pipe_buf_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iov_iter*, i64, i32*, i64*)* @push_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @push_pipe(%struct.iov_iter* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pipe_inode_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %16 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %15, i32 0, i32 1
  %17 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %16, align 8
  store %struct.pipe_inode_info* %17, %struct.pipe_inode_info** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %20 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ugt i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %28 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %26, %4
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %160

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %13, align 8
  %40 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %41 = call i32 @data_start(%struct.iov_iter* %40, i32* %12, i64* %11)
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %38
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 %49, %50
  %52 = load i64, i64* %13, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp ule i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %59 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %57
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %5, align 8
  br label %160

68:                                               ; preds = %48
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %71 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %69, i64* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %79 = call i32 @next_idx(i32 %77, %struct.pipe_inode_info* %78)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %68, %38
  br label %81

81:                                               ; preds = %141, %80
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %84 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %89 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %87, %81
  %94 = phi i1 [ true, %81 ], [ %92, %87 ]
  br i1 %94, label %95, label %156

95:                                               ; preds = %93
  %96 = load i32, i32* @GFP_USER, align 4
  %97 = call %struct.page* @alloc_page(i32 %96)
  store %struct.page* %97, %struct.page** %14, align 8
  %98 = load %struct.page*, %struct.page** %14, align 8
  %99 = icmp ne %struct.page* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %156

101:                                              ; preds = %95
  %102 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %103 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %107 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i32* @default_pipe_buf_ops, i32** %112, align 8
  %113 = load %struct.page*, %struct.page** %14, align 8
  %114 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %115 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store %struct.page* %113, %struct.page** %120, align 8
  %121 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %122 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* @PAGE_SIZE, align 8
  %130 = icmp ule i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %101
  %132 = load i64, i64* %13, align 8
  %133 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %134 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i64 %132, i64* %139, align 8
  %140 = load i64, i64* %7, align 8
  store i64 %140, i64* %5, align 8
  br label %160

141:                                              ; preds = %101
  %142 = load i64, i64* @PAGE_SIZE, align 8
  %143 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %144 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i64 %142, i64* %149, align 8
  %150 = load i64, i64* @PAGE_SIZE, align 8
  %151 = load i64, i64* %13, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %13, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  %155 = call i32 @next_idx(i32 %153, %struct.pipe_inode_info* %154)
  store i32 %155, i32* %12, align 4
  br label %81

156:                                              ; preds = %100, %93
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* %13, align 8
  %159 = sub i64 %157, %158
  store i64 %159, i64* %5, align 8
  br label %160

160:                                              ; preds = %156, %131, %56, %37
  %161 = load i64, i64* %5, align 8
  ret i64 %161
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @data_start(%struct.iov_iter*, i32*, i64*) #1

declare dso_local i32 @next_idx(i32, %struct.pipe_inode_info*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
