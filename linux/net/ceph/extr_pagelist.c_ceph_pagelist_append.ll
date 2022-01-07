; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_pagelist.c_ceph_pagelist_append.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_pagelist.c_ceph_pagelist_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pagelist = type { i64, i32, i64 }

@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_pagelist_append(%struct.ceph_pagelist* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_pagelist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_pagelist* %0, %struct.ceph_pagelist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %58, %3
  %11 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %18 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %21 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %24 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %22, %29
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @memcpy(i64 %30, i8* %31, i64 %32)
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %36 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %43 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr i8, i8* %47, i64 %46
  store i8* %48, i8** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %53 = call i32 @ceph_pagelist_addpage(%struct.ceph_pagelist* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %16
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %86

58:                                               ; preds = %16
  br label %10

59:                                               ; preds = %10
  %60 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %61 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %64 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %62, %69
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @memcpy(i64 %70, i8* %71, i64 %72)
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %76 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %5, align 8
  %83 = getelementptr inbounds %struct.ceph_pagelist, %struct.ceph_pagelist* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, %81
  store i64 %85, i64* %83, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %59, %56
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @ceph_pagelist_addpage(%struct.ceph_pagelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
