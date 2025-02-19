; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_build_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_build_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.qstr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_cat_build_key(%struct.super_block* %0, %struct.TYPE_7__* %1, i32 %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @cpu_to_be32(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.qstr*, %struct.qstr** %8, align 8
  %18 = icmp ne %struct.qstr* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.qstr*, %struct.qstr** %8, align 8
  %25 = call i32 @hfs_asc2mac(%struct.super_block* %20, %struct.TYPE_8__* %23, %struct.qstr* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 6, %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %41

34:                                               ; preds = %4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @memset(%struct.TYPE_8__* %37, i32 0, i32 4)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 6, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %19
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @hfs_asc2mac(%struct.super_block*, %struct.TYPE_8__*, %struct.qstr*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
