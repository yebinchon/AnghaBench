; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_next_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_next_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.extent_position = type { i32, i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32 }

@EXT_NEXT_EXTENT_ALLOCDECS = common dso_local global i32 0, align 4
@UDF_MAX_INDIR_EXTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"too many indirect extents in inode %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"reading block %u failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_next_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %70, %5
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %18 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @udf_current_aext(%struct.inode* %16, %struct.extent_position* %17, %struct.kernel_lb_addr* %18, i32* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %23 = ashr i32 %22, 30
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %15
  %26 = load i32, i32* %13, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @UDF_MAX_INDIR_EXTS, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @udf_err(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %6, align 4
  br label %73

38:                                               ; preds = %25
  %39 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %40 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %39, i32 0, i32 2
  %41 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %42 = bitcast %struct.kernel_lb_addr* %40 to i8*
  %43 = bitcast %struct.kernel_lb_addr* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %45 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %44, i32 0, i32 0
  store i32 4, i32* %45, align 4
  %46 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %47 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @brelse(i32 %48)
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %54 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %53, i32 0, i32 2
  %55 = call i32 @udf_get_lb_pblock(i32 %52, %struct.kernel_lb_addr* %54, i32 0)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @udf_tread(i32 %58, i32 %59)
  %61 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %62 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %64 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %38
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @udf_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 -1, i32* %6, align 4
  br label %73

70:                                               ; preds = %38
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %67, %30
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @udf_current_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_err(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @udf_tread(i32, i32) #1

declare dso_local i32 @udf_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
