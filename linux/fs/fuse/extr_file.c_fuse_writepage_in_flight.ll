; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepage_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepage_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_writepage_args = type { i64, %struct.fuse_writepage_args*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.fuse_args_pages, %struct.TYPE_5__ }
%struct.fuse_args_pages = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.fuse_inode = type { i32, i32 }
%struct.backing_dev_info = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@WB_WRITEBACK = common dso_local global i32 0, align 4
@NR_WRITEBACK_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_writepage_args*, %struct.page*)* @fuse_writepage_in_flight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_writepage_in_flight(%struct.fuse_writepage_args* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_writepage_args*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.fuse_inode*, align 8
  %7 = alloca %struct.fuse_writepage_args*, align 8
  %8 = alloca %struct.fuse_writepage_args*, align 8
  %9 = alloca %struct.fuse_args_pages*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.backing_dev_info*, align 8
  store %struct.fuse_writepage_args* %0, %struct.fuse_writepage_args** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %12 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.fuse_inode* @get_fuse_inode(i64 %14)
  store %struct.fuse_inode* %15, %struct.fuse_inode** %6, align 8
  %16 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %17 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.fuse_args_pages* %18, %struct.fuse_args_pages** %9, align 8
  %19 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %20 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.fuse_inode*, %struct.fuse_inode** %6, align 8
  %26 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %29 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %28, i32 0, i32 3
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.fuse_inode*, %struct.fuse_inode** %6, align 8
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.fuse_writepage_args* @fuse_find_writeback(%struct.fuse_inode* %31, i32 %34, i32 %37)
  store %struct.fuse_writepage_args* %38, %struct.fuse_writepage_args** %8, align 8
  %39 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %40 = icmp ne %struct.fuse_writepage_args* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %2
  %42 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %43 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %42, i32 0, i32 3
  %44 = load %struct.fuse_inode*, %struct.fuse_inode** %6, align 8
  %45 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %44, i32 0, i32 1
  %46 = call i32 @list_add(i32* %43, i32* %45)
  %47 = load %struct.fuse_inode*, %struct.fuse_inode** %6, align 8
  %48 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %149

50:                                               ; preds = %2
  %51 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %52 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %54 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %53, i32 0, i32 1
  %55 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %54, align 8
  store %struct.fuse_writepage_args* %55, %struct.fuse_writepage_args** %7, align 8
  br label %56

56:                                               ; preds = %105, %50
  %57 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %58 = icmp ne %struct.fuse_writepage_args* %57, null
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  %60 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %61 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %64 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %70 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PAGE_SHIFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.page*, %struct.page** %5, align 8
  %79 = getelementptr inbounds %struct.page, %struct.page* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %59
  %83 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %84 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %92 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %99 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @swap(i32 %97, i32 %102)
  br label %109

104:                                              ; preds = %59
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %107 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %106, i32 0, i32 1
  %108 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %107, align 8
  store %struct.fuse_writepage_args* %108, %struct.fuse_writepage_args** %7, align 8
  br label %56

109:                                              ; preds = %82, %56
  %110 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %111 = icmp ne %struct.fuse_writepage_args* %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %114 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %113, i32 0, i32 1
  %115 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %114, align 8
  %116 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %117 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %116, i32 0, i32 1
  store %struct.fuse_writepage_args* %115, %struct.fuse_writepage_args** %117, align 8
  %118 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %119 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %120 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %119, i32 0, i32 1
  store %struct.fuse_writepage_args* %118, %struct.fuse_writepage_args** %120, align 8
  br label %121

121:                                              ; preds = %112, %109
  %122 = load %struct.fuse_inode*, %struct.fuse_inode** %6, align 8
  %123 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %7, align 8
  %126 = icmp ne %struct.fuse_writepage_args* %125, null
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %129 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call %struct.backing_dev_info* @inode_to_bdi(i64 %130)
  store %struct.backing_dev_info* %131, %struct.backing_dev_info** %11, align 8
  %132 = load %struct.backing_dev_info*, %struct.backing_dev_info** %11, align 8
  %133 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %132, i32 0, i32 0
  %134 = load i32, i32* @WB_WRITEBACK, align 4
  %135 = call i32 @dec_wb_stat(i32* %133, i32 %134)
  %136 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %137 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @NR_WRITEBACK_TEMP, align 4
  %142 = call i32 @dec_node_page_state(i32 %140, i32 %141)
  %143 = load %struct.backing_dev_info*, %struct.backing_dev_info** %11, align 8
  %144 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %143, i32 0, i32 0
  %145 = call i32 @wb_writeout_inc(i32* %144)
  %146 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %147 = call i32 @fuse_writepage_free(%struct.fuse_writepage_args* %146)
  br label %148

148:                                              ; preds = %127, %121
  store i32 1, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %41
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.fuse_writepage_args* @fuse_find_writeback(%struct.fuse_inode*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local %struct.backing_dev_info* @inode_to_bdi(i64) #1

declare dso_local i32 @dec_wb_stat(i32*, i32) #1

declare dso_local i32 @dec_node_page_state(i32, i32) #1

declare dso_local i32 @wb_writeout_inc(i32*) #1

declare dso_local i32 @fuse_writepage_free(%struct.fuse_writepage_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
