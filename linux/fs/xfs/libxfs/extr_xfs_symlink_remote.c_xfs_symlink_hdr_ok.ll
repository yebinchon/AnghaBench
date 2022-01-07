; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_hdr_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_symlink_remote.c_xfs_symlink_hdr_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_dsymlink_hdr* }
%struct.xfs_dsymlink_hdr = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_symlink_hdr_ok(i64 %0, i64 %1, i64 %2, %struct.xfs_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca %struct.xfs_dsymlink_hdr*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.xfs_buf* %3, %struct.xfs_buf** %9, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %12 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %11, i32 0, i32 0
  %13 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %12, align 8
  store %struct.xfs_dsymlink_hdr* %13, %struct.xfs_dsymlink_hdr** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %10, align 8
  %16 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be32_to_cpu(i32 %17)
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %10, align 8
  %24 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be32_to_cpu(i32 %25)
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.xfs_dsymlink_hdr*, %struct.xfs_dsymlink_hdr** %10, align 8
  %32 = getelementptr inbounds %struct.xfs_dsymlink_hdr, %struct.xfs_dsymlink_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be64_to_cpu(i32 %33)
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %38

37:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36, %28, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
