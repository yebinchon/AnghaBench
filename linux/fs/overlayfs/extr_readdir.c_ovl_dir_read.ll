; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.ovl_readdir_data = type { i32, i64, i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.file = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.ovl_readdir_data*)* @ovl_dir_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_dir_read(%struct.path* %0, %struct.ovl_readdir_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.ovl_readdir_data*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.ovl_readdir_data* %1, %struct.ovl_readdir_data** %5, align 8
  %8 = load %struct.path*, %struct.path** %4, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = load i32, i32* @O_DIRECTORY, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.file* @ovl_path_open(%struct.path* %8, i32 %11)
  store %struct.file* %12, %struct.file** %6, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call i64 @IS_ERR(%struct.file* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.file* %17)
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %21 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %23 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %49, %19
  %26 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %27 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %29 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %32 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %31, i32 0, i32 3
  %33 = call i32 @iterate_dir(%struct.file* %30, %struct.TYPE_2__* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %38 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %46 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %25, label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %56 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %61 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.path*, %struct.path** %4, align 8
  %66 = getelementptr inbounds %struct.path, %struct.path* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %5, align 8
  %69 = call i32 @ovl_check_whiteouts(i32 %67, %struct.ovl_readdir_data* %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %64, %59, %54, %51
  %71 = load %struct.file*, %struct.file** %6, align 8
  %72 = call i32 @fput(%struct.file* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.file* @ovl_path_open(%struct.path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @iterate_dir(%struct.file*, %struct.TYPE_2__*) #1

declare dso_local i32 @ovl_check_whiteouts(i32, %struct.ovl_readdir_data*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
