; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_put_gap_in_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_put_gap_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_status = type { i64, i64 }

@ext4_es_is_delayed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c" -> %u:%u\0A\00", align 1
@EXTENT_STATUS_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i64)* @ext4_ext_put_gap_in_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_put_gap_in_cache(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.extent_status, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add nsw i64 %10, %11
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @ext4_es_find_extent_range(%struct.inode* %8, i32* @ext4_es_is_delayed, i64 %9, i64 %13, %struct.extent_status* %7)
  %15 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %7, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %40

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @min(i64 %28, i64 %29)
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ext_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @EXTENT_STATUS_HOLE, align 4
  %39 = call i32 @ext4_es_insert_extent(%struct.inode* %35, i64 %36, i64 %37, i32 -1, i32 %38)
  br label %40

40:                                               ; preds = %31, %23
  ret void
}

declare dso_local i32 @ext4_es_find_extent_range(%struct.inode*, i32*, i64, i64, %struct.extent_status*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ext_debug(i8*, i64, i64) #1

declare dso_local i32 @ext4_es_insert_extent(%struct.inode*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
