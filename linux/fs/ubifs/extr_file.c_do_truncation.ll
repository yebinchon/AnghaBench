; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_do_truncation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_do_truncation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.iattr = type { i32 }
%struct.ubifs_budget_req = type { i32, i32, i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.page = type { i32 }

@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ino %lu, size %lld -> %lld\00", align 1
@UBIFS_TRUN_NODE_SZ = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.iattr*)* @do_truncation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_truncation(%struct.ubifs_info* %0, %struct.inode* %1, %struct.iattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_budget_req, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.iattr*, %struct.iattr** %7, align 8
  %21 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %27)
  store %struct.ubifs_inode* %28, %struct.ubifs_inode** %14, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dbg_gen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = call i32 @memset(%struct.ubifs_budget_req* %9, i32 0, i32 12)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %9, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %3
  %44 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %9, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @UBIFS_TRUN_NODE_SZ, align 4
  %46 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %9, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = call i32 @ubifs_budget_space(%struct.ubifs_info* %47, %struct.ubifs_budget_req* %9)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ENOSPC, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %156

61:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @truncate_setsize(%struct.inode* %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %114

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @PAGE_SHIFT, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %15, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call %struct.page* @find_lock_page(i32 %74, i32 %75)
  store %struct.page* %76, %struct.page** %16, align 8
  %77 = load %struct.page*, %struct.page** %16, align 8
  %78 = icmp ne %struct.page* %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %68
  %80 = load %struct.page*, %struct.page** %16, align 8
  %81 = call i64 @PageDirty(%struct.page* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %85 = load %struct.page*, %struct.page** %16, align 8
  %86 = call i32 @PagePrivate(%struct.page* %85)
  %87 = call i32 @ubifs_assert(%struct.ubifs_info* %84, i32 %86)
  %88 = load %struct.page*, %struct.page** %16, align 8
  %89 = call i32 @clear_page_dirty_for_io(%struct.page* %88)
  %90 = load i64, i64* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = sub nsw i32 %94, 1
  %96 = and i32 %93, %95
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %92, %83
  %98 = load %struct.page*, %struct.page** %16, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @do_writepage(%struct.page* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.page*, %struct.page** %16, align 8
  %102 = call i32 @put_page(%struct.page* %101)
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %140

106:                                              ; preds = %97
  br label %112

107:                                              ; preds = %79
  %108 = load %struct.page*, %struct.page** %16, align 8
  %109 = call i32 @unlock_page(%struct.page* %108)
  %110 = load %struct.page*, %struct.page** %16, align 8
  %111 = call i32 @put_page(%struct.page* %110)
  br label %112

112:                                              ; preds = %107, %106
  br label %113

113:                                              ; preds = %112, %68
  br label %114

114:                                              ; preds = %113, %62
  %115 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %116 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %115, i32 0, i32 1
  %117 = call i32 @mutex_lock(i32* %116)
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %122 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call i32 @current_time(%struct.inode* %123)
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 2
  store i32 %124, i32* %128, align 4
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = load %struct.iattr*, %struct.iattr** %7, align 8
  %131 = call i32 @do_attr_changes(%struct.inode* %129, %struct.iattr* %130)
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @ubifs_jnl_truncate(%struct.ubifs_info* %132, %struct.inode* %133, i32 %134, i32 %135)
  store i32 %136, i32* %8, align 4
  %137 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %138 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %137, i32 0, i32 1
  %139 = call i32 @mutex_unlock(i32* %138)
  br label %140

140:                                              ; preds = %114, %105
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %145 = call i32 @ubifs_release_budget(%struct.ubifs_info* %144, %struct.ubifs_budget_req* %9)
  br label %154

146:                                              ; preds = %140
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %148 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %151 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = call i32 (...) @smp_wmb()
  br label %154

154:                                              ; preds = %146, %143
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %59
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ubifs_budget_req*, i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i32) #1

declare dso_local %struct.page* @find_lock_page(i32, i32) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @do_writepage(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @do_attr_changes(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ubifs_jnl_truncate(%struct.ubifs_info*, %struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
