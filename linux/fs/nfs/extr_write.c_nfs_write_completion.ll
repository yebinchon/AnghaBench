; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_completion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i32 (%struct.nfs_pgio_header*)*, i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.nfs_page = type { i32, i64, i32, i64 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @nfs_write_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_write_completion(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = alloca %struct.nfs_commit_info, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 7
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nfs_init_cinfo_from_inode(%struct.nfs_commit_info* %3, i32 %15)
  br label %17

17:                                               ; preds = %85, %12
  %18 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %18, i32 0, i32 8
  %20 = call i32 @list_empty(%struct.TYPE_4__* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %90

23:                                               ; preds = %17
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.nfs_page* @nfs_list_entry(i32 %27)
  store %struct.nfs_page* %28, %struct.nfs_page** %5, align 8
  %29 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  %34 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %35 = call i32 @nfs_list_remove_request(%struct.nfs_page* %34)
  %36 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 7
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %23
  %42 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @page_file_mapping(i32 %50)
  %52 = call i32 @nfs_set_pageerror(i32 %51)
  %53 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %54 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %57 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @nfs_mapping_set_error(i32 %55, i32 %58)
  br label %82

60:                                               ; preds = %41, %23
  %61 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %62 = call i64 @nfs_write_need_commit(%struct.nfs_pgio_header* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %66 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %68 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %67, i32 0, i32 0
  %69 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %70 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @memcpy(i32* %68, i32* %71, i32 4)
  %73 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %74 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %75 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %78 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nfs_mark_request_commit(%struct.nfs_page* %73, i32 %76, %struct.nfs_commit_info* %3, i32 %79)
  br label %85

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %47
  %83 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %84 = call i32 @nfs_inode_remove_request(%struct.nfs_page* %83)
  br label %85

85:                                               ; preds = %82, %64
  %86 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %87 = call i32 @nfs_end_page_writeback(%struct.nfs_page* %86)
  %88 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %89 = call i32 @nfs_release_request(%struct.nfs_page* %88)
  br label %17

90:                                               ; preds = %17
  br label %91

91:                                               ; preds = %90, %11
  %92 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %93 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @nfs_io_completion_put(i32 %94)
  %96 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %97 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %96, i32 0, i32 1
  %98 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %97, align 8
  %99 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %100 = call i32 %98(%struct.nfs_pgio_header* %99)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_init_cinfo_from_inode(%struct.nfs_commit_info*, i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_4__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_set_pageerror(i32) #1

declare dso_local i32 @page_file_mapping(i32) #1

declare dso_local i32 @nfs_mapping_set_error(i32, i32) #1

declare dso_local i64 @nfs_write_need_commit(%struct.nfs_pgio_header*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs_mark_request_commit(%struct.nfs_page*, i32, %struct.nfs_commit_info*, i32) #1

declare dso_local i32 @nfs_inode_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_end_page_writeback(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_io_completion_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
