; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_lzo_wrapper.c_lzo_uncompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_lzo_wrapper.c_lzo_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { i64 }
%struct.buffer_head = type { i8* }
%struct.squashfs_page_actor = type { i64 }
%struct.squashfs_lzo = type { i8*, i8* }

@LZO_E_OK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.squashfs_sb_info*, i8*, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)* @lzo_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzo_uncompress(%struct.squashfs_sb_info* %0, i8* %1, %struct.buffer_head** %2, i32 %3, i32 %4, i32 %5, %struct.squashfs_page_actor* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.squashfs_sb_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.squashfs_page_actor*, align 8
  %16 = alloca %struct.squashfs_lzo*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.squashfs_page_actor* %6, %struct.squashfs_page_actor** %15, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.squashfs_lzo*
  store %struct.squashfs_lzo* %25, %struct.squashfs_lzo** %16, align 8
  %26 = load %struct.squashfs_lzo*, %struct.squashfs_lzo** %16, align 8
  %27 = getelementptr inbounds %struct.squashfs_lzo, %struct.squashfs_lzo* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %17, align 8
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %21, align 4
  %30 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %31 = getelementptr inbounds %struct.squashfs_page_actor, %struct.squashfs_page_actor* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %23, align 8
  store i32 0, i32* %20, align 4
  br label %33

33:                                               ; preds = %72, %7
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  %38 = load i32, i32* %21, align 4
  %39 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %9, align 8
  %40 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %41, %43
  %45 = call i32 @min(i32 %38, i64 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i8*, i8** %17, align 8
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %48 = load i32, i32* %20, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %47, i64 %49
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @memcpy(i8* %46, i8* %56, i32 %57)
  %59 = load i32, i32* %19, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr i8, i8* %60, i64 %61
  store i8* %62, i8** %17, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %21, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %21, align 4
  store i32 0, i32* %13, align 4
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %66, i64 %68
  %70 = load %struct.buffer_head*, %struct.buffer_head** %69, align 8
  %71 = call i32 @put_bh(%struct.buffer_head* %70)
  br label %72

72:                                               ; preds = %37
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %20, align 4
  br label %33

75:                                               ; preds = %33
  %76 = load %struct.squashfs_lzo*, %struct.squashfs_lzo** %16, align 8
  %77 = getelementptr inbounds %struct.squashfs_lzo, %struct.squashfs_lzo* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.squashfs_lzo*, %struct.squashfs_lzo** %16, align 8
  %82 = getelementptr inbounds %struct.squashfs_lzo, %struct.squashfs_lzo* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @lzo1x_decompress_safe(i8* %78, i64 %80, i8* %83, i64* %23)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* @LZO_E_OK, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %128

89:                                               ; preds = %75
  %90 = load i64, i64* %23, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %21, align 4
  store i32 %91, i32* %22, align 4
  %92 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %93 = call i8* @squashfs_first_page(%struct.squashfs_page_actor* %92)
  store i8* %93, i8** %18, align 8
  %94 = load %struct.squashfs_lzo*, %struct.squashfs_lzo** %16, align 8
  %95 = getelementptr inbounds %struct.squashfs_lzo, %struct.squashfs_lzo* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %17, align 8
  br label %97

97:                                               ; preds = %123, %89
  %98 = load i8*, i8** %18, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i8*, i8** %18, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = load i32, i32* %21, align 4
  %108 = call i32 @memcpy(i8* %105, i8* %106, i32 %107)
  br label %124

109:                                              ; preds = %100
  %110 = load i8*, i8** %18, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = call i32 @memcpy(i8* %110, i8* %111, i32 %112)
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = load i8*, i8** %17, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr i8, i8* %115, i64 %116
  store i8* %117, i8** %17, align 8
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = load i32, i32* %21, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %21, align 4
  %121 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %122 = call i8* @squashfs_next_page(%struct.squashfs_page_actor* %121)
  store i8* %122, i8** %18, align 8
  br label %123

123:                                              ; preds = %109
  br label %97

124:                                              ; preds = %104, %97
  %125 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %126 = call i32 @squashfs_finish_page(%struct.squashfs_page_actor* %125)
  %127 = load i32, i32* %22, align 4
  store i32 %127, i32* %8, align 4
  br label %131

128:                                              ; preds = %88
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @lzo1x_decompress_safe(i8*, i64, i8*, i64*) #1

declare dso_local i8* @squashfs_first_page(%struct.squashfs_page_actor*) #1

declare dso_local i8* @squashfs_next_page(%struct.squashfs_page_actor*) #1

declare dso_local i32 @squashfs_finish_page(%struct.squashfs_page_actor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
