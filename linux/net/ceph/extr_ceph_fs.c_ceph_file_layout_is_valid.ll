; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_file_layout_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_fs.c_ceph_file_layout_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_file_layout = type { i32, i32, i32 }

@CEPH_MIN_STRIPE_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_file_layout_is_valid(%struct.ceph_file_layout* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_file_layout*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ceph_file_layout* %0, %struct.ceph_file_layout** %3, align 8
  %7 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ceph_file_layout*, %struct.ceph_file_layout** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_file_layout, %struct.ceph_file_layout* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CEPH_MIN_STRIPE_UNIT, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %50

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CEPH_MIN_STRIPE_UNIT, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %25
  store i32 0, i32* %2, align 4
  br label %50

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = srem i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %35
  store i32 0, i32* %2, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %50

49:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %48, %44, %34, %24
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
