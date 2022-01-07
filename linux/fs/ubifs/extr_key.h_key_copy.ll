; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_key_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_key_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*)* @key_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_copy(%struct.ubifs_info* %0, %union.ubifs_key* %1, %union.ubifs_key* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %union.ubifs_key*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %5, align 8
  store %union.ubifs_key* %2, %union.ubifs_key** %6, align 8
  %7 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %8 = bitcast %union.ubifs_key* %7 to i32**
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %13 = bitcast %union.ubifs_key* %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
