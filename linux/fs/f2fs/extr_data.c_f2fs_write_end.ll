; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @f2fs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.page*, %struct.page** %13, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @trace_f2fs_write_end(%struct.inode* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.page*, %struct.page** %13, align 8
  %27 = call i32 @PageUptodate(%struct.page* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.page*, %struct.page** %13, align 8
  %39 = call i32 @SetPageUptodate(%struct.page* %38)
  br label %40

40:                                               ; preds = %37, %36
  br label %41

41:                                               ; preds = %40, %7
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %65

45:                                               ; preds = %41
  %46 = load %struct.page*, %struct.page** %13, align 8
  %47 = call i32 @set_page_dirty(%struct.page* %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %48, %49
  %51 = load %struct.inode*, %struct.inode** %15, align 8
  %52 = call i32 @i_size_read(%struct.inode* %51)
  %53 = icmp ugt i32 %50, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load %struct.inode*, %struct.inode** %15, align 8
  %56 = call i32 @f2fs_verity_in_progress(%struct.inode* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.inode*, %struct.inode** %15, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %60, %61
  %63 = call i32 @f2fs_i_size_write(%struct.inode* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %54, %45
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = call i32 @f2fs_put_page(%struct.page* %66, i32 1)
  %68 = load %struct.inode*, %struct.inode** %15, align 8
  %69 = call i32 @F2FS_I_SB(%struct.inode* %68)
  %70 = load i32, i32* @REQ_TIME, align 4
  %71 = call i32 @f2fs_update_time(i32 %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local i32 @trace_f2fs_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_update_time(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
