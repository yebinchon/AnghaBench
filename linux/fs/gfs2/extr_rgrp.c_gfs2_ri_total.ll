; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_ri_total.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_ri_total.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_rindex = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_ri_total(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %5, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %43, %1
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i64 @i_size_read(%struct.inode* %21)
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %46

25:                                               ; preds = %15
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %28 = call i32 @gfs2_internal_read(%struct.gfs2_inode* %26, i8* %27, i64* %9, i32 4)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %46

33:                                               ; preds = %25
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %35 = bitcast i8* %34 to %struct.gfs2_rindex*
  %36 = getelementptr inbounds %struct.gfs2_rindex, %struct.gfs2_rindex* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 1
  %38 = call i64 @be32_to_cpu(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %15

46:                                               ; preds = %32, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @gfs2_internal_read(%struct.gfs2_inode*, i8*, i64*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
