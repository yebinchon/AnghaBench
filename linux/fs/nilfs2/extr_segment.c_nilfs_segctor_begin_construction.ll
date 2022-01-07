; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_begin_construction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_begin_construction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i64, i32, i32, i32 }
%struct.the_nilfs = type { i32, i32, i32, i32, i32 }
%struct.nilfs_segment_buffer = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NILFS_PSEG_MIN_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*, %struct.the_nilfs*)* @nilfs_segctor_begin_construction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_begin_construction(%struct.nilfs_sc_info* %0, %struct.the_nilfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_segment_buffer*, align 8
  %7 = alloca %struct.nilfs_segment_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %4, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %12 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nilfs_segment_buffer* @nilfs_segbuf_new(i32 %13)
  store %struct.nilfs_segment_buffer* %14, %struct.nilfs_segment_buffer** %6, align 8
  %15 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %16 = icmp ne %struct.nilfs_segment_buffer* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %160

24:                                               ; preds = %2
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %26 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %25, i32 0, i32 2
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %24
  %30 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %32 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %35 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %38 = call i32 @nilfs_segbuf_map(%struct.nilfs_segment_buffer* %30, i32 %33, i32 %36, %struct.the_nilfs* %37)
  %39 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NILFS_PSEG_MIN_BLOCKS, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %29
  %45 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %46 = call i32 @nilfs_shift_to_next_segment(%struct.the_nilfs* %45)
  %47 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %49 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %52 = call i32 @nilfs_segbuf_map(%struct.nilfs_segment_buffer* %47, i32 %50, i32 0, %struct.the_nilfs* %51)
  br label %53

53:                                               ; preds = %44, %29
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %61 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %64 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %67 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %53
  br label %111

74:                                               ; preds = %24
  %75 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %76 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %75, i32 0, i32 2
  %77 = call %struct.nilfs_segment_buffer* @NILFS_LAST_SEGBUF(i32* %76)
  store %struct.nilfs_segment_buffer* %77, %struct.nilfs_segment_buffer** %7, align 8
  %78 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %79 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %80 = call i32 @nilfs_segbuf_map_cont(%struct.nilfs_segment_buffer* %78, %struct.nilfs_segment_buffer* %79)
  %81 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %86 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %8, align 4
  %91 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NILFS_PSEG_MIN_BLOCKS, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %74
  %97 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %98 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %7, align 8
  %99 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %102 = call i32 @nilfs_segbuf_map(%struct.nilfs_segment_buffer* %97, i32 %100, i32 0, %struct.the_nilfs* %101)
  %103 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %104 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %96, %74
  br label %111

111:                                              ; preds = %110, %73
  %112 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %113 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %116 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nilfs_sufile_mark_dirty(i32 %114, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %156

122:                                              ; preds = %111
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %127 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @nilfs_sufile_alloc(i32 %128, i32* %8)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %156

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %122
  %135 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %138 = call i32 @nilfs_segbuf_set_next_segnum(%struct.nilfs_segment_buffer* %135, i32 %136, %struct.the_nilfs* %137)
  %139 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %140 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %139, i32 0, i32 1
  %141 = call i64 @list_empty(i32* %140)
  %142 = icmp ne i64 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  %146 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %147 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %146, i32 0, i32 1
  %148 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %149 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %148, i32 0, i32 1
  %150 = call i32 @list_add_tail(i32* %147, i32* %149)
  %151 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %152 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %155 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  store i32 0, i32* %3, align 4
  br label %160

156:                                              ; preds = %132, %121
  %157 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %6, align 8
  %158 = call i32 @nilfs_segbuf_free(%struct.nilfs_segment_buffer* %157)
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %134, %21
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.nilfs_segment_buffer* @nilfs_segbuf_new(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @nilfs_segbuf_map(%struct.nilfs_segment_buffer*, i32, i32, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_shift_to_next_segment(%struct.the_nilfs*) #1

declare dso_local %struct.nilfs_segment_buffer* @NILFS_LAST_SEGBUF(i32*) #1

declare dso_local i32 @nilfs_segbuf_map_cont(%struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer*) #1

declare dso_local i32 @nilfs_sufile_mark_dirty(i32, i32) #1

declare dso_local i32 @nilfs_sufile_alloc(i32, i32*) #1

declare dso_local i32 @nilfs_segbuf_set_next_segnum(%struct.nilfs_segment_buffer*, i32, %struct.the_nilfs*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nilfs_segbuf_free(%struct.nilfs_segment_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
