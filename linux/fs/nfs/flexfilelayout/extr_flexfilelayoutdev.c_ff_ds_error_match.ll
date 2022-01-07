; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_ds_error_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_ff_ds_error_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_ff_layout_ds_err = type { i64, i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err*)* @ff_ds_error_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_ds_error_match(%struct.nfs4_ff_layout_ds_err* %0, %struct.nfs4_ff_layout_ds_err* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_ff_layout_ds_err*, align 8
  %5 = alloca %struct.nfs4_ff_layout_ds_err*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs4_ff_layout_ds_err* %0, %struct.nfs4_ff_layout_ds_err** %4, align 8
  store %struct.nfs4_ff_layout_ds_err* %1, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %7 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %11 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %19 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 -1, i32 1
  store i32 %23, i32* %3, align 4
  br label %93

24:                                               ; preds = %2
  %25 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %29 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %37 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 -1, i32 1
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %24
  %43 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %44 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %48 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @memcmp(i32* %46, i32* %50, i32 8)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %93

56:                                               ; preds = %42
  %57 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %58 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %57, i32 0, i32 4
  %59 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %60 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %59, i32 0, i32 4
  %61 = call i32 @memcmp(i32* %58, i32* %60, i32 4)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %93

66:                                               ; preds = %56
  %67 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %68 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %71 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @pnfs_end_offset(i64 %69, i32 %72)
  %74 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %75 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %93

79:                                               ; preds = %66
  %80 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %4, align 8
  %81 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %84 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.nfs4_ff_layout_ds_err*, %struct.nfs4_ff_layout_ds_err** %5, align 8
  %87 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, %struct.nfs4_ff_layout_ds_err* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @pnfs_end_offset(i64 %85, i32 %88)
  %90 = icmp sgt i64 %82, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %93

92:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %91, %78, %64, %54, %32, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @pnfs_end_offset(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
