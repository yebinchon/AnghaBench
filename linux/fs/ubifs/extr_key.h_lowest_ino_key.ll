; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_lowest_ino_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_lowest_ino_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %union.ubifs_key*, i64)* @lowest_ino_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lowest_ino_key(%struct.ubifs_info* %0, %union.ubifs_key* %1, i64 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %union.ubifs_key*, align 8
  %6 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %9 = bitcast %union.ubifs_key* %8 to i64**
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %7, i64* %11, align 8
  %12 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %13 = bitcast %union.ubifs_key* %12 to i64**
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64 0, i64* %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
