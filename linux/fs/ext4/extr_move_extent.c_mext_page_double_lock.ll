; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_mext_page_double_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_mext_page_double_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.page*, %struct.page*, %struct.page**)* @mext_page_double_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_page_double_lock(%struct.inode* %0, %struct.inode* %1, %struct.page* %2, %struct.page* %3, %struct.page** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page**, align 8
  %12 = alloca [2 x %struct.address_space*], align 16
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store %struct.page* %3, %struct.page** %10, align 8
  store %struct.page** %4, %struct.page*** %11, align 8
  %14 = load i32, i32* @AOP_FLAG_NOFS, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = icmp ne %struct.inode* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ true, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = icmp ult %struct.inode* %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.address_space*, %struct.address_space** %30, align 8
  %32 = getelementptr inbounds [2 x %struct.address_space*], [2 x %struct.address_space*]* %12, i64 0, i64 0
  store %struct.address_space* %31, %struct.address_space** %32, align 16
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.address_space*, %struct.address_space** %34, align 8
  %36 = getelementptr inbounds [2 x %struct.address_space*], [2 x %struct.address_space*]* %12, i64 0, i64 1
  store %struct.address_space* %35, %struct.address_space** %36, align 8
  br label %49

37:                                               ; preds = %21
  %38 = load %struct.page*, %struct.page** %9, align 8
  %39 = load %struct.page*, %struct.page** %10, align 8
  %40 = call i32 @swap(%struct.page* %38, %struct.page* %39)
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load %struct.address_space*, %struct.address_space** %42, align 8
  %44 = getelementptr inbounds [2 x %struct.address_space*], [2 x %struct.address_space*]* %12, i64 0, i64 0
  store %struct.address_space* %43, %struct.address_space** %44, align 16
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load %struct.address_space*, %struct.address_space** %46, align 8
  %48 = getelementptr inbounds [2 x %struct.address_space*], [2 x %struct.address_space*]* %12, i64 0, i64 1
  store %struct.address_space* %47, %struct.address_space** %48, align 8
  br label %49

49:                                               ; preds = %37, %28
  %50 = getelementptr inbounds [2 x %struct.address_space*], [2 x %struct.address_space*]* %12, i64 0, i64 0
  %51 = load %struct.address_space*, %struct.address_space** %50, align 16
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %51, %struct.page* %52, i32 %53)
  %55 = load %struct.page**, %struct.page*** %11, align 8
  %56 = getelementptr inbounds %struct.page*, %struct.page** %55, i64 0
  store %struct.page* %54, %struct.page** %56, align 8
  %57 = load %struct.page**, %struct.page*** %11, align 8
  %58 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 0
  %59 = load %struct.page*, %struct.page** %58, align 8
  %60 = icmp ne %struct.page* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %108

64:                                               ; preds = %49
  %65 = getelementptr inbounds [2 x %struct.address_space*], [2 x %struct.address_space*]* %12, i64 0, i64 1
  %66 = load %struct.address_space*, %struct.address_space** %65, align 8
  %67 = load %struct.page*, %struct.page** %10, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %66, %struct.page* %67, i32 %68)
  %70 = load %struct.page**, %struct.page*** %11, align 8
  %71 = getelementptr inbounds %struct.page*, %struct.page** %70, i64 1
  store %struct.page* %69, %struct.page** %71, align 8
  %72 = load %struct.page**, %struct.page*** %11, align 8
  %73 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 1
  %74 = load %struct.page*, %struct.page** %73, align 8
  %75 = icmp ne %struct.page* %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %64
  %77 = load %struct.page**, %struct.page*** %11, align 8
  %78 = getelementptr inbounds %struct.page*, %struct.page** %77, i64 0
  %79 = load %struct.page*, %struct.page** %78, align 8
  %80 = call i32 @unlock_page(%struct.page* %79)
  %81 = load %struct.page**, %struct.page*** %11, align 8
  %82 = getelementptr inbounds %struct.page*, %struct.page** %81, i64 0
  %83 = load %struct.page*, %struct.page** %82, align 8
  %84 = call i32 @put_page(%struct.page* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %108

87:                                               ; preds = %64
  %88 = load %struct.page**, %struct.page*** %11, align 8
  %89 = getelementptr inbounds %struct.page*, %struct.page** %88, i64 0
  %90 = load %struct.page*, %struct.page** %89, align 8
  %91 = call i32 @wait_on_page_writeback(%struct.page* %90)
  %92 = load %struct.page**, %struct.page*** %11, align 8
  %93 = getelementptr inbounds %struct.page*, %struct.page** %92, i64 1
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = call i32 @wait_on_page_writeback(%struct.page* %94)
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = icmp ugt %struct.inode* %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %87
  %100 = load %struct.page**, %struct.page*** %11, align 8
  %101 = getelementptr inbounds %struct.page*, %struct.page** %100, i64 0
  %102 = load %struct.page*, %struct.page** %101, align 8
  %103 = load %struct.page**, %struct.page*** %11, align 8
  %104 = getelementptr inbounds %struct.page*, %struct.page** %103, i64 1
  %105 = load %struct.page*, %struct.page** %104, align 8
  %106 = call i32 @swap(%struct.page* %102, %struct.page* %105)
  br label %107

107:                                              ; preds = %99, %87
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %76, %61
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @swap(%struct.page*, %struct.page*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
