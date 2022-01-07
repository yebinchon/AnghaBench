; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_page_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_page_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.delayed_call = type { i32 }
%struct.page = type { i32 }

@ECHILD = common dso_local global i32 0, align 4
@page_put_link = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @page_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.address_space*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  %17 = load %struct.address_space*, %struct.address_space** %10, align 8
  %18 = call %struct.page* @find_get_page(%struct.address_space* %17, i32 0)
  store %struct.page* %18, %struct.page** %9, align 8
  %19 = load %struct.page*, %struct.page** %9, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ECHILD, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i8* @ERR_PTR(i32 %23)
  store i8* %24, i8** %4, align 8
  br label %66

25:                                               ; preds = %16
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = call i32 @PageUptodate(%struct.page* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = call i32 @put_page(%struct.page* %30)
  %32 = load i32, i32* @ECHILD, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i8* @ERR_PTR(i32 %33)
  store i8* %34, i8** %4, align 8
  br label %66

35:                                               ; preds = %25
  br label %46

36:                                               ; preds = %3
  %37 = load %struct.address_space*, %struct.address_space** %10, align 8
  %38 = call %struct.page* @read_mapping_page(%struct.address_space* %37, i32 0, i32* null)
  store %struct.page* %38, %struct.page** %9, align 8
  %39 = load %struct.page*, %struct.page** %9, align 8
  %40 = call i64 @IS_ERR(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.page*, %struct.page** %9, align 8
  %44 = bitcast %struct.page* %43 to i8*
  store i8* %44, i8** %4, align 8
  br label %66

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %48 = load i32, i32* @page_put_link, align 4
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i32 @set_delayed_call(%struct.delayed_call* %47, i32 %48, %struct.page* %49)
  %51 = load %struct.address_space*, %struct.address_space** %10, align 8
  %52 = call i32 @mapping_gfp_mask(%struct.address_space* %51)
  %53 = load i32, i32* @__GFP_HIGHMEM, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.page*, %struct.page** %9, align 8
  %57 = call i8* @page_address(%struct.page* %56)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = sub nsw i64 %62, 1
  %64 = call i32 @nd_terminate_link(i8* %58, i32 %61, i64 %63)
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %46, %42, %29, %21
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, %struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @nd_terminate_link(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
