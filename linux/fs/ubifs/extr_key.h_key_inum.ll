; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_key_inum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_key_inum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*)* @key_inum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_inum(%struct.ubifs_info* %0, i8* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %union.ubifs_key*
  store %union.ubifs_key* %7, %union.ubifs_key** %5, align 8
  %8 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %9 = bitcast %union.ubifs_key* %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
