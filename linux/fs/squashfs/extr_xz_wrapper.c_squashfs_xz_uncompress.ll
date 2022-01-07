; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_xz_wrapper.c_squashfs_xz_uncompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_xz_wrapper.c_squashfs_xz_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { i64 }
%struct.buffer_head = type { i64 }
%struct.squashfs_page_actor = type { i32 }
%struct.squashfs_xz = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32*, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@XZ_OK = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.squashfs_sb_info*, i8*, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)* @squashfs_xz_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @squashfs_xz_uncompress(%struct.squashfs_sb_info* %0, i8* %1, %struct.buffer_head** %2, i32 %3, i32 %4, i32 %5, %struct.squashfs_page_actor* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.squashfs_sb_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.squashfs_page_actor*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.squashfs_xz*, align 8
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.squashfs_page_actor* %6, %struct.squashfs_page_actor** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.squashfs_xz*
  store %struct.squashfs_xz* %22, %struct.squashfs_xz** %20, align 8
  %23 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %24 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @xz_dec_reset(i32 %25)
  %27 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %28 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %31 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %34 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %38 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i64 %36, i64* %39, align 8
  %40 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %41 = call i32* @squashfs_first_page(%struct.squashfs_page_actor* %40)
  %42 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %43 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i32* %41, i32** %44, align 8
  br label %45

45:                                               ; preds = %151, %7
  %46 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %47 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %51 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %45
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %9, align 8
  %62 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = call i32 @min(i32 %60, i64 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %71, i64 %73
  %75 = load %struct.buffer_head*, %struct.buffer_head** %74, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %82 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i64 %80, i64* %83, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %86 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %89 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %59, %55, %45
  %92 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %93 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %97 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %95, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %91
  %102 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %103 = call i32* @squashfs_next_page(%struct.squashfs_page_actor* %102)
  %104 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %105 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  store i32* %103, i32** %106, align 8
  %107 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %108 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %101
  %113 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %114 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load i64, i64* @PAGE_SIZE, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %112, %101
  br label %122

122:                                              ; preds = %121, %91
  %123 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %124 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %127 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %126, i32 0, i32 0
  %128 = call i32 @xz_dec_run(i32 %125, %struct.TYPE_2__* %127)
  store i32 %128, i32* %16, align 4
  %129 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %130 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %134 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %132, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %122
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %143, i64 %146
  %148 = load %struct.buffer_head*, %struct.buffer_head** %147, align 8
  %149 = call i32 @put_bh(%struct.buffer_head* %148)
  br label %150

150:                                              ; preds = %142, %138, %122
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @XZ_OK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %45, label %155

155:                                              ; preds = %151
  %156 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %157 = call i32 @squashfs_finish_page(%struct.squashfs_page_actor* %156)
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* @XZ_STREAM_END, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %155
  br label %175

166:                                              ; preds = %161
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.squashfs_xz*, %struct.squashfs_xz** %20, align 8
  %170 = getelementptr inbounds %struct.squashfs_xz, %struct.squashfs_xz* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %168, %172
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %8, align 4
  br label %193

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %187, %175
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %181, i64 %183
  %185 = load %struct.buffer_head*, %struct.buffer_head** %184, align 8
  %186 = call i32 @put_bh(%struct.buffer_head* %185)
  br label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %19, align 4
  br label %176

190:                                              ; preds = %176
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %190, %166
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local i32 @xz_dec_reset(i32) #1

declare dso_local i32* @squashfs_first_page(%struct.squashfs_page_actor*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32* @squashfs_next_page(%struct.squashfs_page_actor*) #1

declare dso_local i32 @xz_dec_run(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @squashfs_finish_page(%struct.squashfs_page_actor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
