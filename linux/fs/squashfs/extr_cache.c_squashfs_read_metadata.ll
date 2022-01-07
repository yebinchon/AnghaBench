; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_read_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32 }
%struct.squashfs_cache_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Entered squashfs_read_metadata [%llx:%x]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @squashfs_read_metadata(%struct.super_block* %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.squashfs_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.squashfs_cache_entry*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %17, align 8
  store %struct.squashfs_sb_info* %18, %struct.squashfs_sb_info** %12, align 8
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %107

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %98, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %101

37:                                               ; preds = %34
  %38 = load %struct.super_block*, %struct.super_block** %7, align 8
  %39 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %12, align 8
  %40 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.squashfs_cache_entry* @squashfs_cache_get(%struct.super_block* %38, i32 %41, i32 %43, i32 0)
  store %struct.squashfs_cache_entry* %44, %struct.squashfs_cache_entry** %15, align 8
  %45 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %46 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %51 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  br label %103

53:                                               ; preds = %37
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %57 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %103

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @squashfs_copy_data(i8* %65, %struct.squashfs_cache_entry* %66, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr i8, i8* %75, i64 %76
  store i8* %77, i8** %8, align 8
  br label %78

78:                                               ; preds = %73, %64
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %89 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %94 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %10, align 8
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %92, %78
  %99 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %100 = call i32 @squashfs_cache_put(%struct.squashfs_cache_entry* %99)
  br label %34

101:                                              ; preds = %34
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %6, align 4
  br label %107

103:                                              ; preds = %60, %49
  %104 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %15, align 8
  %105 = call i32 @squashfs_cache_put(%struct.squashfs_cache_entry* %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %101, %30
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.squashfs_cache_entry* @squashfs_cache_get(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @squashfs_copy_data(i8*, %struct.squashfs_cache_entry*, i32, i32) #1

declare dso_local i32 @squashfs_cache_put(%struct.squashfs_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
