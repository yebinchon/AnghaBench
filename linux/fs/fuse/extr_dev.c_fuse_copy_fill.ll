; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_copy_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i64, i64, i32, i32, i32, %struct.page*, %struct.pipe_buffer*, %struct.pipe_buffer*, %struct.TYPE_2__*, i32 }
%struct.page = type { i32 }
%struct.pipe_buffer = type { i64, i32, %struct.page* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*)* @fuse_copy_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_fill(%struct.fuse_copy_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuse_copy_state*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %3, align 8
  %8 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %9 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @unlock_request(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %159

16:                                               ; preds = %1
  %17 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %18 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %17)
  %19 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %19, i32 0, i32 6
  %21 = load %struct.pipe_buffer*, %struct.pipe_buffer** %20, align 8
  %22 = icmp ne %struct.pipe_buffer* %21, null
  br i1 %22, label %23, label %124

23:                                               ; preds = %16
  %24 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %25 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %24, i32 0, i32 6
  %26 = load %struct.pipe_buffer*, %struct.pipe_buffer** %25, align 8
  store %struct.pipe_buffer* %26, %struct.pipe_buffer** %6, align 8
  %27 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %28 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %23
  %32 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %33 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %32, i32 0, i32 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %36 = call i32 @pipe_buf_confirm(%struct.TYPE_2__* %34, %struct.pipe_buffer* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %159

41:                                               ; preds = %31
  %42 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %43 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %50 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %51 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %50, i32 0, i32 7
  store %struct.pipe_buffer* %49, %struct.pipe_buffer** %51, align 8
  %52 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %52, i32 0, i32 2
  %54 = load %struct.page*, %struct.page** %53, align 8
  %55 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %56 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %55, i32 0, i32 5
  store %struct.page* %54, %struct.page** %56, align 8
  %57 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %61 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %66 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %68 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %67, i32 0, i32 6
  %69 = load %struct.pipe_buffer*, %struct.pipe_buffer** %68, align 8
  %70 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %69, i32 1
  store %struct.pipe_buffer* %70, %struct.pipe_buffer** %68, align 8
  %71 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %72 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  br label %123

75:                                               ; preds = %23
  %76 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %77 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %80 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %79, i32 0, i32 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %159

88:                                               ; preds = %75
  %89 = load i32, i32* @GFP_HIGHUSER, align 4
  %90 = call %struct.page* @alloc_page(i32 %89)
  store %struct.page* %90, %struct.page** %4, align 8
  %91 = load %struct.page*, %struct.page** %4, align 8
  %92 = icmp ne %struct.page* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %159

96:                                               ; preds = %88
  %97 = load %struct.page*, %struct.page** %4, align 8
  %98 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %99 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %98, i32 0, i32 2
  store %struct.page* %97, %struct.page** %99, align 8
  %100 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %101 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %103 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %102, i32 0, i32 1
  store i32 0, i32* %103, align 8
  %104 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %105 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %106 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %105, i32 0, i32 7
  store %struct.pipe_buffer* %104, %struct.pipe_buffer** %106, align 8
  %107 = load %struct.page*, %struct.page** %4, align 8
  %108 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %109 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %108, i32 0, i32 5
  store %struct.page* %107, %struct.page** %109, align 8
  %110 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %111 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %114 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %116 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %115, i32 0, i32 6
  %117 = load %struct.pipe_buffer*, %struct.pipe_buffer** %116, align 8
  %118 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %117, i32 1
  store %struct.pipe_buffer* %118, %struct.pipe_buffer** %116, align 8
  %119 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %120 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %96, %41
  br label %154

124:                                              ; preds = %16
  %125 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %126 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = call i32 @iov_iter_get_pages(i32 %127, %struct.page** %4, i32 %128, i32 1, i64* %7)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %159

134:                                              ; preds = %124
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @BUG_ON(i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %142 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %145 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.page*, %struct.page** %4, align 8
  %147 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %148 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %147, i32 0, i32 5
  store %struct.page* %146, %struct.page** %148, align 8
  %149 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %150 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @iov_iter_advance(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %134, %123
  %155 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %3, align 8
  %156 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @lock_request(i32 %157)
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %132, %93, %85, %39, %14
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @unlock_request(i32) #1

declare dso_local i32 @fuse_copy_finish(%struct.fuse_copy_state*) #1

declare dso_local i32 @pipe_buf_confirm(%struct.TYPE_2__*, %struct.pipe_buffer*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @iov_iter_get_pages(i32, %struct.page**, i32, i32, i64*) #1

declare dso_local i32 @iov_iter_advance(i32, i32) #1

declare dso_local i32 @lock_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
