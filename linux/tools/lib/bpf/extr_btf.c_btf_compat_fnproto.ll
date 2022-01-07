; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_compat_fnproto.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_compat_fnproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i64, i64 }
%struct.btf_param = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*, %struct.btf_type*)* @btf_compat_fnproto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_compat_fnproto(%struct.btf_type* %0, %struct.btf_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_type*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca %struct.btf_param*, align 8
  %7 = alloca %struct.btf_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btf_type* %0, %struct.btf_type** %4, align 8
  store %struct.btf_type* %1, %struct.btf_type** %5, align 8
  %10 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %11 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %14 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %19 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %22 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %55

26:                                               ; preds = %17
  %27 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %28 = call i32 @btf_vlen(%struct.btf_type* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.btf_type*, %struct.btf_type** %4, align 8
  %30 = call %struct.btf_param* @btf_params(%struct.btf_type* %29)
  store %struct.btf_param* %30, %struct.btf_param** %6, align 8
  %31 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %32 = call %struct.btf_param* @btf_params(%struct.btf_type* %31)
  store %struct.btf_param* %32, %struct.btf_param** %7, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %51, %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load %struct.btf_param*, %struct.btf_param** %6, align 8
  %39 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %42 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %55

46:                                               ; preds = %37
  %47 = load %struct.btf_param*, %struct.btf_param** %6, align 8
  %48 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %47, i32 1
  store %struct.btf_param* %48, %struct.btf_param** %6, align 8
  %49 = load %struct.btf_param*, %struct.btf_param** %7, align 8
  %50 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %49, i32 1
  store %struct.btf_param* %50, %struct.btf_param** %7, align 8
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %33

54:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %45, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
