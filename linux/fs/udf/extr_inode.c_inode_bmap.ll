; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_inode_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_inode_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }
%struct.extent_position = type { i32*, i32, i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i8, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inode_bmap(%struct.inode* %0, i8 zeroext %1, %struct.extent_position* %2, %struct.kernel_lb_addr* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.extent_position*, align 8
  %11 = alloca %struct.kernel_lb_addr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8 %1, i8* %9, align 1
  store %struct.extent_position* %2, %struct.extent_position** %10, align 8
  store %struct.kernel_lb_addr* %3, %struct.kernel_lb_addr** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %14, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %25, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %16, align 1
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %30)
  store %struct.udf_inode_info* %31, %struct.udf_inode_info** %18, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = load i8, i8* %16, align 1
  %34 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %35 = call i32 @udf_read_extent_cache(%struct.inode* %32, i8 zeroext %33, i8* %15, %struct.extent_position* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %6
  %38 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %39 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %41 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %44 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %46 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %37, %6
  %48 = load i8*, i8** %12, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %79, %47
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %52 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @udf_next_aext(%struct.inode* %50, %struct.extent_position* %51, %struct.kernel_lb_addr* %52, i8* %53, i32 1)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = load i8, i8* %16, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %15, align 1
  %61 = zext i8 %60 to i32
  %62 = sub nsw i32 %59, %61
  %63 = load i8, i8* %14, align 1
  %64 = zext i8 %63 to i32
  %65 = ashr i32 %62, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %13, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i8, i8* %15, align 1
  %69 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %70 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %69, i32 0, i32 0
  store i8 %68, i8* %70, align 4
  store i32 -1, i32* %7, align 4
  br label %111

71:                                               ; preds = %49
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %15, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %15, align 1
  br label %79

79:                                               ; preds = %71
  %80 = load i8, i8* %15, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %16, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sle i32 %81, %83
  br i1 %84, label %49, label %85

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = load i8, i8* %15, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %12, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = sub nsw i32 %88, %91
  %93 = trunc i32 %92 to i8
  %94 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %95 = call i32 @udf_update_extent_cache(%struct.inode* %86, i8 zeroext %93, %struct.extent_position* %94)
  %96 = load i8, i8* %16, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8*, i8** %12, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %97, %100
  %102 = load i8, i8* %15, align 1
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %101, %103
  %105 = load i8, i8* %14, align 1
  %106 = zext i8 %105 to i32
  %107 = ashr i32 %104, %106
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %13, align 8
  store i8 %108, i8* %109, align 1
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %85, %57
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_read_extent_cache(%struct.inode*, i8 zeroext, i8*, %struct.extent_position*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i8*, i32) #1

declare dso_local i32 @udf_update_extent_cache(%struct.inode*, i8 zeroext, %struct.extent_position*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
