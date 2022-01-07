; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_internal_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_internal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@__gfs2_readpage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_internal_read(%struct.gfs2_inode* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i8*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %77, %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sub i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub i32 %41, %42
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.address_space*, %struct.address_space** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* @__gfs2_readpage, align 4
  %48 = call %struct.page* @read_cache_page(%struct.address_space* %45, i64 %46, i32 %47, i32* null)
  store %struct.page* %48, %struct.page** %15, align 8
  %49 = load %struct.page*, %struct.page** %15, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.page*, %struct.page** %15, align 8
  %54 = call i32 @PTR_ERR(%struct.page* %53)
  store i32 %54, i32* %5, align 4
  br label %87

55:                                               ; preds = %44
  %56 = load %struct.page*, %struct.page** %15, align 8
  %57 = call i8* @kmap_atomic(%struct.page* %56)
  store i8* %57, i8** %16, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @memcpy(i8* %61, i8* %65, i32 %66)
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @kunmap_atomic(i8* %68)
  %70 = load %struct.page*, %struct.page** %15, align 8
  %71 = call i32 @put_page(%struct.page* %70)
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %31, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %52
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.page* @read_cache_page(%struct.address_space*, i64, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
