; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_oid_printf_vargs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_oid_printf_vargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_object_id = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_printf_vargs(%struct.ceph_object_id* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_object_id* %0, %struct.ceph_object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ceph_object_id*, %struct.ceph_object_id** %5, align 8
  %10 = call i32 @ceph_oid_empty(%struct.ceph_object_id* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.ceph_object_id*, %struct.ceph_object_id** %5, align 8
  %16 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @vsnprintf(i32 %17, i32 4, i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ceph_object_id*, %struct.ceph_object_id** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_object_id, %struct.ceph_object_id* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_oid_empty(%struct.ceph_object_id*) #1

declare dso_local i32 @vsnprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
