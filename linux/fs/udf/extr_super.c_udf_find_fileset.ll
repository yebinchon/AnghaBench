; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_fileset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_fileset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.fileSetDesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TAG_IDENT_FSD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Fileset at block=%u, partition=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.kernel_lb_addr*, %struct.kernel_lb_addr*)* @udf_find_fileset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_find_fileset(%struct.super_block* %0, %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.kernel_lb_addr*, align 8
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %6, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %11 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %12 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %17 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %15, %3
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %26 = call %struct.buffer_head* @udf_read_ptagged(%struct.super_block* %24, %struct.kernel_lb_addr* %25, i32 0, i64* %9)
  store %struct.buffer_head* %26, %struct.buffer_head** %8, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %65

32:                                               ; preds = %23
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @TAG_IDENT_FSD, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %38 = call i32 @brelse(%struct.buffer_head* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %32
  %42 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %43 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %46 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %50 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.fileSetDesc*
  %60 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %61 = call i32 @udf_load_fileset(%struct.super_block* %55, %struct.fileSetDesc* %59, %struct.kernel_lb_addr* %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call i32 @brelse(%struct.buffer_head* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %41, %36, %29, %20
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.buffer_head* @udf_read_ptagged(%struct.super_block*, %struct.kernel_lb_addr*, i32, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @udf_debug(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_load_fileset(%struct.super_block*, %struct.fileSetDesc*, %struct.kernel_lb_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
