; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { %struct.ocfs2_dir_entry*, %struct.buffer_head* }
%struct.ocfs2_dir_entry = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_find_entry(i8* %0, i32 %1, %struct.inode* %2, %struct.ocfs2_dir_lookup_result* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_dir_entry*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.ocfs2_dir_lookup_result* %3, %struct.ocfs2_dir_lookup_result** %9, align 8
  store %struct.ocfs2_dir_entry* null, %struct.ocfs2_dir_entry** %11, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = call i64 @ocfs2_dir_indexed(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %20 = call i32 @ocfs2_find_entry_dx(i8* %16, i32 %17, %struct.inode* %18, %struct.ocfs2_dir_lookup_result* %19)
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call %struct.buffer_head* @ocfs2_find_entry_id(i8* %30, i32 %31, %struct.inode* %32, %struct.ocfs2_dir_entry** %11)
  store %struct.buffer_head* %33, %struct.buffer_head** %10, align 8
  br label %39

34:                                               ; preds = %21
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call %struct.buffer_head* @ocfs2_find_entry_el(i8* %35, i32 %36, %struct.inode* %37, %struct.ocfs2_dir_entry** %11)
  store %struct.buffer_head* %38, %struct.buffer_head** %10, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %41 = icmp eq %struct.buffer_head* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %52

45:                                               ; preds = %39
  %46 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %47 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %48 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %47, i32 0, i32 1
  store %struct.buffer_head* %46, %struct.buffer_head** %48, align 8
  %49 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %11, align 8
  %50 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %9, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %50, i32 0, i32 0
  store %struct.ocfs2_dir_entry* %49, %struct.ocfs2_dir_entry** %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %42, %15
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i32 @ocfs2_find_entry_dx(i8*, i32, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ocfs2_find_entry_id(i8*, i32, %struct.inode*, %struct.ocfs2_dir_entry**) #1

declare dso_local %struct.buffer_head* @ocfs2_find_entry_el(i8*, i32, %struct.inode*, %struct.ocfs2_dir_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
