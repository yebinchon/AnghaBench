; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_punch_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_punch_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64)* @punch_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @punch_hole(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @f2fs_convert_inline_inode(%struct.inode* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %147

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = and i64 %39, %42
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %23
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  %54 = call i32 @fill_zero(%struct.inode* %48, i64 %49, i64 %50, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %147

59:                                               ; preds = %47
  br label %145

60:                                               ; preds = %23
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %69, %70
  %72 = call i32 @fill_zero(%struct.inode* %64, i64 %65, i64 %67, i64 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %4, align 4
  br label %147

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @fill_zero(%struct.inode* %82, i64 %83, i64 0, i64 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %147

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %144

95:                                               ; preds = %91
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load %struct.address_space*, %struct.address_space** %97, align 8
  store %struct.address_space* %98, %struct.address_space** %13, align 8
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %99)
  store %struct.f2fs_sb_info* %100, %struct.f2fs_sb_info** %16, align 8
  %101 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %102 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %101, i32 1)
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* @PAGE_SHIFT, align 8
  %105 = shl i64 %103, %104
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @PAGE_SHIFT, align 8
  %108 = shl i64 %106, %107
  store i64 %108, i64* %15, align 8
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @WRITE, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = call i32 @down_write(i32* %114)
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = call i32 @down_write(i32* %118)
  %120 = load %struct.address_space*, %struct.address_space** %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = sub i64 %122, 1
  %124 = call i32 @truncate_inode_pages_range(%struct.address_space* %120, i64 %121, i64 %123)
  %125 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %126 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %125)
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @f2fs_truncate_hole(%struct.inode* %127, i64 %128, i64 %129)
  store i32 %130, i32* %12, align 4
  %131 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %16, align 8
  %132 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %131)
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = call i32 @up_write(i32* %135)
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @WRITE, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = call i32 @up_write(i32* %142)
  br label %144

144:                                              ; preds = %95, %91
  br label %145

145:                                              ; preds = %144, %59
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %88, %75, %57, %21
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @fill_zero(%struct.inode*, i64, i64, i64) #1

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_truncate_hole(%struct.inode*, i64, i64) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
