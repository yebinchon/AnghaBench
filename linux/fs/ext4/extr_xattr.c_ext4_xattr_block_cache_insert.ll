; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_cache_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb_cache = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_xattr_header = type { i32, i32 }

@EXT4_XATTR_REFCOUNT_MAX = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"already in cache\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"inserting [%x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mb_cache*, %struct.buffer_head*)* @ext4_xattr_block_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_block_cache_insert(%struct.mb_cache* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.mb_cache*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.ext4_xattr_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mb_cache* %0, %struct.mb_cache** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %10 = call %struct.ext4_xattr_header* @BHDR(%struct.buffer_head* %9)
  store %struct.ext4_xattr_header* %10, %struct.ext4_xattr_header** %5, align 8
  %11 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %5, align 8
  %12 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ext4_xattr_header*, %struct.ext4_xattr_header** %5, align 8
  %16 = getelementptr inbounds %struct.ext4_xattr_header, %struct.ext4_xattr_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le32_to_cpu(i32 %17)
  %19 = load i64, i64* @EXT4_XATTR_REFCOUNT_MAX, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mb_cache*, %struct.mb_cache** %3, align 8
  %23 = icmp ne %struct.mb_cache* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.mb_cache*, %struct.mb_cache** %3, align 8
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mb_cache_entry_create(%struct.mb_cache* %26, i32 %27, i64 %28, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %43 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  br label %50

45:                                               ; preds = %25
  %46 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (%struct.buffer_head*, i8*, ...) @ea_bdebug(%struct.buffer_head* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %24, %45, %44
  ret void
}

declare dso_local %struct.ext4_xattr_header* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mb_cache_entry_create(%struct.mb_cache*, i32, i64, i32, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
