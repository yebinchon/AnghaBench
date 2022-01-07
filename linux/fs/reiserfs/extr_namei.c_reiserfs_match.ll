; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_dir_entry = type { i32, i64, i64, i32 }

@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@NAME_FOUND = common dso_local global i32 0, align 4
@NAME_FOUND_INVISIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_dir_entry*, i8*, i32)* @reiserfs_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_match(%struct.reiserfs_dir_entry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.reiserfs_dir_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.reiserfs_dir_entry* %0, %struct.reiserfs_dir_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @NAME_NOT_FOUND, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %11 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %16 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %20 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @memcmp(i32 %17, i8* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %14
  %25 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %26 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %29 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i64 @de_visible(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @NAME_FOUND, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @NAME_FOUND_INVISIBLE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %14, %3
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @de_visible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
