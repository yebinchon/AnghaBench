; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_array.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf_dumper.c_btf_dumper_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dumper = type { i32, i32 }
%struct.btf_type = type { i32 }
%struct.btf_array = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dumper*, i64, i8*)* @btf_dumper_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dumper_array(%struct.btf_dumper* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_dumper*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca %struct.btf_array*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.btf_dumper* %0, %struct.btf_dumper** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %14 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.btf_type* @btf__type_by_id(i32 %15, i64 %16)
  store %struct.btf_type* %17, %struct.btf_type** %8, align 8
  %18 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %19 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %18, i64 1
  %20 = bitcast %struct.btf_type* %19 to %struct.btf_array*
  store %struct.btf_array* %20, %struct.btf_array** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %22 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %25 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @btf__resolve_size(i32 %23, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %68

33:                                               ; preds = %3
  %34 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %35 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @jsonw_start_array(i32 %36)
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %59, %33
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %41 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %46 = load %struct.btf_array*, %struct.btf_array** %9, align 8
  %47 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %10, align 8
  %52 = mul nsw i64 %50, %51
  %53 = getelementptr i8, i8* %49, i64 %52
  %54 = call i32 @btf_dumper_do_type(%struct.btf_dumper* %45, i32 %48, i32 0, i8* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %38

62:                                               ; preds = %57, %38
  %63 = load %struct.btf_dumper*, %struct.btf_dumper** %5, align 8
  %64 = getelementptr inbounds %struct.btf_dumper, %struct.btf_dumper* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @jsonw_end_array(i32 %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %30
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i64) #1

declare dso_local i64 @btf__resolve_size(i32, i32) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @btf_dumper_do_type(%struct.btf_dumper*, i32, i32, i8*) #1

declare dso_local i32 @jsonw_end_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
