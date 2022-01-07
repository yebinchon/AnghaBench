; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_file_layout_to_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_file_layout_to_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_file_layout = type { i64, i64, i64, i64 }
%struct.ceph_file_layout_legacy = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_file_layout_to_legacy(%struct.ceph_file_layout* %0, %struct.ceph_file_layout_legacy* %1) #0 {
  %3 = alloca %struct.ceph_file_layout*, align 8
  %4 = alloca %struct.ceph_file_layout_legacy*, align 8
  store %struct.ceph_file_layout* %0, %struct.ceph_file_layout** %3, align 8
  store %struct.ceph_file_layout_legacy* %1, %struct.ceph_file_layout_legacy** %4, align 8
  %5 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i8* @cpu_to_le32(i64 %7)
  %9 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i8* @cpu_to_le32(i64 %13)
  %15 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @cpu_to_le32(i64 %19)
  %21 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @cpu_to_le32(i64 %30)
  %32 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %33 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.ceph_file_layout_legacy*, %struct.ceph_file_layout_legacy** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_file_layout_legacy, %struct.ceph_file_layout_legacy* %35, i32 0, i32 0
  store i8* null, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  ret void
}

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
