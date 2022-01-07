; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_add_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_add_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.extent_position = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_add_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 4, i32* %12, align 4
  br label %38

26:                                               ; preds = %5
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 4, i32* %12, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %83

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %40 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load %struct.super_block*, %struct.super_block** %13, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %38
  %51 = load %struct.super_block*, %struct.super_block** %13, align 8
  %52 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %53 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %57 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @udf_new_block(%struct.super_block* %51, i32* null, i32 %55, i32 %59, i32* %14)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %83

66:                                               ; preds = %50
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %70 = call i32 @udf_setup_indirect_aext(%struct.inode* %67, i32 %68, %struct.extent_position* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %6, align 4
  br label %83

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %38
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %79 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @__udf_add_aext(%struct.inode* %77, %struct.extent_position* %78, %struct.kernel_lb_addr* %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %76, %73, %63, %34
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_4__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_new_block(%struct.super_block*, i32*, i32, i32, i32*) #1

declare dso_local i32 @udf_setup_indirect_aext(%struct.inode*, i32, %struct.extent_position*) #1

declare dso_local i32 @__udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
