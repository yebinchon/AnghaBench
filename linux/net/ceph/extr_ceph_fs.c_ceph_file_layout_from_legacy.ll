; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_file_layout_from_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_file_layout_from_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_file_layout = type { i64, i64, i64, i32 }
%struct.ceph_file_layout_legacy = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_file_layout_from_legacy(%struct.ceph_file_layout* %0, %struct.ceph_file_layout_legacy* %1) #0 {
  %3 = alloca %struct.ceph_file_layout*, align 8
  %4 = alloca %struct.ceph_file_layout_legacy*, align 8
  store %struct.ceph_file_layout* %0, %struct.ceph_file_layout** %3, align 8
  store %struct.ceph_file_layout_legacy* %1, %struct.ceph_file_layout_legacy** %4, align 8
  %5 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %6 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le32_to_cpu(i32 %7)
  %9 = ptrtoint i8* %8 to i64
  %10 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le32_to_cpu(i32 %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %25 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %34 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %39 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %49 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %54 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %53, i32 0, i32 3
  store i32 -1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %47, %42, %37, %2
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
