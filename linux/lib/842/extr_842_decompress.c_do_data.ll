; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_do_data.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_do_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i32)* @do_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_data(%struct.sw842_param* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw842_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %10 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSPC, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 8
  %20 = call i32 @next_bits(%struct.sw842_param* %17, i32* %6, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %54 [
    i32 2, label %27
    i32 4, label %36
    i32 8, label %45
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cpu_to_be16(i32 %28)
  %30 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %31 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @put_unaligned(i32 %29, i32* %34)
  br label %57

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @cpu_to_be32(i32 %37)
  %39 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %40 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @put_unaligned(i32 %38, i32* %43)
  br label %57

45:                                               ; preds = %25
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cpu_to_be64(i32 %46)
  %48 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %49 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 @put_unaligned(i32 %47, i32* %52)
  br label %57

54:                                               ; preds = %25
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %45, %36, %27
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %60 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %65 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %57, %54, %23, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @next_bits(%struct.sw842_param*, i32*, i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
