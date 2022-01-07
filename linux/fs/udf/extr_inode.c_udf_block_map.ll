; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_block_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@UDF_FLAG_VARCONV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udf_block_map(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_lb_addr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_position, align 4
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.extent_position* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @down_read(i32* %14)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @inode_bmap(%struct.inode* %16, i32 %17, %struct.extent_position* %9, %struct.kernel_lb_addr* %6, i32* %7, i32* %8)
  %19 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %20 = ashr i32 %19, 30
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @udf_get_lb_pblock(i32 %25, %struct.kernel_lb_addr* %6, i32 %26)
  store i64 %27, i64* %10, align 8
  br label %29

28:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @up_read(i32* %32)
  %34 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @brelse(i32 %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %41 = call i64 @UDF_QUERY_FLAG(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @udf_fixed_to_variable(i64 %44)
  store i64 %45, i64* %3, align 8
  br label %48

46:                                               ; preds = %29
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.TYPE_2__* @UDF_I(%struct.inode*) #2

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #2

declare dso_local i64 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @brelse(i32) #2

declare dso_local i64 @UDF_QUERY_FLAG(i32, i32) #2

declare dso_local i64 @udf_fixed_to_variable(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
