; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_set_bit_in_list_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_set_bit_in_list_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_list_bitmap = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.reiserfs_list_bitmap*)* @set_bit_in_list_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bit_in_list_bitmap(%struct.super_block* %0, i32 %1, %struct.reiserfs_list_bitmap* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_list_bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.reiserfs_list_bitmap* %2, %struct.reiserfs_list_bitmap** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 3
  %14 = sdiv i32 %9, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 3
  %20 = srem i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %22 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %3
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = call %struct.TYPE_2__* @get_bitmap_node(%struct.super_block* %30)
  %32 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %33 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %37, align 8
  br label %38

38:                                               ; preds = %29, %3
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.reiserfs_list_bitmap*, %struct.reiserfs_list_bitmap** %6, align 8
  %41 = getelementptr inbounds %struct.reiserfs_list_bitmap, %struct.reiserfs_list_bitmap* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i64*
  %50 = call i32 @set_bit(i32 %39, i64* %49)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @get_bitmap_node(%struct.super_block*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
