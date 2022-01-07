; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_make_empty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.sysv_dir_entry = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@SYSV_DIRSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_make_empty(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.sysv_dir_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.page* @grab_cache_page(i32 %12, i32 0)
  store %struct.page* %13, %struct.page** %6, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = load i32, i32* @SYSV_DIRSIZE, align 4
  %22 = mul nsw i32 2, %21
  %23 = call i32 @sysv_prepare_chunk(%struct.page* %20, i32 0, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = call i32 @unlock_page(%struct.page* %27)
  br label %76

29:                                               ; preds = %19
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i32 @kmap(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i64 @page_address(%struct.page* %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 @memset(i8* %35, i32 0, i32 %36)
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %39, %struct.sysv_dir_entry** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SYSV_SB(i32 %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_fs16(i32 %43, i32 %46)
  %48 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %49 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %51 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strcpy(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %55 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %54, i32 1
  store %struct.sysv_dir_entry* %55, %struct.sysv_dir_entry** %7, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SYSV_SB(i32 %58)
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_fs16(i32 %59, i32 %62)
  %64 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %65 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %7, align 8
  %67 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @strcpy(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.page*, %struct.page** %6, align 8
  %71 = call i32 @kunmap(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %6, align 8
  %73 = load i32, i32* @SYSV_DIRSIZE, align 4
  %74 = mul nsw i32 2, %73
  %75 = call i32 @dir_commit_chunk(%struct.page* %72, i32 0, i32 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %29, %26
  %77 = load %struct.page*, %struct.page** %6, align 8
  %78 = call i32 @put_page(%struct.page* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.page* @grab_cache_page(i32, i32) #1

declare dso_local i32 @sysv_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_fs16(i32, i32) #1

declare dso_local i32 @SYSV_SB(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
