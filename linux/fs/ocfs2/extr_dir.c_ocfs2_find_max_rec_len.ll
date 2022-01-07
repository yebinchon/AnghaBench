; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_max_rec_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_max_rec_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i8* }
%struct.ocfs2_dir_entry = type { i32 }

@OCFS2_DIR_MIN_REC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_find_max_rec_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_max_rec_len(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ocfs2_dir_entry*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call i64 @ocfs2_trailer_from_bh(%struct.buffer_head* %17, %struct.super_block* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = call i32 @ocfs2_dir_trailer_blk_off(%struct.super_block* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %29, %struct.ocfs2_dir_entry** %13, align 8
  br label %30

30:                                               ; preds = %53, %2
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %36 = call i32 @ocfs2_figure_dirent_hole(%struct.ocfs2_dir_entry* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %13, align 8
  %45 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load i8*, i8** %10, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = bitcast i8* %51 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %52, %struct.ocfs2_dir_entry** %13, align 8
  br label %53

53:                                               ; preds = %43
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %30, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @OCFS2_DIR_MIN_REC_LEN, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %61
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @ocfs2_trailer_from_bh(%struct.buffer_head*, %struct.super_block*) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.super_block*) #1

declare dso_local i32 @ocfs2_figure_dirent_hole(%struct.ocfs2_dir_entry*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
