; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_search_dirblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_search_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dir_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.inode*, i8*, i32, i64, i8*, i32, %struct.ocfs2_dir_entry**)* @ocfs2_search_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_dirblock(%struct.buffer_head* %0, %struct.inode* %1, i8* %2, i32 %3, i64 %4, i8* %5, i32 %6, %struct.ocfs2_dir_entry** %7) #0 {
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_dir_entry**, align 8
  %17 = alloca %struct.ocfs2_dir_entry*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.ocfs2_dir_entry** %7, %struct.ocfs2_dir_entry*** %16, align 8
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %14, align 8
  store i8* %22, i8** %19, align 8
  %23 = load i8*, i8** %19, align 8
  %24 = load i32, i32* %15, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %18, align 8
  br label %27

27:                                               ; preds = %65, %8
  %28 = load i8*, i8** %19, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  %32 = load i8*, i8** %19, align 8
  %33 = bitcast i8* %32 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %33, %struct.ocfs2_dir_entry** %17, align 8
  %34 = load i8*, i8** %19, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8*, i8** %18, align 8
  %39 = icmp ule i8* %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %44 = call i64 @ocfs2_match(i32 %41, i8* %42, %struct.ocfs2_dir_entry* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @ocfs2_check_dir_entry(%struct.inode* %47, %struct.ocfs2_dir_entry* %48, %struct.buffer_head* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 -1, i32* %21, align 4
  br label %75

54:                                               ; preds = %46
  %55 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %56 = load %struct.ocfs2_dir_entry**, %struct.ocfs2_dir_entry*** %16, align 8
  store %struct.ocfs2_dir_entry* %55, %struct.ocfs2_dir_entry** %56, align 8
  store i32 1, i32* %21, align 4
  br label %75

57:                                               ; preds = %40, %31
  %58 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %59 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %21, align 4
  br label %75

65:                                               ; preds = %57
  %66 = load i32, i32* %20, align 4
  %67 = load i8*, i8** %19, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %19, align 8
  %70 = load i32, i32* %20, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %13, align 8
  br label %27

74:                                               ; preds = %27
  br label %75

75:                                               ; preds = %74, %64, %54, %53
  %76 = load i32, i32* %21, align 4
  %77 = call i32 @trace_ocfs2_search_dirblock(i32 %76)
  %78 = load i32, i32* %21, align 4
  ret i32 %78
}

declare dso_local i64 @ocfs2_match(i32, i8*, %struct.ocfs2_dir_entry*) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_search_dirblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
