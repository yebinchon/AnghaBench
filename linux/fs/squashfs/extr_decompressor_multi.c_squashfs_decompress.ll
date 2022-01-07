; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor_multi.c_squashfs_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor_multi.c_squashfs_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { %struct.TYPE_2__*, %struct.squashfs_stream* }
%struct.TYPE_2__ = type { i32 (%struct.squashfs_sb_info*, i32, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)*, i32 }
%struct.squashfs_stream = type { i32 }
%struct.buffer_head = type { i32 }
%struct.squashfs_page_actor = type { i32 }
%struct.decomp_stream = type { i32 }

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
  %15 = alloca %struct.decomp_stream*, align 8
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %7, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.squashfs_page_actor* %5, %struct.squashfs_page_actor** %12, align 8
  %16 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %17 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %16, i32 0, i32 1
  %18 = load %struct.squashfs_stream*, %struct.squashfs_stream** %17, align 8
  store %struct.squashfs_stream* %18, %struct.squashfs_stream** %14, align 8
  %19 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %20 = load %struct.squashfs_stream*, %struct.squashfs_stream** %14, align 8
  %21 = call %struct.decomp_stream* @get_decomp_stream(%struct.squashfs_sb_info* %19, %struct.squashfs_stream* %20)
  store %struct.decomp_stream* %21, %struct.decomp_stream** %15, align 8
  %22 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %23 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.squashfs_sb_info*, i32, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)*, i32 (%struct.squashfs_sb_info*, i32, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)** %25, align 8
  %27 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %28 = load %struct.decomp_stream*, %struct.decomp_stream** %15, align 8
  %29 = getelementptr inbounds %struct.decomp_stream, %struct.decomp_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %12, align 8
  %36 = call i32 %26(%struct.squashfs_sb_info* %27, i32 %30, %struct.buffer_head** %31, i32 %32, i32 %33, i32 %34, %struct.squashfs_page_actor* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.decomp_stream*, %struct.decomp_stream** %15, align 8
  %38 = load %struct.squashfs_stream*, %struct.squashfs_stream** %14, align 8
  %39 = call i32 @put_decomp_stream(%struct.decomp_stream* %37, %struct.squashfs_stream* %38)
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %6
  %43 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %44 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %6
  %50 = load i32, i32* %13, align 4
  ret i32 %50
}

declare dso_local %struct.decomp_stream* @get_decomp_stream(%struct.squashfs_sb_info*, %struct.squashfs_stream*) #1

declare dso_local i32 @put_decomp_stream(%struct.decomp_stream*, %struct.squashfs_stream*) #1

declare dso_local i32 @ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
