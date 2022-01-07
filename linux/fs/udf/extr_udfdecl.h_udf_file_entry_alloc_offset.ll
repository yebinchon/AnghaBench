; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_udfdecl.h_udf_file_entry_alloc_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_udfdecl.h_udf_file_entry_alloc_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.udf_inode_info = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*)* @udf_file_entry_alloc_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @udf_file_entry_alloc_offset(%struct.inode* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %5)
  store %struct.udf_inode_info* %6, %struct.udf_inode_info** %4, align 8
  %7 = load %struct.udf_inode_info*, %struct.udf_inode_info** %4, align 8
  %8 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 4, i64* %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.udf_inode_info*, %struct.udf_inode_info** %4, align 8
  %14 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.udf_inode_info*, %struct.udf_inode_info** %4, align 8
  %19 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 4, %20
  store i64 %21, i64* %2, align 8
  br label %27

22:                                               ; preds = %12
  %23 = load %struct.udf_inode_info*, %struct.udf_inode_info** %4, align 8
  %24 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 4, %25
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %22, %17, %11
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
