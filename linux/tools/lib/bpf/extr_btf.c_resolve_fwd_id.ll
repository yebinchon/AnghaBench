; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_resolve_fwd_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_resolve_fwd_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_dedup*, i64)* @resolve_fwd_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resolve_fwd_id(%struct.btf_dedup* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.btf_dedup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.btf_dedup* %0, %struct.btf_dedup** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %9 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @btf_is_fwd(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %3, align 8
  br label %59

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %37, %20
  %22 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @is_type_mapped(%struct.btf_dedup* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %28 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %32, %33
  br label %35

35:                                               ; preds = %26, %21
  %36 = phi i1 [ false, %21 ], [ %34, %26 ]
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %39 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %5, align 8
  br label %21

44:                                               ; preds = %35
  %45 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  %46 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @btf_is_fwd(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %3, align 8
  br label %59

57:                                               ; preds = %44
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %57, %55, %18
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @btf_is_fwd(i32) #1

declare dso_local i64 @is_type_mapped(%struct.btf_dedup*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
