; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_read_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_cache.c_squashfs_read_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.squashfs_page_actor = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SQUASHFS_COMPRESSED_BIT_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @squashfs_read_table(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.squashfs_page_actor*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = add nsw i32 %15, %16
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %12, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i8* @ERR_PTR(i32 %28)
  store i8* %29, i8** %4, align 8
  br label %97

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8** @kcalloc(i32 %31, i32 8, i32 %32)
  store i8** %33, i8*** %13, align 8
  %34 = load i8**, i8*** %13, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %92

39:                                               ; preds = %30
  %40 = load i8**, i8*** %13, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @squashfs_page_actor_init(i8** %40, i32 %41, i32 %42)
  %44 = bitcast i8* %43 to %struct.squashfs_page_actor*
  store %struct.squashfs_page_actor* %44, %struct.squashfs_page_actor** %14, align 8
  %45 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %14, align 8
  %46 = icmp eq %struct.squashfs_page_actor* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %88

50:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %61, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i8*, i8** %12, align 8
  %57 = load i8**, i8*** %13, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %56, i8** %60, align 8
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  store i8* %67, i8** %12, align 8
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.super_block*, %struct.super_block** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SQUASHFS_COMPRESSED_BIT_BLOCK, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %14, align 8
  %75 = bitcast %struct.squashfs_page_actor* %74 to i8*
  %76 = call i32 @squashfs_read_data(%struct.super_block* %69, i32 %70, i32 %73, i32* null, i8* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i8**, i8*** %13, align 8
  %78 = bitcast i8** %77 to i8*
  %79 = call i32 @kfree(i8* %78)
  %80 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %14, align 8
  %81 = bitcast %struct.squashfs_page_actor* %80 to i8*
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %92

86:                                               ; preds = %68
  %87 = load i8*, i8** %11, align 8
  store i8* %87, i8** %4, align 8
  br label %97

88:                                               ; preds = %47
  %89 = load i8**, i8*** %13, align 8
  %90 = bitcast i8** %89 to i8*
  %91 = call i32 @kfree(i8* %90)
  br label %92

92:                                               ; preds = %88, %85, %36
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @kfree(i8* %93)
  %95 = load i32, i32* %10, align 4
  %96 = call i8* @ERR_PTR(i32 %95)
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %92, %86, %26
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i8* @squashfs_page_actor_init(i8**, i32, i32) #1

declare dso_local i32 @squashfs_read_data(%struct.super_block*, i32, i32, i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
