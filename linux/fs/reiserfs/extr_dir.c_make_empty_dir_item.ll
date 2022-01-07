; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_make_empty_dir_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_make_empty_dir_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_de_head = type { i64, i8*, i8* }

@EMPTY_DIR_SIZE = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DOT_DOT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_empty_dir_item(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
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
  %14 = load i32, i32* @EMPTY_DIR_SIZE, align 4
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
  %32 = load i32, i32* @EMPTY_DIR_SIZE, align 4
  %33 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @ROUND_UP(i32 %33)
  %35 = sub nsw i32 %32, %34
  %36 = call i32 @put_deh_location(%struct.reiserfs_de_head* %31, i32 %35)
  %37 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %38 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %37)
  %39 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %40 = load i32, i32* @DOT_DOT_OFFSET, align 4
  %41 = call i32 @put_deh_offset(%struct.reiserfs_de_head* %39, i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %44 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %47 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %49 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %51 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %52 = call i32 @deh_location(%struct.reiserfs_de_head* %51)
  %53 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @ROUND_UP(i32 %53)
  %55 = sub nsw i32 %52, %54
  %56 = call i32 @put_deh_location(%struct.reiserfs_de_head* %50, i32 %55)
  %57 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %58 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %61 = call i32 @deh_location(%struct.reiserfs_de_head* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = call i32 @memcpy(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %12, align 8
  %67 = call i32 @deh_location(%struct.reiserfs_de_head* %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = call i32 @memcpy(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_deh_offset(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @put_deh_location(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @ROUND_UP(i32) #1

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
