; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_ext4_es_remove_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.c_ext4_es_remove_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"remove [%u/%u) from extent status tree of inode %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_es_remove_extent(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @trace_ext4_es_remove_extent(%struct.inode* %11, i64 %12, i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @es_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @write_lock(i32* %37)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @__es_remove_extent(%struct.inode* %39, i64 %40, i64 %41, i32* %10)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @write_unlock(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @ext4_es_print_tree(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ext4_da_release_space(%struct.inode* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %25, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @trace_ext4_es_remove_extent(%struct.inode*, i64, i64) #1

declare dso_local i32 @es_debug(i8*, i64, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @__es_remove_extent(%struct.inode*, i64, i64, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @ext4_es_print_tree(%struct.inode*) #1

declare dso_local i32 @ext4_da_release_space(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
