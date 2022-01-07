; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_check_overlapping_layers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_check_overlapping_layers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_fs = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"upperdir\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"workdir\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lowerdir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ovl_fs*)* @ovl_check_overlapping_layers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_check_overlapping_layers(%struct.super_block* %0, %struct.ovl_fs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ovl_fs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ovl_fs* %1, %struct.ovl_fs** %5, align 8
  %8 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %9 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %15 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %16 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ovl_check_layer(%struct.super_block* %13, %struct.ovl_fs* %14, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %12
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %28 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %29 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ovl_check_layer(%struct.super_block* %26, %struct.ovl_fs* %27, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %2
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %41 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %47 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %48 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ovl_check_layer(%struct.super_block* %45, %struct.ovl_fs* %46, i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %38

66:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %34, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ovl_check_layer(%struct.super_block*, %struct.ovl_fs*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
