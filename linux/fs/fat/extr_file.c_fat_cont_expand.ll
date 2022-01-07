; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_cont_expand.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_cont_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.address_space* }
%struct.address_space = type { i32 }

@S_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @fat_cont_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_cont_expand(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @generic_cont_expand_simple(%struct.inode* %21, i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = load i32, i32* @S_CTIME, align 4
  %30 = load i32, i32* @S_MTIME, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @fat_truncate_time(%struct.inode* %28, i32* null, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @mark_inode_dirty(%struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i64 @IS_SYNC(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %27
  %39 = load %struct.address_space*, %struct.address_space** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  %44 = sub nsw i64 %43, 1
  %45 = call i32 @filemap_fdatawrite_range(%struct.address_space* %39, i64 %40, i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.address_space*, %struct.address_space** %5, align 8
  %47 = call i32 @sync_mapping_buffers(%struct.address_space* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %38
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = call i32 @write_inode_now(%struct.inode* %53, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load %struct.address_space*, %struct.address_space** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %65, %66
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @filemap_fdatawait_range(%struct.address_space* %63, i64 %64, i64 %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %62, %59
  br label %71

71:                                               ; preds = %70, %27
  br label %72

72:                                               ; preds = %71, %26
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @generic_cont_expand_simple(%struct.inode*, i64) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawrite_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @sync_mapping_buffers(%struct.address_space*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @filemap_fdatawait_range(%struct.address_space*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
