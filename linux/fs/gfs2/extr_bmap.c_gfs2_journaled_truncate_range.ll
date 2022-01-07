; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_journaled_truncate_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_journaled_truncate_range.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @gfs2_journaled_truncate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_journaled_truncate_range(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gfs2_trans*, align 8
  %12 = alloca i32, align 4
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

23:                                               ; preds = %83, %71, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PAGE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sub i32 %46, %47
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = add i32 %45, %50
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %44, %40, %33
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @truncate_pagecache_range(%struct.inode* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.gfs2_trans*, %struct.gfs2_trans** %64, align 8
  store %struct.gfs2_trans* %65, %struct.gfs2_trans** %11, align 8
  %66 = load i32, i32* @TR_TOUCHED, align 4
  %67 = load %struct.gfs2_trans*, %struct.gfs2_trans** %11, align 8
  %68 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %67, i32 0, i32 0
  %69 = call i32 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %52
  br label %23

72:                                               ; preds = %52
  %73 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %74 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %73)
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %76 = load i32, i32* @RES_DINODE, align 4
  %77 = load i32, i32* @GFS2_JTRUNC_REVOKES, align 4
  %78 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %75, i32 %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %72
  br label %23

84:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
