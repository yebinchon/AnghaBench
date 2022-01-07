; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c___udf_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c___udf_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @__udf_iget(%struct.super_block* %0, %struct.kernel_lb_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.kernel_lb_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %13 = call i64 @udf_get_lb_pblock(%struct.super_block* %11, %struct.kernel_lb_addr* %12, i32 0)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.inode* @iget_locked(%struct.super_block* %14, i64 %15)
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  store %struct.inode* %22, %struct.inode** %4, align 8
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I_NEW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %31, %struct.inode** %4, align 8
  br label %52

32:                                               ; preds = %23
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.kernel_lb_addr* %36, i32 4)
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @udf_read_inode(%struct.inode* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call i32 @iget_failed(%struct.inode* %44)
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.inode* @ERR_PTR(i32 %46)
  store %struct.inode* %47, %struct.inode** %4, align 8
  br label %52

48:                                               ; preds = %32
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = call i32 @unlock_new_inode(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %51, %struct.inode** %4, align 8
  br label %52

52:                                               ; preds = %48, %43, %30, %19
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %53
}

declare dso_local i64 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.kernel_lb_addr*, i32) #1

declare dso_local %struct.TYPE_2__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_read_inode(%struct.inode*, i32) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
