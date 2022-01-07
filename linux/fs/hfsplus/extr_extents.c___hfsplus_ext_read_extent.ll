; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c___hfsplus_ext_read_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c___hfsplus_ext_read_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.hfsplus_extent = type { i32 }

@hfs_find_rec_by_key = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfs_find_data*, %struct.hfsplus_extent*, i32, i32, i32)* @__hfsplus_ext_read_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfsplus_ext_read_extent(%struct.hfs_find_data* %0, %struct.hfsplus_extent* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfs_find_data*, align 8
  %8 = alloca %struct.hfsplus_extent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %7, align 8
  store %struct.hfsplus_extent* %1, %struct.hfsplus_extent** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %14 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @hfsplus_ext_build_key(%struct.TYPE_8__* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %21 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %26 = load i32, i32* @hfs_find_rec_by_key, align 4
  %27 = call i32 @hfs_brec_find(%struct.hfs_find_data* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %86

37:                                               ; preds = %30, %5
  %38 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %39 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %45 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %43, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %37
  %52 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %53 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %52, i32 0, i32 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %59 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %57, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %51, %37
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %86

68:                                               ; preds = %51
  %69 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %70 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, 4
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %86

77:                                               ; preds = %68
  %78 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %79 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %8, align 8
  %82 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %83 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @hfs_bnode_read(i32 %80, %struct.hfsplus_extent* %81, i32 %84, i32 4)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %77, %74, %65, %35
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @hfsplus_ext_build_key(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.hfsplus_extent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
