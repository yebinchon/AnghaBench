; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.anchorVolDescPtr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, %struct.kernel_lb_addr*)* @udf_load_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_sequence(%struct.super_block* %0, %struct.buffer_head* %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca %struct.anchorVolDescPtr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.anchorVolDescPtr*
  store %struct.anchorVolDescPtr* %17, %struct.anchorVolDescPtr** %8, align 8
  %18 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %19 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %24 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %38 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.anchorVolDescPtr*, %struct.anchorVolDescPtr** %8, align 8
  %43 = getelementptr inbounds %struct.anchorVolDescPtr, %struct.anchorVolDescPtr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %47, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %60 = call i32 @udf_process_sequence(%struct.super_block* %56, i32 %57, i32 %58, %struct.kernel_lb_addr* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %3
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %4, align 4
  br label %90

67:                                               ; preds = %3
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = call i32 @udf_sb_free_partitions(%struct.super_block* %68)
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %74 = call i32 @udf_process_sequence(%struct.super_block* %70, i32 %71, i32 %72, %struct.kernel_lb_addr* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %67
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = call i32 @udf_sb_free_partitions(%struct.super_block* %78)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %65
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udf_process_sequence(%struct.super_block*, i32, i32, %struct.kernel_lb_addr*) #1

declare dso_local i32 @udf_sb_free_partitions(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
