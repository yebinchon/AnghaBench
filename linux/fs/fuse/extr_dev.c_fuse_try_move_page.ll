; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_try_move_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_try_move_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i64, %struct.TYPE_5__*, i32, %struct.page*, i32, i32, %struct.pipe_buffer*, %struct.pipe_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.pipe_buffer = type { i64, i32, i32, %struct.page* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PIPE_BUF_FLAG_LRU = common dso_local global i32 0, align 4
@FR_ABORTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, %struct.page**)* @fuse_try_move_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_try_move_page(%struct.fuse_copy_state* %0, %struct.page** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_copy_state*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.pipe_buffer*, align 8
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  %10 = load %struct.page**, %struct.page*** %5, align 8
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %7, align 8
  %12 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %12, i32 0, i32 6
  %14 = load %struct.pipe_buffer*, %struct.pipe_buffer** %13, align 8
  store %struct.pipe_buffer* %14, %struct.pipe_buffer** %9, align 8
  %15 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %16 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @unlock_request(%struct.TYPE_5__* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %210

23:                                               ; preds = %2
  %24 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %25 = call i32 @fuse_copy_finish(%struct.fuse_copy_state* %24)
  %26 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %27 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %30 = call i32 @pipe_buf_confirm(i32 %28, %struct.pipe_buffer* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %210

35:                                               ; preds = %23
  %36 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %37 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %44 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %45 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %44, i32 0, i32 7
  store %struct.pipe_buffer* %43, %struct.pipe_buffer** %45, align 8
  %46 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %47 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %50 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %52 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %51, i32 0, i32 6
  %53 = load %struct.pipe_buffer*, %struct.pipe_buffer** %52, align 8
  %54 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %53, i32 1
  store %struct.pipe_buffer* %54, %struct.pipe_buffer** %52, align 8
  %55 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %56 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %60 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %35
  br label %190

65:                                               ; preds = %35
  %66 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %67 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %70 = call i64 @pipe_buf_steal(i32 %68, %struct.pipe_buffer* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %190

73:                                               ; preds = %65
  %74 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %75 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %74, i32 0, i32 3
  %76 = load %struct.page*, %struct.page** %75, align 8
  store %struct.page* %76, %struct.page** %8, align 8
  %77 = load %struct.page*, %struct.page** %8, align 8
  %78 = call i32 @PageUptodate(%struct.page* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load %struct.page*, %struct.page** %8, align 8
  %82 = call i32 @SetPageUptodate(%struct.page* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.page*, %struct.page** %8, align 8
  %85 = call i32 @ClearPageMappedToDisk(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %8, align 8
  %87 = call i64 @fuse_check_page(%struct.page* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %187

90:                                               ; preds = %83
  %91 = load %struct.page*, %struct.page** %7, align 8
  %92 = call i32 @page_mapped(%struct.page* %91)
  %93 = call i64 @WARN_ON(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %187

96:                                               ; preds = %90
  %97 = load %struct.page*, %struct.page** %7, align 8
  %98 = call i32 @page_has_private(%struct.page* %97)
  %99 = call i64 @WARN_ON(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %187

102:                                              ; preds = %96
  %103 = load %struct.page*, %struct.page** %7, align 8
  %104 = call i64 @PageDirty(%struct.page* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load %struct.page*, %struct.page** %7, align 8
  %108 = call i64 @PageWriteback(%struct.page* %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ true, %102 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = call i64 @WARN_ON(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %187

116:                                              ; preds = %110
  %117 = load %struct.page*, %struct.page** %7, align 8
  %118 = call i32 @PageMlocked(%struct.page* %117)
  %119 = call i64 @WARN_ON(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %187

122:                                              ; preds = %116
  %123 = load %struct.page*, %struct.page** %7, align 8
  %124 = load %struct.page*, %struct.page** %8, align 8
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i32 @replace_page_cache_page(%struct.page* %123, %struct.page* %124, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load %struct.page*, %struct.page** %8, align 8
  %131 = call i32 @unlock_page(%struct.page* %130)
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %210

133:                                              ; preds = %122
  %134 = load %struct.page*, %struct.page** %8, align 8
  %135 = call i32 @get_page(%struct.page* %134)
  %136 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %137 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PIPE_BUF_FLAG_LRU, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %133
  %143 = load %struct.page*, %struct.page** %8, align 8
  %144 = call i32 @lru_cache_add_file(%struct.page* %143)
  br label %145

145:                                              ; preds = %142, %133
  store i32 0, i32* %6, align 4
  %146 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %147 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = call i32 @spin_lock(i32* %150)
  %152 = load i32, i32* @FR_ABORTED, align 4
  %153 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %154 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %153, i32 0, i32 1
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = call i64 @test_bit(i32 %152, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %145
  %160 = load i32, i32* @ENOENT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  br label %165

162:                                              ; preds = %145
  %163 = load %struct.page*, %struct.page** %8, align 8
  %164 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* %163, %struct.page** %164, align 8
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %167 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %166, i32 0, i32 1
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = load %struct.page*, %struct.page** %8, align 8
  %176 = call i32 @unlock_page(%struct.page* %175)
  %177 = load %struct.page*, %struct.page** %8, align 8
  %178 = call i32 @put_page(%struct.page* %177)
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %3, align 4
  br label %210

180:                                              ; preds = %165
  %181 = load %struct.page*, %struct.page** %7, align 8
  %182 = call i32 @unlock_page(%struct.page* %181)
  %183 = load %struct.page*, %struct.page** %7, align 8
  %184 = call i32 @put_page(%struct.page* %183)
  %185 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %186 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  store i32 0, i32* %3, align 4
  br label %210

187:                                              ; preds = %121, %115, %101, %95, %89
  %188 = load %struct.page*, %struct.page** %8, align 8
  %189 = call i32 @unlock_page(%struct.page* %188)
  br label %190

190:                                              ; preds = %187, %72, %64
  %191 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %192 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %191, i32 0, i32 3
  %193 = load %struct.page*, %struct.page** %192, align 8
  %194 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %195 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %194, i32 0, i32 3
  store %struct.page* %193, %struct.page** %195, align 8
  %196 = load %struct.pipe_buffer*, %struct.pipe_buffer** %9, align 8
  %197 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %200 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %202 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %201, i32 0, i32 1
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = call i32 @lock_request(%struct.TYPE_5__* %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %190
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %210

209:                                              ; preds = %190
  store i32 1, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %207, %180, %174, %129, %33, %21
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @unlock_request(%struct.TYPE_5__*) #1

declare dso_local i32 @fuse_copy_finish(%struct.fuse_copy_state*) #1

declare dso_local i32 @pipe_buf_confirm(i32, %struct.pipe_buffer*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pipe_buf_steal(i32, %struct.pipe_buffer*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

declare dso_local i64 @fuse_check_page(%struct.page*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @page_has_private(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i32 @replace_page_cache_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @lru_cache_add_file(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @lock_request(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
