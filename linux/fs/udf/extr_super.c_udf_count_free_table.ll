; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_count_free_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_count_free_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @udf_count_free_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_count_free_table(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernel_lb_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_position, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.TYPE_5__* @UDF_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.TYPE_6__* @UDF_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %25, %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @udf_next_aext(%struct.inode* %22, %struct.extent_position* %9, %struct.kernel_lb_addr* %7, i32* %6, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = lshr i32 %26, %31
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %21

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @brelse(i32* %37)
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = call %struct.TYPE_5__* @UDF_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_6__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
