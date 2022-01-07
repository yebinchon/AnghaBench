; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_equal_array.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_equal_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }
%struct.btf_array = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*, %struct.btf_type*)* @btf_equal_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_equal_array(%struct.btf_type* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca %struct.btf_array*, align 8
  %7 = alloca %struct.btf_array*, align 8
  store %struct.btf_type* %0, %struct.btf_type** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %8 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %9 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %10 = call i32 @btf_equal_common(%struct.btf_type* %8, %struct.btf_type* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %15 = call %struct.btf_array* @btf_array(%struct.btf_type* %14)
  store %struct.btf_array* %15, %struct.btf_array** %6, align 8
  %16 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %17 = call %struct.btf_array* @btf_array(%struct.btf_type* %16)
  store %struct.btf_array* %17, %struct.btf_array** %7, align 8
  %18 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %19 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btf_array*, %struct.btf_array** %7, align 8
  %22 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %13
  %26 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %27 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.btf_array*, %struct.btf_array** %7, align 8
  %30 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.btf_array*, %struct.btf_array** %6, align 8
  %35 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.btf_array*, %struct.btf_array** %7, align 8
  %38 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br label %41

41:                                               ; preds = %33, %25, %13
  %42 = phi i1 [ false, %25 ], [ false, %13 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @btf_equal_common(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local %struct.btf_array* @btf_array(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
