; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_check_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dir.c_nilfs_check_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nilfs_dir_entry = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"size of directory #%lu is not a multiple of chunk size\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unaligned directory entry\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"bad entry in directory #%lu: %s - offset=%lu, inode=%lu, rec_len=%d, name_len=%d\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"entry in directory #%lu spans the page boundary offset=%lu, inode=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @nilfs_check_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_check_page(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nilfs_dir_entry*, align 8
  %12 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @nilfs_chunk_size(%struct.inode* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i8* @page_address(%struct.page* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = lshr i32 %28, %29
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PAGE_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, 1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %114

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %111

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %1
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %101, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @NILFS_DIR_REC_LEN(i32 1)
  %58 = sub i32 %56, %57
  %59 = icmp ule i32 %55, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = bitcast i8* %64 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %65, %struct.nilfs_dir_entry** %11, align 8
  %66 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %67 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nilfs_rec_len_from_disk(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @NILFS_DIR_REC_LEN(i32 1)
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %120

74:                                               ; preds = %60
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 3
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %121

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %82 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @NILFS_DIR_REC_LEN(i32 %83)
  %85 = icmp ult i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %122

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %88, %89
  %91 = sub i32 %90, 1
  %92 = load i32, i32* %8, align 4
  %93 = xor i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = sub i32 %94, 1
  %96 = xor i32 %95, -1
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %123

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %54

105:                                              ; preds = %54
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %146

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %51
  %112 = load %struct.page*, %struct.page** %3, align 8
  %113 = call i32 @SetPageChecked(%struct.page* %112)
  store i32 1, i32* %2, align 4
  br label %171

114:                                              ; preds = %47
  %115 = load %struct.super_block*, %struct.super_block** %5, align 8
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.super_block*, i8*, i32, ...) @nilfs_error(%struct.super_block* %115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %168

120:                                              ; preds = %73
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %124

121:                                              ; preds = %78
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %124

122:                                              ; preds = %86
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %124

123:                                              ; preds = %99
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %124

124:                                              ; preds = %123, %122, %121, %120
  %125 = load %struct.super_block*, %struct.super_block** %5, align 8
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = load %struct.page*, %struct.page** %3, align 8
  %131 = getelementptr inbounds %struct.page, %struct.page* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PAGE_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %134, %135
  %137 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %138 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @le64_to_cpu(i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %143 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.super_block*, i8*, i32, ...) @nilfs_error(%struct.super_block* %125, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %128, i8* %129, i32 %136, i64 %140, i32 %141, i32 %144)
  br label %168

146:                                              ; preds = %109
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = bitcast i8* %150 to %struct.nilfs_dir_entry*
  store %struct.nilfs_dir_entry* %151, %struct.nilfs_dir_entry** %11, align 8
  %152 = load %struct.super_block*, %struct.super_block** %5, align 8
  %153 = load %struct.inode*, %struct.inode** %4, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.page*, %struct.page** %3, align 8
  %157 = getelementptr inbounds %struct.page, %struct.page* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PAGE_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %8, align 4
  %162 = add i32 %160, %161
  %163 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %11, align 8
  %164 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @le64_to_cpu(i32 %165)
  %167 = call i32 (%struct.super_block*, i8*, i32, ...) @nilfs_error(%struct.super_block* %152, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %155, i32 %162, i64 %166)
  br label %168

168:                                              ; preds = %146, %124, %114
  %169 = load %struct.page*, %struct.page** %3, align 8
  %170 = call i32 @SetPageError(%struct.page* %169)
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %168, %111
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @nilfs_chunk_size(%struct.inode*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @NILFS_DIR_REC_LEN(i32) #1

declare dso_local i32 @nilfs_rec_len_from_disk(i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @nilfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
