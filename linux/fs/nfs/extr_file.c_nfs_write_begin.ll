; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NFS: write_begin(%pD2(%lu), %u@%lld)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @nfs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* @PAGECACHE, align 4
  %24 = load %struct.file*, %struct.file** %9, align 8
  %25 = load %struct.address_space*, %struct.address_space** %10, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 @dfprintk(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.file* %24, i32 %29, i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %75, %7
  %35 = load %struct.address_space*, %struct.address_space** %10, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %35, i32 %36, i32 %37)
  store %struct.page* %38, %struct.page** %18, align 8
  %39 = load %struct.page*, %struct.page** %18, align 8
  %40 = icmp ne %struct.page* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %80

44:                                               ; preds = %34
  %45 = load %struct.page*, %struct.page** %18, align 8
  %46 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %45, %struct.page** %46, align 8
  %47 = load %struct.file*, %struct.file** %9, align 8
  %48 = load %struct.page*, %struct.page** %18, align 8
  %49 = call i32 @nfs_flush_incompatible(%struct.file* %47, %struct.page* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.page*, %struct.page** %18, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  %55 = load %struct.page*, %struct.page** %18, align 8
  %56 = call i32 @put_page(%struct.page* %55)
  br label %78

57:                                               ; preds = %44
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %57
  %61 = load %struct.file*, %struct.file** %9, align 8
  %62 = load %struct.page*, %struct.page** %18, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @nfs_want_read_modify_write(%struct.file* %61, %struct.page* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  store i32 1, i32* %19, align 4
  %68 = load %struct.file*, %struct.file** %9, align 8
  %69 = load %struct.page*, %struct.page** %18, align 8
  %70 = call i32 @nfs_readpage(%struct.file* %68, %struct.page* %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.page*, %struct.page** %18, align 8
  %72 = call i32 @put_page(%struct.page* %71)
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  br label %34

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %60, %57
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %41
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i32, i32, i64) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @nfs_flush_incompatible(%struct.file*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @nfs_want_read_modify_write(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @nfs_readpage(%struct.file*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
