; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_calc_layout.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_calc_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_file_layout = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c" skipping last %llu, final file extent %llu~%llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"calc_layout objnum=%llx %llu~%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_file_layout*, i64, i64*, i64*, i64*, i64*)* @calc_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_layout(%struct.ceph_file_layout* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.ceph_file_layout*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ceph_file_layout* %0, %struct.ceph_file_layout** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load i64*, i64** %11, align 8
  %22 = call i32 @ceph_calc_file_object_mapping(%struct.ceph_file_layout* %17, i64 %18, i64 %19, i64* %20, i64* %21, i64* %14)
  %23 = load i64, i64* %14, align 8
  %24 = load i64*, i64** %12, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %6
  %30 = load i64*, i64** %12, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i64 %39)
  br label %41

41:                                               ; preds = %29, %6
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %45, i64 %47)
  ret i32 0
}

declare dso_local i32 @ceph_calc_file_object_mapping(%struct.ceph_file_layout*, i64, i64, i64*, i64*, i64*) #1

declare dso_local i32 @dout(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
