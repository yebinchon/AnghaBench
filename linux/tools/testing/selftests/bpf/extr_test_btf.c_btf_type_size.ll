; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_btf_type_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_btf_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported BTF_KIND:%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*)* @btf_type_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_type_size(%struct.btf_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btf_type* %0, %struct.btf_type** %3, align 8
  store i32 4, i32* %4, align 4
  %7 = load %struct.btf_type*, %struct.btf_type** %3, align 8
  %8 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BTF_INFO_VLEN(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.btf_type*, %struct.btf_type** %3, align 8
  %12 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BTF_INFO_KIND(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %65 [
    i32 136, label %16
    i32 141, label %16
    i32 128, label %16
    i32 133, label %16
    i32 134, label %16
    i32 131, label %16
    i32 138, label %16
    i32 135, label %18
    i32 139, label %23
    i32 142, label %31
    i32 132, label %36
    i32 130, label %36
    i32 137, label %44
    i32 129, label %52
    i32 140, label %57
  ]

16:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %71

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %71

36:                                               ; preds = %1, %1
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = add i64 %38, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %71

44:                                               ; preds = %1
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = add i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %71

57:                                               ; preds = %1
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = add i64 %59, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %1
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %57, %52, %44, %36, %31, %23, %18, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @BTF_INFO_VLEN(i32) #1

declare dso_local i32 @BTF_INFO_KIND(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
