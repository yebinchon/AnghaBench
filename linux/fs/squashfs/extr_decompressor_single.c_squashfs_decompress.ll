; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor_single.c_squashfs_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor_single.c_squashfs_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { %struct.TYPE_2__*, %struct.squashfs_stream* }
%struct.TYPE_2__ = type { i32 (%struct.squashfs_sb_info*, i32, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)*, i32 }
%struct.squashfs_stream = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.squashfs_page_actor = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"%s decompression failed, data probably corrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @squashfs_decompress(%struct.squashfs_sb_info* %0, %struct.buffer_head** %1, i32 %2, i32 %3, i32 %4, %struct.squashfs_page_actor* %5) #0 {
  %7 = alloca %struct.squashfs_sb_info*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.squashfs_page_actor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.squashfs_stream*, align 8
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %7, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.squashfs_page_actor* %5, %struct.squashfs_page_actor** %12, align 8
  %15 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %16 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %15, i32 0, i32 1
  %17 = load %struct.squashfs_stream*, %struct.squashfs_stream** %16, align 8
  store %struct.squashfs_stream* %17, %struct.squashfs_stream** %14, align 8
  %18 = load %struct.squashfs_stream*, %struct.squashfs_stream** %14, align 8
  %19 = getelementptr inbounds %struct.squashfs_stream, %struct.squashfs_stream* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %22 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.squashfs_sb_info*, i32, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)*, i32 (%struct.squashfs_sb_info*, i32, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)** %24, align 8
  %26 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %27 = load %struct.squashfs_stream*, %struct.squashfs_stream** %14, align 8
  %28 = getelementptr inbounds %struct.squashfs_stream, %struct.squashfs_stream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %12, align 8
  %35 = call i32 %25(%struct.squashfs_sb_info* %26, i32 %29, %struct.buffer_head** %30, i32 %31, i32 %32, i32 %33, %struct.squashfs_page_actor* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.squashfs_stream*, %struct.squashfs_stream** %14, align 8
  %37 = getelementptr inbounds %struct.squashfs_stream, %struct.squashfs_stream* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %6
  %42 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %43 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %6
  %49 = load i32, i32* %13, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
