; ModuleID = '/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_lzma2.c_dict_limit.c'
source_filename = "/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_lzma2.c_dict_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dictionary*, i64)* @dict_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dict_limit(%struct.dictionary* %0, i64 %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca i64, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %6 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %9 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %7, %10
  %12 = load i64, i64* %4, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %16 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %19 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %22 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %23, %24
  %26 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %27 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %20, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
