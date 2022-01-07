; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_zlib_wrapper.c_zlib_uncompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_zlib_wrapper.c_zlib_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { i64 }
%struct.buffer_head = type { i64 }
%struct.squashfs_page_actor = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32*, i64 }

@PAGE_SIZE = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.squashfs_sb_info*, i8*, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)* @zlib_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_uncompress(%struct.squashfs_sb_info* %0, i8* %1, %struct.buffer_head** %2, i32 %3, i32 %4, i32 %5, %struct.squashfs_page_actor* %6) #0 {
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
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.squashfs_page_actor* %6, %struct.squashfs_page_actor** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %19, align 8
  %23 = load i8*, i8** @PAGE_SIZE, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %28 = call i32* @squashfs_first_page(%struct.squashfs_page_actor* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %124, %7
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %9, align 8
  %45 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %46, %48
  %50 = call i32 @min(i32 %43, i64 %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %14, align 4
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %54, i64 %56
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %42, %38, %33
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %77 = call i32* @squashfs_next_page(%struct.squashfs_page_actor* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i8*, i8** @PAGE_SIZE, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %75
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %95 = call i32 @zlib_inflateInit(%struct.TYPE_5__* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @Z_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %101 = call i32 @squashfs_finish_page(%struct.squashfs_page_actor* %100)
  br label %151

102:                                              ; preds = %93
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %102, %90
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %105 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %106 = call i32 @zlib_inflate(%struct.TYPE_5__* %104, i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %116, i64 %119
  %121 = load %struct.buffer_head*, %struct.buffer_head** %120, align 8
  %122 = call i32 @put_bh(%struct.buffer_head* %121)
  br label %123

123:                                              ; preds = %115, %111, %103
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @Z_OK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %33, label %128

128:                                              ; preds = %124
  %129 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %130 = call i32 @squashfs_finish_page(%struct.squashfs_page_actor* %129)
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @Z_STREAM_END, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %151

135:                                              ; preds = %128
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %137 = call i32 @zlib_inflateEnd(%struct.TYPE_5__* %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @Z_OK, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %151

142:                                              ; preds = %135
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %151

147:                                              ; preds = %142
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %8, align 4
  br label %169

151:                                              ; preds = %146, %141, %134, %99
  br label %152

152:                                              ; preds = %163, %151
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %157, i64 %159
  %161 = load %struct.buffer_head*, %struct.buffer_head** %160, align 8
  %162 = call i32 @put_bh(%struct.buffer_head* %161)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %152

166:                                              ; preds = %152
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %166, %147
  %170 = load i32, i32* %8, align 4
  ret i32 %170
}

declare dso_local i32* @squashfs_first_page(%struct.squashfs_page_actor*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32* @squashfs_next_page(%struct.squashfs_page_actor*) #1

declare dso_local i32 @zlib_inflateInit(%struct.TYPE_5__*) #1

declare dso_local i32 @squashfs_finish_page(%struct.squashfs_page_actor*) #1

declare dso_local i32 @zlib_inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @zlib_inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
