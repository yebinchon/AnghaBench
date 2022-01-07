; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_type_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unsupported BTF_KIND:%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*)* @btf_type_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_type_size(%struct.btf_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btf_type* %0, %struct.btf_type** %3, align 8
  store i32 4, i32* %4, align 4
  %6 = load %struct.btf_type*, %struct.btf_type** %3, align 8
  %7 = call i32 @btf_vlen(%struct.btf_type* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.btf_type*, %struct.btf_type** %3, align 8
  %9 = call i32 @btf_kind(%struct.btf_type* %8)
  switch i32 %9, label %59 [
    i32 136, label %10
    i32 141, label %10
    i32 128, label %10
    i32 133, label %10
    i32 134, label %10
    i32 131, label %10
    i32 138, label %10
    i32 135, label %12
    i32 139, label %17
    i32 142, label %25
    i32 132, label %30
    i32 130, label %30
    i32 137, label %38
    i32 129, label %46
    i32 140, label %51
  ]

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 %19, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %1, %1
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 %32, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = add i64 %40, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %1
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %1
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = add i64 %53, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %1
  %60 = load %struct.btf_type*, %struct.btf_type** %3, align 8
  %61 = call i32 @btf_kind(%struct.btf_type* %60)
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %51, %46, %38, %30, %25, %17, %12, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
