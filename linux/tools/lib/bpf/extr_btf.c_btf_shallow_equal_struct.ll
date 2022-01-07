; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_shallow_equal_struct.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_shallow_equal_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }
%struct.btf_member = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*, %struct.btf_type*)* @btf_shallow_equal_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_shallow_equal_struct(%struct.btf_type* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca %struct.btf_member*, align 8
  %7 = alloca %struct.btf_member*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btf_type* %0, %struct.btf_type** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %10 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %11 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %12 = call i32 @btf_equal_common(%struct.btf_type* %10, %struct.btf_type* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %17 = call i32 @btf_vlen(%struct.btf_type* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %19 = call %struct.btf_member* @btf_members(%struct.btf_type* %18)
  store %struct.btf_member* %19, %struct.btf_member** %6, align 8
  %20 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %21 = call %struct.btf_member* @btf_members(%struct.btf_type* %20)
  store %struct.btf_member* %21, %struct.btf_member** %7, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %48, %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load %struct.btf_member*, %struct.btf_member** %6, align 8
  %28 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.btf_member*, %struct.btf_member** %7, align 8
  %31 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.btf_member*, %struct.btf_member** %6, align 8
  %36 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.btf_member*, %struct.btf_member** %7, align 8
  %39 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26
  store i32 0, i32* %3, align 4
  br label %52

43:                                               ; preds = %34
  %44 = load %struct.btf_member*, %struct.btf_member** %6, align 8
  %45 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %44, i32 1
  store %struct.btf_member* %45, %struct.btf_member** %6, align 8
  %46 = load %struct.btf_member*, %struct.btf_member** %7, align 8
  %47 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %46, i32 1
  store %struct.btf_member* %47, %struct.btf_member** %7, align 8
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %22

51:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %42, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @btf_equal_common(%struct.btf_type*, %struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
