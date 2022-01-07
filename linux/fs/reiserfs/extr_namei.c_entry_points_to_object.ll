; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_entry_points_to_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_entry_points_to_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_dir_entry = type { i64, i64, i64 }
%struct.inode = type { i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"vs-7042\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"entry must be visible\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-7043\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.reiserfs_dir_entry*, %struct.inode*)* @entry_points_to_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_points_to_object(i8* %0, i32 %1, %struct.reiserfs_dir_entry* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_dir_entry*, align 8
  %9 = alloca %struct.inode*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.reiserfs_dir_entry* %2, %struct.reiserfs_dir_entry** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %8, align 8
  %13 = call i32 @de_still_valid(i8* %10, i32 %11, %struct.reiserfs_dir_entry* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

16:                                               ; preds = %4
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %8, align 8
  %21 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %8, align 8
  %24 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i64 @de_visible(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @reiserfs_panic(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %19
  %35 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %8, align 8
  %36 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %5, align 4
  br label %57

44:                                               ; preds = %16
  %45 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %8, align 8
  %46 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %8, align 8
  %49 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i64 @de_visible(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %44
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %34, %15
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @de_still_valid(i8*, i32, %struct.reiserfs_dir_entry*) #1

declare dso_local i64 @de_visible(i64) #1

declare dso_local i32 @reiserfs_panic(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
