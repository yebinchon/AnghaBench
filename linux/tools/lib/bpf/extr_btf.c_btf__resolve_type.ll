; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__resolve_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__resolve_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@MAX_RESOLVE_DEPTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf__resolve_type(%struct.btf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.btf*, %struct.btf** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %8, i32 %9)
  store %struct.btf_type* %10, %struct.btf_type** %6, align 8
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @MAX_RESOLVE_DEPTH, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %17 = call i64 @btf_type_is_void_or_null(%struct.btf_type* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  %20 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %21 = call i64 @btf_is_mod(%struct.btf_type* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %25 = call i64 @btf_is_typedef(%struct.btf_type* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %29 = call i64 @btf_is_var(%struct.btf_type* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %23, %19
  %32 = phi i1 [ true, %23 ], [ true, %19 ], [ %30, %27 ]
  br label %33

33:                                               ; preds = %31, %15, %11
  %34 = phi i1 [ false, %15 ], [ false, %11 ], [ %32, %31 ]
  br i1 %34, label %35, label %44

35:                                               ; preds = %33
  %36 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %37 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load %struct.btf*, %struct.btf** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %39, i32 %40)
  store %struct.btf_type* %41, %struct.btf_type** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %11

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MAX_RESOLVE_DEPTH, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %50 = call i64 @btf_type_is_void_or_null(%struct.btf_type* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i64 @btf_type_is_void_or_null(%struct.btf_type*) #1

declare dso_local i64 @btf_is_mod(%struct.btf_type*) #1

declare dso_local i64 @btf_is_typedef(%struct.btf_type*) #1

declare dso_local i64 @btf_is_var(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
