; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_compat_enum.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_compat_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*, %struct.btf_type*)* @btf_compat_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_compat_enum(%struct.btf_type* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf_type*, align 8
  store %struct.btf_type* %0, %struct.btf_type** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %6 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %7 = call i32 @btf_is_enum_fwd(%struct.btf_type* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %11 = call i32 @btf_is_enum_fwd(%struct.btf_type* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %15 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %16 = call i32 @btf_equal_enum(%struct.btf_type* %14, %struct.btf_type* %15)
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %9, %2
  %18 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %19 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %22 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %17
  %26 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %27 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, -65536
  %30 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %31 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, -65536
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %37 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %40 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br label %43

43:                                               ; preds = %35, %25, %17
  %44 = phi i1 [ false, %25 ], [ false, %17 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @btf_is_enum_fwd(%struct.btf_type*) #1

declare dso_local i32 @btf_equal_enum(%struct.btf_type*, %struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
