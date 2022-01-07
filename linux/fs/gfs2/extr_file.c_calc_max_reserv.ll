; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_calc_max_reserv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_calc_max_reserv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, i32*, i32*, i32*, i32)* @calc_max_reserv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_max_reserv(%struct.gfs2_inode* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_sbd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = call %struct.gfs2_sbd* @GFS2_SB(i32* %18)
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = mul nsw i32 3, %24
  %26 = sub i32 %20, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %34, %5
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %35, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sub i32 %41, %40
  store i32 %42, i32* %14, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sub i32 %46, %47
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 %50, 3
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %51, %55
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %43
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %65, i32 %66, i32* %67, i32* %68)
  br label %70

70:                                               ; preds = %62, %43
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
