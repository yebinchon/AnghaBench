; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_read_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_read_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.gfs2_sb = type { i32 }
%struct.page = type { i32 }
%struct.bio = type { %struct.page*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@end_bio_io_page = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, i32)* @gfs2_read_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_read_super(%struct.gfs2_sbd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.gfs2_sb*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.bio*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.page* @alloc_page(i32 %15)
  store %struct.page* %16, %struct.page** %10, align 8
  %17 = load %struct.page*, %struct.page** %10, align 8
  %18 = icmp ne %struct.page* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %3
  %27 = load %struct.page*, %struct.page** %10, align 8
  %28 = call i32 @ClearPageUptodate(%struct.page* %27)
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = call i32 @ClearPageDirty(%struct.page* %29)
  %31 = load %struct.page*, %struct.page** %10, align 8
  %32 = call i32 @lock_page(%struct.page* %31)
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call %struct.bio* @bio_alloc(i32 %33, i32 1)
  store %struct.bio* %34, %struct.bio** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.super_block*, %struct.super_block** %8, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 9
  %40 = mul nsw i32 %35, %39
  %41 = load %struct.bio*, %struct.bio** %11, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.bio*, %struct.bio** %11, align 8
  %45 = load %struct.super_block*, %struct.super_block** %8, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bio_set_dev(%struct.bio* %44, i32 %47)
  %49 = load %struct.bio*, %struct.bio** %11, align 8
  %50 = load %struct.page*, %struct.page** %10, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @bio_add_page(%struct.bio* %49, %struct.page* %50, i32 %51, i32 0)
  %53 = load i32, i32* @end_bio_io_page, align 4
  %54 = load %struct.bio*, %struct.bio** %11, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = load %struct.bio*, %struct.bio** %11, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  store %struct.page* %56, %struct.page** %58, align 8
  %59 = load %struct.bio*, %struct.bio** %11, align 8
  %60 = load i32, i32* @REQ_OP_READ, align 4
  %61 = load i32, i32* @REQ_META, align 4
  %62 = call i32 @bio_set_op_attrs(%struct.bio* %59, i32 %60, i32 %61)
  %63 = load %struct.bio*, %struct.bio** %11, align 8
  %64 = call i32 @submit_bio(%struct.bio* %63)
  %65 = load %struct.page*, %struct.page** %10, align 8
  %66 = call i32 @wait_on_page_locked(%struct.page* %65)
  %67 = load %struct.bio*, %struct.bio** %11, align 8
  %68 = call i32 @bio_put(%struct.bio* %67)
  %69 = load %struct.page*, %struct.page** %10, align 8
  %70 = call i32 @PageUptodate(%struct.page* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %26
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = call i32 @__free_page(%struct.page* %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %90

77:                                               ; preds = %26
  %78 = load %struct.page*, %struct.page** %10, align 8
  %79 = call %struct.gfs2_sb* @kmap(%struct.page* %78)
  store %struct.gfs2_sb* %79, %struct.gfs2_sb** %9, align 8
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %81 = load %struct.gfs2_sb*, %struct.gfs2_sb** %9, align 8
  %82 = call i32 @gfs2_sb_in(%struct.gfs2_sbd* %80, %struct.gfs2_sb* %81)
  %83 = load %struct.page*, %struct.page** %10, align 8
  %84 = call i32 @kunmap(%struct.page* %83)
  %85 = load %struct.page*, %struct.page** %10, align 8
  %86 = call i32 @__free_page(%struct.page* %85)
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @gfs2_check_sb(%struct.gfs2_sbd* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %77, %72, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local %struct.gfs2_sb* @kmap(%struct.page*) #1

declare dso_local i32 @gfs2_sb_in(%struct.gfs2_sbd*, %struct.gfs2_sb*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @gfs2_check_sb(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
