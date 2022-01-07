; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_add_dirent_to_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_add_dirent_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fuse_dirent = type { i64 }
%struct.fuse_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i64 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, %struct.fuse_dirent*, i64)* @fuse_add_dirent_to_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_add_dirent_to_cache(%struct.file* %0, %struct.fuse_dirent* %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_dirent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fuse_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.fuse_dirent* %1, %struct.fuse_dirent** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = call i32 @file_inode(%struct.file* %15)
  %17 = call %struct.fuse_inode* @get_fuse_inode(i32 %16)
  store %struct.fuse_inode* %17, %struct.fuse_inode** %7, align 8
  %18 = load %struct.fuse_dirent*, %struct.fuse_dirent** %5, align 8
  %19 = call i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %21 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %25 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %32 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29, %3
  %37 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %38 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = call i32 @spin_unlock(i32* %39)
  br label %168

41:                                               ; preds = %29
  %42 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %43 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %47 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @PAGE_MASK, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %50, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = ashr i64 %55, %56
  store i64 %57, i64* %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %59, %60
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %65, %41
  %69 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %70 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.file*, %struct.file** %4, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call %struct.page* @find_lock_page(i32 %78, i64 %79)
  store %struct.page* %80, %struct.page** %10, align 8
  br label %91

81:                                               ; preds = %68
  %82 = load %struct.file*, %struct.file** %4, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.file*, %struct.file** %4, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mapping_gfp_mask(i32 %88)
  %90 = call %struct.page* @find_or_create_page(i32 %84, i64 %85, i32 %89)
  store %struct.page* %90, %struct.page** %10, align 8
  br label %91

91:                                               ; preds = %81, %75
  %92 = load %struct.page*, %struct.page** %10, align 8
  %93 = icmp ne %struct.page* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %168

95:                                               ; preds = %91
  %96 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %97 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = call i32 @spin_lock(i32* %98)
  %100 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %101 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %123, label %106

106:                                              ; preds = %95
  %107 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %108 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %123, label %113

113:                                              ; preds = %106
  %114 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %115 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = icmp ne i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @WARN_ON(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113, %106, %95
  br label %159

124:                                              ; preds = %113
  %125 = load %struct.page*, %struct.page** %10, align 8
  %126 = call i8* @kmap_atomic(%struct.page* %125)
  store i8* %126, i8** %14, align 8
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @clear_page(i8* %130)
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i8*, i8** %14, align 8
  %134 = load i32, i32* %13, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr i8, i8* %133, i64 %135
  %137 = load %struct.fuse_dirent*, %struct.fuse_dirent** %5, align 8
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @memcpy(i8* %136, %struct.fuse_dirent* %137, i64 %138)
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 @kunmap_atomic(i8* %140)
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @PAGE_SHIFT, align 8
  %144 = shl i64 %142, %143
  %145 = load i32, i32* %13, align 4
  %146 = zext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = load i64, i64* %8, align 8
  %149 = add i64 %147, %148
  %150 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %151 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  store i64 %149, i64* %152, align 8
  %153 = load %struct.fuse_dirent*, %struct.fuse_dirent** %5, align 8
  %154 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %157 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i64 %155, i64* %158, align 8
  br label %159

159:                                              ; preds = %132, %123
  %160 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %161 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load %struct.page*, %struct.page** %10, align 8
  %165 = call i32 @unlock_page(%struct.page* %164)
  %166 = load %struct.page*, %struct.page** %10, align 8
  %167 = call i32 @put_page(%struct.page* %166)
  br label %168

168:                                              ; preds = %159, %94, %36
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @find_lock_page(i32, i64) #1

declare dso_local %struct.page* @find_or_create_page(i32, i64, i32) #1

declare dso_local i32 @mapping_gfp_mask(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @clear_page(i8*) #1

declare dso_local i32 @memcpy(i8*, %struct.fuse_dirent*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
