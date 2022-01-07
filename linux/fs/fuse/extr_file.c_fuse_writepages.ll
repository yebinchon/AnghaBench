; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_fill_wb_data = type { i32, i32*, %struct.TYPE_6__*, %struct.inode* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@fuse_writepages_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @fuse_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_fill_wb_data, align 8
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %12)
  store %struct.fuse_conn* %13, %struct.fuse_conn** %6, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i64 @is_bad_inode(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 3
  store %struct.inode* %21, %struct.inode** %22, align 8
  %23 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %23, align 8
  %24 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %28 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call i32 @kcalloc(i32 %29, i32 8, i32 %30)
  %32 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %69

37:                                               ; preds = %20
  %38 = load %struct.address_space*, %struct.address_space** %3, align 8
  %39 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %40 = load i32, i32* @fuse_writepages_fill, align 4
  %41 = call i32 @write_cache_pages(%struct.address_space* %38, %struct.writeback_control* %39, i32 %40, %struct.fuse_fill_wb_data* %7)
  store i32 %41, i32* %8, align 4
  %42 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = call i32 @fuse_writepages_send(%struct.fuse_fill_wb_data* %7)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %45, %37
  %58 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @fuse_file_put(i32* %63, i32 0, i32 0)
  br label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @kfree(i32 %67)
  br label %69

69:                                               ; preds = %65, %36, %19
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.fuse_fill_wb_data*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fuse_writepages_send(%struct.fuse_fill_wb_data*) #1

declare dso_local i32 @fuse_file_put(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
