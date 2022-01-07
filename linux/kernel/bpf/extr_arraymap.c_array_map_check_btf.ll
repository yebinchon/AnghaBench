; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_check_btf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_check_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i64, i32 }
%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@BPF_MAP_TYPE_ARRAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BTF_KIND_DATASEC = common dso_local global i64 0, align 8
@BTF_KIND_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)* @array_map_check_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_map_check_btf(%struct.bpf_map* %0, %struct.btf* %1, %struct.btf_type* %2, %struct.btf_type* %3) #0 {
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
  %12 = call i64 @btf_type_is_void(%struct.btf_type* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %4
  %15 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BPF_MAP_TYPE_ARRAY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %14
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %65

28:                                               ; preds = %20
  %29 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %30 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @BTF_INFO_KIND(i32 %31)
  %33 = load i64, i64* @BTF_KIND_DATASEC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %65

38:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %65

39:                                               ; preds = %4
  %40 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %41 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @BTF_INFO_KIND(i32 %42)
  %44 = load i64, i64* @BTF_KIND_INT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %65

49:                                               ; preds = %39
  %50 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %51 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %50, i64 1
  %52 = bitcast %struct.btf_type* %51 to i32*
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @BTF_INT_BITS(i32 %54)
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @BTF_INT_OFFSET(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %49
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %61, %46, %38, %35, %25
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @btf_type_is_void(%struct.btf_type*) #1

declare dso_local i64 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @BTF_INT_BITS(i32) #1

declare dso_local i64 @BTF_INT_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
