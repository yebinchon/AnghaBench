; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c___isofs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c___isofs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.isofs_iget5_callback_data = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@isofs_iget5_test = common dso_local global i32 0, align 4
@isofs_iget5_set = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @__isofs_iget(%struct.super_block* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.isofs_iget5_callback_data, align 8
  %13 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  %20 = icmp uge i64 %14, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  %24 = call %struct.inode* @ERR_PTR(i64 %23)
  store %struct.inode* %24, %struct.inode** %5, align 8
  br label %71

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.isofs_iget5_callback_data, %struct.isofs_iget5_callback_data* %12, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.isofs_iget5_callback_data, %struct.isofs_iget5_callback_data* %12, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 %30, %34
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %35, %36
  store i64 %37, i64* %10, align 8
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call %struct.inode* @iget5_locked(%struct.super_block* %38, i64 %39, i32* @isofs_iget5_test, i32* @isofs_iget5_set, %struct.isofs_iget5_callback_data* %12)
  store %struct.inode* %40, %struct.inode** %11, align 8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = icmp ne %struct.inode* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %25
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = sub nsw i64 0, %44
  %46 = call %struct.inode* @ERR_PTR(i64 %45)
  store %struct.inode* %46, %struct.inode** %5, align 8
  br label %71

47:                                               ; preds = %25
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I_NEW, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @isofs_read_inode(%struct.inode* %55, i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = call i32 @iget_failed(%struct.inode* %61)
  %63 = load i64, i64* %13, align 8
  %64 = call %struct.inode* @ERR_PTR(i64 %63)
  store %struct.inode* %64, %struct.inode** %11, align 8
  br label %68

65:                                               ; preds = %54
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = call i32 @unlock_new_inode(%struct.inode* %66)
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %70, %struct.inode** %5, align 8
  br label %71

71:                                               ; preds = %69, %43, %21
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %72
}

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32*, i32*, %struct.isofs_iget5_callback_data*) #1

declare dso_local i64 @isofs_read_inode(%struct.inode*, i32) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
