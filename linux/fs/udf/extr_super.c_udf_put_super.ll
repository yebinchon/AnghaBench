; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.udf_sb_info = type { i32, i32, i32, i32 }

@UDF_FLAG_NLS_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @udf_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.udf_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %4)
  store %struct.udf_sb_info* %5, %struct.udf_sb_info** %3, align 8
  %6 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @iput(i32 %8)
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = load i32, i32* @UDF_FLAG_NLS_MAP, align 4
  %12 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @unload_nls(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.super_block*, %struct.super_block** %2, align 8
  %21 = call i32 @sb_rdonly(%struct.super_block* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = call i32 @udf_close_lvid(%struct.super_block* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %28 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @brelse(i32 %29)
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call i32 @udf_sb_free_partitions(%struct.super_block* %31)
  %33 = load %struct.udf_sb_info*, %struct.udf_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %33, i32 0, i32 0
  %35 = call i32 @mutex_destroy(i32* %34)
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @unload_nls(i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @udf_close_lvid(%struct.super_block*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @udf_sb_free_partitions(%struct.super_block*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
