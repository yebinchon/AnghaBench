; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_sk_storage_map_check_btf.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_sk_storage_map_check_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@BTF_KIND_INT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)* @bpf_sk_storage_map_check_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_sk_storage_map_check_btf(%struct.bpf_map* %0, %struct.btf* %1, %struct.btf_type* %2, %struct.btf_type* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca %struct.btf*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %6, align 8
  store %struct.btf* %1, %struct.btf** %7, align 8
  store %struct.btf_type* %2, %struct.btf_type** %8, align 8
  store %struct.btf_type* %3, %struct.btf_type** %9, align 8
  %11 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %12 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @BTF_INFO_KIND(i32 %13)
  %15 = load i64, i64* @BTF_KIND_INT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %4
  %21 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %22 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %21, i64 1
  %23 = bitcast %struct.btf_type* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @BTF_INT_BITS(i32 %25)
  %27 = icmp ne i32 %26, 32
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @BTF_INT_OFFSET(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %32, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @BTF_INT_BITS(i32) #1

declare dso_local i64 @BTF_INT_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
