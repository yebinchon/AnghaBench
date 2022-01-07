; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_bulk_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32, i32, %struct.bu_info, i32 }
%struct.bu_info = type { i32, i32, i32* }
%struct.ubifs_inode = type { i64, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @ubifs_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_bulk_read(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bu_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %20, align 8
  store %struct.ubifs_info* %21, %struct.ubifs_info** %5, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %22)
  store %struct.ubifs_inode* %23, %struct.ubifs_inode** %6, align 8
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %136

38:                                               ; preds = %1
  %39 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %40 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %39, i32 0, i32 3
  %41 = call i64 @mutex_trylock(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %136

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, 1
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %51 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %58 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %49
  br label %131

60:                                               ; preds = %44
  %61 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %62 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %60
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %71 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %131

75:                                               ; preds = %65
  %76 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %77 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %60
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 0
  %81 = call i64 @mutex_trylock(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 2
  store %struct.bu_info* %85, %struct.bu_info** %9, align 8
  br label %97

86:                                               ; preds = %78
  %87 = load i32, i32* @GFP_NOFS, align 4
  %88 = load i32, i32* @__GFP_NOWARN, align 4
  %89 = or i32 %87, %88
  %90 = call %struct.bu_info* @kmalloc(i32 16, i32 %89)
  store %struct.bu_info* %90, %struct.bu_info** %9, align 8
  %91 = load %struct.bu_info*, %struct.bu_info** %9, align 8
  %92 = icmp ne %struct.bu_info* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %131

94:                                               ; preds = %86
  %95 = load %struct.bu_info*, %struct.bu_info** %9, align 8
  %96 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  store i32 1, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %83
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.bu_info*, %struct.bu_info** %9, align 8
  %102 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %104 = load %struct.bu_info*, %struct.bu_info** %9, align 8
  %105 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %104, i32 0, i32 0
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.page*, %struct.page** %3, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %113 = zext i32 %112 to i64
  %114 = shl i64 %111, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @data_key_init(%struct.ubifs_info* %103, i32* %105, i32 %108, i32 %115)
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %118 = load %struct.bu_info*, %struct.bu_info** %9, align 8
  %119 = load %struct.page*, %struct.page** %3, align 8
  %120 = call i32 @ubifs_do_bulk_read(%struct.ubifs_info* %117, %struct.bu_info* %118, %struct.page* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %97
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  br label %130

127:                                              ; preds = %97
  %128 = load %struct.bu_info*, %struct.bu_info** %9, align 8
  %129 = call i32 @kfree(%struct.bu_info* %128)
  br label %130

130:                                              ; preds = %127, %123
  br label %131

131:                                              ; preds = %130, %93, %74, %59
  %132 = load %struct.ubifs_inode*, %struct.ubifs_inode** %6, align 8
  %133 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %132, i32 0, i32 3
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %131, %43, %37
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local %struct.bu_info* @kmalloc(i32, i32) #1

declare dso_local i32 @data_key_init(%struct.ubifs_info*, i32*, i32, i32) #1

declare dso_local i32 @ubifs_do_bulk_read(%struct.ubifs_info*, %struct.bu_info*, %struct.page*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.bu_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
