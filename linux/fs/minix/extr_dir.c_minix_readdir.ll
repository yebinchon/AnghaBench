; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i64 }
%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i32, i64, i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.TYPE_3__ = type { i8*, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MINIX_V3 = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @minix_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.minix_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call %struct.inode* @file_inode(%struct.file* %23)
  store %struct.inode* %24, %struct.inode** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %7, align 8
  %28 = load %struct.super_block*, %struct.super_block** %7, align 8
  %29 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %28)
  store %struct.minix_sb_info* %29, %struct.minix_sb_info** %8, align 8
  %30 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %31 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i64 @dir_pages(%struct.inode* %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %36 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @ALIGN(i64 %38, i32 %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %42 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

49:                                               ; preds = %2
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @PAGE_MASK, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %50, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = lshr i64 %55, %56
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %150, %49
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %153

62:                                               ; preds = %58
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call %struct.page* @dir_get_page(%struct.inode* %63, i64 %64)
  store %struct.page* %65, %struct.page** %17, align 8
  %66 = load %struct.page*, %struct.page** %17, align 8
  %67 = call i64 @IS_ERR(%struct.page* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %150

70:                                               ; preds = %62
  %71 = load %struct.page*, %struct.page** %17, align 8
  %72 = call i64 @page_address(%struct.page* %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %15, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8* %77, i8** %14, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @minix_last_byte(%struct.inode* %79, i64 %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8* %87, i8** %16, align 8
  br label %88

88:                                               ; preds = %143, %70
  %89 = load i8*, i8** %14, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = icmp ule i8* %89, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %88
  %93 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %94 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MINIX_V3, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i8*, i8** %14, align 8
  %100 = bitcast i8* %99 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %20, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %18, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %19, align 8
  br label %116

107:                                              ; preds = %92
  %108 = load i8*, i8** %14, align 8
  %109 = bitcast i8* %108 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %21, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %18, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %19, align 8
  br label %116

116:                                              ; preds = %107, %98
  %117 = load i64, i64* %19, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load i8*, i8** %18, align 8
  %121 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %122 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @strnlen(i8* %120, i32 %123)
  store i32 %124, i32* %22, align 4
  %125 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %126 = load i8*, i8** %18, align 8
  %127 = load i32, i32* %22, align 4
  %128 = load i64, i64* %19, align 8
  %129 = load i32, i32* @DT_UNKNOWN, align 4
  %130 = call i32 @dir_emit(%struct.dir_context* %125, i8* %126, i32 %127, i64 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %119
  %133 = load %struct.page*, %struct.page** %17, align 8
  %134 = call i32 @dir_put_page(%struct.page* %133)
  store i32 0, i32* %3, align 4
  br label %154

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135, %116
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %140 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, %138
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %136
  %144 = load i8*, i8** %14, align 8
  %145 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %146 = call i8* @minix_next_entry(i8* %144, %struct.minix_sb_info* %145)
  store i8* %146, i8** %14, align 8
  br label %88

147:                                              ; preds = %88
  %148 = load %struct.page*, %struct.page** %17, align 8
  %149 = call i32 @dir_put_page(%struct.page* %148)
  br label %150

150:                                              ; preds = %147, %69
  %151 = load i64, i64* %13, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %58

153:                                              ; preds = %58
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %132, %48
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @minix_last_byte(%struct.inode*, i64) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i64, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i8* @minix_next_entry(i8*, %struct.minix_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
