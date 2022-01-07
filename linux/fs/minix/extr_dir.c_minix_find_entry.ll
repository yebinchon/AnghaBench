; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.dentry = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.page = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i8*, i64, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@MINIX_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @minix_find_entry(%struct.dentry* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.minix_sb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.inode* @d_inode(i32 %31)
  store %struct.inode* %32, %struct.inode** %8, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %9, align 8
  %36 = load %struct.super_block*, %struct.super_block** %9, align 8
  %37 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %36)
  store %struct.minix_sb_info* %37, %struct.minix_sb_info** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i64 @dir_pages(%struct.inode* %38)
  store i64 %39, i64* %12, align 8
  store %struct.page* null, %struct.page** %13, align 8
  %40 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* null, %struct.page** %40, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %121, %2
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %124

45:                                               ; preds = %41
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call %struct.page* @dir_get_page(%struct.inode* %46, i64 %47)
  store %struct.page* %48, %struct.page** %13, align 8
  %49 = load %struct.page*, %struct.page** %13, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %121

53:                                               ; preds = %45
  %54 = load %struct.page*, %struct.page** %13, align 8
  %55 = call i64 @page_address(%struct.page* %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %17, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @minix_last_byte(%struct.inode* %58, i64 %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %64 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %62 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %18, align 8
  %70 = load i8*, i8** %17, align 8
  store i8* %70, i8** %14, align 8
  br label %71

71:                                               ; preds = %114, %53
  %72 = load i8*, i8** %14, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = icmp ule i8* %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %71
  %76 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %77 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MINIX_V3, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i8*, i8** %14, align 8
  %83 = bitcast i8* %82 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %19, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %15, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %16, align 4
  br label %99

90:                                               ; preds = %75
  %91 = load i8*, i8** %14, align 8
  %92 = bitcast i8* %91 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %20, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %15, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %90, %81
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  br label %114

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %106 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = call i64 @namecompare(i32 %104, i32 %107, i8* %108, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %125

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %102
  %115 = load i8*, i8** %14, align 8
  %116 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %117 = call i8* @minix_next_entry(i8* %115, %struct.minix_sb_info* %116)
  store i8* %117, i8** %14, align 8
  br label %71

118:                                              ; preds = %71
  %119 = load %struct.page*, %struct.page** %13, align 8
  %120 = call i32 @dir_put_page(%struct.page* %119)
  br label %121

121:                                              ; preds = %118, %52
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %41

124:                                              ; preds = %41
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %130

125:                                              ; preds = %112
  %126 = load %struct.page*, %struct.page** %13, align 8
  %127 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page* %126, %struct.page** %127, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = bitcast i8* %128 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %129, %struct.TYPE_6__** %3, align 8
  br label %130

130:                                              ; preds = %125, %124
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %131
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @minix_last_byte(%struct.inode*, i64) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i8*) #1

declare dso_local i8* @minix_next_entry(i8*, %struct.minix_sb_info*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
