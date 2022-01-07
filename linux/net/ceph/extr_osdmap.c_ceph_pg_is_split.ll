; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_pg_is_split.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_pg_is_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pg = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_pg_is_split(%struct.ceph_pg* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_pg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ceph_pg* %0, %struct.ceph_pg** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @calc_bits_of(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %19 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

29:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %68, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %38 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %36, %39
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %30
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %47 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %30
  br label %68

51:                                               ; preds = %44
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %71

56:                                               ; preds = %51
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @ceph_stable_mod(i64 %57, i64 %58, i32 %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.ceph_pg*, %struct.ceph_pg** %5, align 8
  %63 = getelementptr inbounds %struct.ceph_pg, %struct.ceph_pg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  br label %72

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %30

71:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %66, %28
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @calc_bits_of(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ceph_stable_mod(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
