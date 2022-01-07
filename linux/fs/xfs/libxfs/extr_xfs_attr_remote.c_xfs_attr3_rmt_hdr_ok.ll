; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr3_rmt_hdr_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr3_rmt_hdr_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_attr3_rmt_hdr = type { i32, i32, i32, i32 }

@__this_address = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64, i64, i64)* @xfs_attr3_rmt_hdr_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_attr3_rmt_hdr_ok(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xfs_attr3_rmt_hdr*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.xfs_attr3_rmt_hdr*
  store %struct.xfs_attr3_rmt_hdr* %14, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %17 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @be64_to_cpu(i32 %18)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32*, i32** @__this_address, align 8
  store i32* %22, i32** %6, align 8
  br label %51

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %26 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be32_to_cpu(i32 %27)
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32*, i32** @__this_address, align 8
  store i32* %31, i32** %6, align 8
  br label %51

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %35 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be32_to_cpu(i32 %36)
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32*, i32** @__this_address, align 8
  store i32* %40, i32** %6, align 8
  br label %51

41:                                               ; preds = %32
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.xfs_attr3_rmt_hdr*, %struct.xfs_attr3_rmt_hdr** %12, align 8
  %44 = getelementptr inbounds %struct.xfs_attr3_rmt_hdr, %struct.xfs_attr3_rmt_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @be64_to_cpu(i32 %45)
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32*, i32** @__this_address, align 8
  store i32* %49, i32** %6, align 8
  br label %51

50:                                               ; preds = %41
  store i32* null, i32** %6, align 8
  br label %51

51:                                               ; preds = %50, %48, %39, %30, %21
  %52 = load i32*, i32** %6, align 8
  ret i32* %52
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
