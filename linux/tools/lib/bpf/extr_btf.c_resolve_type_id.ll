; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_resolve_type_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_resolve_type_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btf_dedup*, i64)* @resolve_type_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resolve_type_id(%struct.btf_dedup* %0, i64 %1) #0 {
  %3 = alloca %struct.btf_dedup*, align 8
  %4 = alloca i64, align 8
  store %struct.btf_dedup* %0, %struct.btf_dedup** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %2
  %6 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @is_type_mapped(%struct.btf_dedup* %6, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %12 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %10, %5
  %20 = phi i1 [ false, %5 ], [ %18, %10 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %23 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  br label %5

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i64 @is_type_mapped(%struct.btf_dedup*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
