; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_cache_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mb_cache = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"already in cache (%d cache entries)\00", align 1
@ext2_xattr_cache = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"inserting [%x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb_cache*, %struct.buffer_head*)* @ext2_xattr_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_cache_insert(%struct.mb_cache* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.mb_cache*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mb_cache* %0, %struct.mb_cache** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = call %struct.TYPE_4__* @HDR(%struct.buffer_head* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @le32_to_cpu(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.mb_cache*, %struct.mb_cache** %3, align 8
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mb_cache_entry_create(%struct.mb_cache* %12, i32 %13, i64 %14, i32 %17, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ext2_xattr_cache, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @atomic_read(i32* %29)
  %31 = call i32 @ea_bdebug(%struct.buffer_head* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %21
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ea_bdebug(%struct.buffer_head* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @mb_cache_entry_create(%struct.mb_cache*, i32, i64, i32, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
