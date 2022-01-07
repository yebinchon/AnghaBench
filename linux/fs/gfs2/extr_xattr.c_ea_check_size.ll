; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_check_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }

@GFS2_EA_MAX_DATA_LEN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, i64)* @ea_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_check_size(%struct.gfs2_sbd* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @GFS2_EA_MAX_DATA_LEN, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @ERANGE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @ea_calc_size(%struct.gfs2_sbd* %16, i32 %17, i64 %18, i32* %8)
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @ea_calc_size(%struct.gfs2_sbd*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
