; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_hypot_map_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_hypot_map_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { i32, i32, i64*, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dedup*, i64, i64)* @btf_dedup_hypot_map_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dedup_hypot_map_add(%struct.btf_dedup* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf_dedup*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.btf_dedup* %0, %struct.btf_dedup** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %10 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %13 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %18 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 2
  %21 = call i64 @max(i32 16, i32 %20)
  %22 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %23 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %29 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %32 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64* @realloc(i64* %30, i32 %36)
  store i64* %37, i64** %8, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %16
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %16
  %44 = load i64*, i64** %8, align 8
  %45 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %46 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %45, i32 0, i32 2
  store i64* %44, i64** %46, align 8
  br label %47

47:                                               ; preds = %43, %3
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %50 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %53 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %51, i64 %56
  store i64 %48, i64* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.btf_dedup*, %struct.btf_dedup** %5, align 8
  %60 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %58, i64* %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %47, %40
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64* @realloc(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
