; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_journaled_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_journaled_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFS2_JTRUNC_REVOKES = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@TR_TOUCHED = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @gfs2_journaled_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_journaled_truncate(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_trans*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %8, align 8
  %16 = load i32, i32* @GFS2_JTRUNC_REVOKES, align 4
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %16, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %84, %72, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sub i32 %49, %50
  %52 = load i32, i32* @PAGE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = add i32 %48, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %47, %43, %36
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub i32 %57, %58
  %60 = call i32 @truncate_pagecache(%struct.inode* %56, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.gfs2_trans*, %struct.gfs2_trans** %65, align 8
  store %struct.gfs2_trans* %66, %struct.gfs2_trans** %12, align 8
  %67 = load i32, i32* @TR_TOUCHED, align 4
  %68 = load %struct.gfs2_trans*, %struct.gfs2_trans** %12, align 8
  %69 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %68, i32 0, i32 0
  %70 = call i32 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %55
  br label %23

73:                                               ; preds = %55
  %74 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %75 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %74)
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %77 = load i32, i32* @RES_DINODE, align 4
  %78 = load i32, i32* @GFS2_JTRUNC_REVOKES, align 4
  %79 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %73
  br label %23

85:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
