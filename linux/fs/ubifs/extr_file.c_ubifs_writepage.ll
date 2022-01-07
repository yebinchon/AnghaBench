; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.ubifs_info* }
%struct.TYPE_5__ = type { i32 (%struct.inode*, i32*)* }
%struct.ubifs_info = type { i32 }
%struct.writeback_control = type { i32 }
%struct.ubifs_inode = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ino %lu, pg %lu, pg flags %#lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ubifs_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.ubifs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %23, align 8
  store %struct.ubifs_info* %24, %struct.ubifs_info** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %25)
  store %struct.ubifs_inode* %26, %struct.ubifs_inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @i_size_read(%struct.inode* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dbg_gen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42, i32 %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = call i32 @PagePrivate(%struct.page* %48)
  %50 = call i32 @ubifs_assert(%struct.ubifs_info* %47, i32 %49)
  %51 = load %struct.page*, %struct.page** %4, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %2
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %2
  store i32 0, i32* %12, align 4
  br label %144

66:                                               ; preds = %62, %56
  %67 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %68 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %67, i32 0, i32 1
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %71 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ubifs_inode*, %struct.ubifs_inode** %8, align 8
  %74 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %66
  %82 = load %struct.page*, %struct.page** %4, align 8
  %83 = getelementptr inbounds %struct.page, %struct.page* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @PAGE_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = icmp sge i64 %84, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %81
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32 (%struct.inode*, i32*)*, i32 (%struct.inode*, i32*)** %96, align 8
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = call i32 %97(%struct.inode* %98, i32* null)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %144

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.page*, %struct.page** %4, align 8
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = call i32 @do_writepage(%struct.page* %105, i32 %106)
  store i32 %107, i32* %3, align 4
  br label %148

108:                                              ; preds = %66
  %109 = load %struct.page*, %struct.page** %4, align 8
  %110 = call i8* @kmap_atomic(%struct.page* %109)
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %111, i64 %113
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i32 @memset(i8* %114, i32 0, i32 %117)
  %119 = load %struct.page*, %struct.page** %4, align 8
  %120 = call i32 @flush_dcache_page(%struct.page* %119)
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @kunmap_atomic(i8* %121)
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %108
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32 (%struct.inode*, i32*)*, i32 (%struct.inode*, i32*)** %132, align 8
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = call i32 %133(%struct.inode* %134, i32* null)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %144

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %108
  %141 = load %struct.page*, %struct.page** %4, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @do_writepage(%struct.page* %141, i32 %142)
  store i32 %143, i32* %3, align 4
  br label %148

144:                                              ; preds = %138, %102, %65
  %145 = load %struct.page*, %struct.page** %4, align 8
  %146 = call i32 @unlock_page(%struct.page* %145)
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %140, %104
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i64, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_writepage(%struct.page*, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
