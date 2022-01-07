; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i64 }
%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.sysv_dir_entry = type { i8*, i32 }
%struct.page = type { i32 }

@SYSV_DIRSIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@SYSV_NAMELEN = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @sysv_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sysv_dir_entry*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %17 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %18 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = call %struct.inode* @file_inode(%struct.file* %20)
  store %struct.inode* %21, %struct.inode** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  store %struct.super_block* %24, %struct.super_block** %8, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i64 @dir_pages(%struct.inode* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @SYSV_DIRSIZE, align 8
  %29 = add i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = load i64, i64* @SYSV_DIRSIZE, align 8
  %32 = sub i64 %31, 1
  %33 = xor i64 %32, -1
  %34 = and i64 %30, %33
  store i64 %34, i64* %6, align 8
  %35 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %36 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %127

43:                                               ; preds = %2
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @PAGE_MASK, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = lshr i64 %49, %50
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %123, %43
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call %struct.page* @dir_get_page(%struct.inode* %57, i64 %58)
  store %struct.page* %59, %struct.page** %15, align 8
  %60 = load %struct.page*, %struct.page** %15, align 8
  %61 = call i64 @IS_ERR(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %123

64:                                               ; preds = %56
  %65 = load %struct.page*, %struct.page** %15, align 8
  %66 = call i64 @page_address(%struct.page* %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = bitcast i8* %71 to %struct.sysv_dir_entry*
  store %struct.sysv_dir_entry* %72, %struct.sysv_dir_entry** %14, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i64, i64* @SYSV_DIRSIZE, align 8
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8* %79, i8** %13, align 8
  br label %80

80:                                               ; preds = %113, %64
  %81 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %14, align 8
  %82 = bitcast %struct.sysv_dir_entry* %81 to i8*
  %83 = load i8*, i8** %13, align 8
  %84 = icmp ule i8* %82, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %14, align 8
  %87 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %16, align 8
  %89 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %14, align 8
  %90 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %113

94:                                               ; preds = %85
  %95 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i32, i32* @SYSV_NAMELEN, align 4
  %99 = call i32 @strnlen(i8* %97, i32 %98)
  %100 = load %struct.super_block*, %struct.super_block** %8, align 8
  %101 = call i32 @SYSV_SB(%struct.super_block* %100)
  %102 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %14, align 8
  %103 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @fs16_to_cpu(i32 %101, i32 %104)
  %106 = load i32, i32* @DT_UNKNOWN, align 4
  %107 = call i32 @dir_emit(%struct.dir_context* %95, i8* %96, i32 %99, i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %94
  %110 = load %struct.page*, %struct.page** %15, align 8
  %111 = call i32 @dir_put_page(%struct.page* %110)
  store i32 0, i32* %3, align 4
  br label %127

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %93
  %114 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %14, align 8
  %115 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %114, i32 1
  store %struct.sysv_dir_entry* %115, %struct.sysv_dir_entry** %14, align 8
  %116 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %117 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 16
  store i64 %119, i64* %117, align 8
  br label %80

120:                                              ; preds = %80
  %121 = load %struct.page*, %struct.page** %15, align 8
  %122 = call i32 @dir_put_page(%struct.page* %121)
  br label %123

123:                                              ; preds = %120, %63
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %52

126:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %109, %42
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @fs16_to_cpu(i32, i32) #1

declare dso_local i32 @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
