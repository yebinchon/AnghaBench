; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_make_empty_dir_item_v1.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_make_empty_dir_item_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_de_head = type { i64, i8*, i8* }

@EMPTY_DIR_SIZE_V1 = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DOT_DOT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_empty_dir_item_v1(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.reiserfs_de_head*, align 8
  %12 = alloca %struct.reiserfs_de_head*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @EMPTY_DIR_SIZE_V1, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.reiserfs_de_head*
  store %struct.reiserfs_de_head* %17, %struct.reiserfs_de_head** %11, align 8
  %18 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %19 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %18, i64 1
  store %struct.reiserfs_de_head* %19, %struct.reiserfs_de_head** %12, align 8
  %20 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %21 = load i32, i32* @DOT_OFFSET, align 4
  %22 = call i32 @put_deh_offset(%struct.reiserfs_de_head* %20, i32 %21)
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %25 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %28 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %30 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %32 = load i32, i32* @EMPTY_DIR_SIZE_V1, align 4
  %33 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @put_deh_location(%struct.reiserfs_de_head* %31, i32 %34)
  %36 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %37 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %36)
  %38 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %39 = load i32, i32* @DOT_DOT_OFFSET, align 4
  %40 = call i32 @put_deh_offset(%struct.reiserfs_de_head* %38, i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %43 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %46 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %48 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %50 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %51 = call i32 @deh_location(%struct.reiserfs_de_head* %50)
  %52 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = sub nsw i32 %51, %52
  %54 = call i32 @put_deh_location(%struct.reiserfs_de_head* %49, i32 %53)
  %55 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %56 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %59 = call i32 @deh_location(%struct.reiserfs_de_head* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = call i32 @memcpy(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %65 = call i32 @deh_location(%struct.reiserfs_de_head* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = call i32 @memcpy(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_deh_offset(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @put_deh_location(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mark_de_visible(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
