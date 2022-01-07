; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_add_new_gdb_meta_bg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_add_new_gdb_meta_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.buffer_head** }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"not enough memory for %lu groups\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i64)* @add_new_gdb_meta_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_gdb_meta_bg(%struct.super_block* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %15)
  %17 = udiv i64 %14, %16
  store i64 %17, i64* %12, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @ext4_meta_bg_first_block_no(%struct.super_block* %18, i64 %19)
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @ext4_bg_has_super(%struct.super_block* %21, i64 %22)
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call %struct.buffer_head* @ext4_sb_bread(%struct.super_block* %25, i64 %26, i32 0)
  store %struct.buffer_head* %27, %struct.buffer_head** %9, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = call i64 @IS_ERR(%struct.buffer_head* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = call i32 @PTR_ERR(%struct.buffer_head* %32)
  store i32 %33, i32* %4, align 4
  br label %97

34:                                               ; preds = %3
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, 1
  %37 = mul i64 %36, 8
  %38 = load i32, i32* @GFP_NOFS, align 4
  %39 = call %struct.buffer_head** @ext4_kvmalloc(i64 %37, i32 %38)
  store %struct.buffer_head** %39, %struct.buffer_head*** %11, align 8
  %40 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %41 = icmp ne %struct.buffer_head** %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = call i32 @brelse(%struct.buffer_head* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  %50 = call i32 @ext4_warning(%struct.super_block* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %4, align 4
  br label %97

52:                                               ; preds = %34
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %55, align 8
  store %struct.buffer_head** %56, %struct.buffer_head*** %10, align 8
  %57 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %58 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(%struct.buffer_head** %57, %struct.buffer_head** %58, i32 %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %68, i64 %69
  store %struct.buffer_head* %67, %struct.buffer_head** %70, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = call i32 @BUFFER_TRACE(%struct.buffer_head* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %75 = call i32 @ext4_journal_get_write_access(i32* %73, %struct.buffer_head* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %52
  %79 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %80 = call i32 @kvfree(%struct.buffer_head** %79)
  %81 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  br label %97

84:                                               ; preds = %52
  %85 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store %struct.buffer_head** %85, %struct.buffer_head*** %88, align 8
  %89 = load %struct.super_block*, %struct.super_block** %5, align 8
  %90 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %95 = call i32 @kvfree(%struct.buffer_head** %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %84, %78, %42, %31
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i64 @ext4_meta_bg_first_block_no(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_bg_has_super(%struct.super_block*, i64) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(%struct.super_block*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head** @ext4_kvmalloc(i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @memcpy(%struct.buffer_head**, %struct.buffer_head**, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @kvfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
