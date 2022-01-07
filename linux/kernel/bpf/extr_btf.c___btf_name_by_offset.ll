; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c___btf_name_by_offset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c___btf_name_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"(invalid-name-offset)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.btf*, i64)* @__btf_name_by_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__btf_name_by_offset(%struct.btf* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i64, align 8
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %23

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.btf*, %struct.btf** %4, align 8
  %12 = getelementptr inbounds %struct.btf, %struct.btf* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.btf*, %struct.btf** %4, align 8
  %18 = getelementptr inbounds %struct.btf, %struct.btf* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %3, align 8
  br label %23

22:                                               ; preds = %9
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %23

23:                                               ; preds = %22, %16, %8
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
