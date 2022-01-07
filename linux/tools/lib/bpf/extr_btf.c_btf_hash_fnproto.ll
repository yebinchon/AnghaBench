; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_hash_fnproto.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_hash_fnproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }
%struct.btf_param = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_type*)* @btf_hash_fnproto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btf_hash_fnproto(%struct.btf_type* %0) #0 {
  %2 = alloca %struct.btf_type*, align 8
  %3 = alloca %struct.btf_param*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btf_type* %0, %struct.btf_type** %2, align 8
  %7 = load %struct.btf_type*, %struct.btf_type** %2, align 8
  %8 = call %struct.btf_param* @btf_params(%struct.btf_type* %7)
  store %struct.btf_param* %8, %struct.btf_param** %3, align 8
  %9 = load %struct.btf_type*, %struct.btf_type** %2, align 8
  %10 = call i32 @btf_vlen(%struct.btf_type* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.btf_type*, %struct.btf_type** %2, align 8
  %12 = call i64 @btf_hash_common(%struct.btf_type* %11)
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.btf_param*, %struct.btf_param** %3, align 8
  %20 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @hash_combine(i64 %18, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.btf_param*, %struct.btf_param** %3, align 8
  %25 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @hash_combine(i64 %23, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.btf_param*, %struct.btf_param** %3, align 8
  %29 = getelementptr inbounds %struct.btf_param, %struct.btf_param* %28, i32 1
  store %struct.btf_param* %29, %struct.btf_param** %3, align 8
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local %struct.btf_param* @btf_params(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i64 @btf_hash_common(%struct.btf_type*) #1

declare dso_local i64 @hash_combine(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
