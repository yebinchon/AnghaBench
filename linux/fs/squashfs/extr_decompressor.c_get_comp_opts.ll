; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor.c_get_comp_opts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_decompressor.c_get_comp_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i32 }
%struct.squashfs_page_actor = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, i16)* @get_comp_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_comp_opts(%struct.super_block* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.squashfs_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.squashfs_page_actor*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i16 %1, i16* %4, align 2
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %11, align 8
  store %struct.squashfs_sb_info* %12, %struct.squashfs_sb_info** %5, align 8
  store i8* null, i8** %6, align 8
  store %struct.squashfs_page_actor* null, %struct.squashfs_page_actor** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i16, i16* %4, align 2
  %14 = call i64 @SQUASHFS_COMP_OPTS(i16 zeroext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i8* @ERR_PTR(i32 %24)
  store i8* %25, i8** %7, align 8
  br label %51

26:                                               ; preds = %16
  %27 = call i8* @squashfs_page_actor_init(i8** %6, i32 1, i32 0)
  %28 = bitcast i8* %27 to %struct.squashfs_page_actor*
  store %struct.squashfs_page_actor* %28, %struct.squashfs_page_actor** %8, align 8
  %29 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %30 = icmp eq %struct.squashfs_page_actor* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i8* @ERR_PTR(i32 %33)
  store i8* %34, i8** %7, align 8
  br label %51

35:                                               ; preds = %26
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %38 = bitcast %struct.squashfs_page_actor* %37 to i8*
  %39 = call i32 @squashfs_read_data(%struct.super_block* %36, i32 4, i32 0, i32* null, i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @ERR_PTR(i32 %43)
  store i8* %44, i8** %7, align 8
  br label %51

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @squashfs_comp_opts(%struct.squashfs_sb_info* %47, i8* %48, i32 %49)
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %46, %42, %31, %22
  %52 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %8, align 8
  %53 = bitcast %struct.squashfs_page_actor* %52 to i8*
  %54 = call i32 @kfree(i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i8*, i8** %7, align 8
  ret i8* %57
}

declare dso_local i64 @SQUASHFS_COMP_OPTS(i16 zeroext) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @squashfs_page_actor_init(i8**, i32, i32) #1

declare dso_local i32 @squashfs_read_data(%struct.super_block*, i32, i32, i32*, i8*) #1

declare dso_local i8* @squashfs_comp_opts(%struct.squashfs_sb_info*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
