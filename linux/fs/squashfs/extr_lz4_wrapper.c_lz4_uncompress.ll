; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_lz4_wrapper.c_lz4_uncompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_lz4_wrapper.c_lz4_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { i64 }
%struct.buffer_head = type { i8* }
%struct.squashfs_page_actor = type { i32 }
%struct.squashfs_lz4 = type { i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.squashfs_sb_info*, i8*, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)* @lz4_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz4_uncompress(%struct.squashfs_sb_info* %0, i8* %1, %struct.buffer_head** %2, i32 %3, i32 %4, i32 %5, %struct.squashfs_page_actor* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.squashfs_sb_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.squashfs_page_actor*, align 8
  %16 = alloca %struct.squashfs_lz4*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.squashfs_page_actor* %6, %struct.squashfs_page_actor** %15, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.squashfs_lz4*
  store %struct.squashfs_lz4* %24, %struct.squashfs_lz4** %16, align 8
  %25 = load %struct.squashfs_lz4*, %struct.squashfs_lz4** %16, align 8
  %26 = getelementptr inbounds %struct.squashfs_lz4, %struct.squashfs_lz4* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %17, align 8
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %68, %7
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load i32, i32* %21, align 4
  %35 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %9, align 8
  %36 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = call i32 @min(i32 %34, i64 %40)
  store i32 %41, i32* %19, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %44 = load i32, i32* %20, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %43, i64 %45
  %47 = load %struct.buffer_head*, %struct.buffer_head** %46, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @memcpy(i8* %42, i8* %52, i32 %53)
  %55 = load i32, i32* %19, align 4
  %56 = load i8*, i8** %17, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr i8, i8* %56, i64 %57
  store i8* %58, i8** %17, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %21, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %21, align 4
  store i32 0, i32* %13, align 4
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %62, i64 %64
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  %67 = call i32 @put_bh(%struct.buffer_head* %66)
  br label %68

68:                                               ; preds = %33
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %20, align 4
  br label %29

71:                                               ; preds = %29
  %72 = load %struct.squashfs_lz4*, %struct.squashfs_lz4** %16, align 8
  %73 = getelementptr inbounds %struct.squashfs_lz4, %struct.squashfs_lz4* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.squashfs_lz4*, %struct.squashfs_lz4** %16, align 8
  %76 = getelementptr inbounds %struct.squashfs_lz4, %struct.squashfs_lz4* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %80 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @LZ4_decompress_safe(i8* %74, i8* %77, i32 %78, i32 %81)
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %125

88:                                               ; preds = %71
  %89 = load i32, i32* %22, align 4
  store i32 %89, i32* %21, align 4
  %90 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %91 = call i8* @squashfs_first_page(%struct.squashfs_page_actor* %90)
  store i8* %91, i8** %18, align 8
  %92 = load %struct.squashfs_lz4*, %struct.squashfs_lz4** %16, align 8
  %93 = getelementptr inbounds %struct.squashfs_lz4, %struct.squashfs_lz4* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %17, align 8
  br label %95

95:                                               ; preds = %107, %88
  %96 = load i8*, i8** %18, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8*, i8** %18, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load i32, i32* %21, align 4
  %106 = call i32 @memcpy(i8* %103, i8* %104, i32 %105)
  br label %121

107:                                              ; preds = %98
  %108 = load i8*, i8** %18, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = call i32 @memcpy(i8* %108, i8* %109, i32 %110)
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = load i8*, i8** %17, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr i8, i8* %113, i64 %114
  store i8* %115, i8** %17, align 8
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = load i32, i32* %21, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %21, align 4
  %119 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %120 = call i8* @squashfs_next_page(%struct.squashfs_page_actor* %119)
  store i8* %120, i8** %18, align 8
  br label %95

121:                                              ; preds = %102, %95
  %122 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %123 = call i32 @squashfs_finish_page(%struct.squashfs_page_actor* %122)
  %124 = load i32, i32* %22, align 4
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %85
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @LZ4_decompress_safe(i8*, i8*, i32, i32) #1

declare dso_local i8* @squashfs_first_page(%struct.squashfs_page_actor*) #1

declare dso_local i8* @squashfs_next_page(%struct.squashfs_page_actor*) #1

declare dso_local i32 @squashfs_finish_page(%struct.squashfs_page_actor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
