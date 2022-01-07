; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_keys_eq.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_keys_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*)* @keys_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keys_eq(%struct.ubifs_info* %0, %union.ubifs_key* %1, %union.ubifs_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store %union.ubifs_key* %2, %union.ubifs_key** %7, align 8
  %8 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %9 = bitcast %union.ubifs_key* %8 to i64**
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %14 = bitcast %union.ubifs_key* %13 to i64**
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

20:                                               ; preds = %3
  %21 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %22 = bitcast %union.ubifs_key* %21 to i64**
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %27 = bitcast %union.ubifs_key* %26 to i64**
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
