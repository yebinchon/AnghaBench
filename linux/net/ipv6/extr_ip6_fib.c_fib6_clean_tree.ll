; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_clean_tree.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_clean_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_node = type { i32 }
%struct.fib6_info = type opaque
%struct.fib6_cleaner = type { i32 (%struct.fib6_info.0*, i8*)*, i32, i32, %struct.TYPE_2__, %struct.net*, i8* }
%struct.fib6_info.0 = type opaque
%struct.TYPE_2__ = type { i64, i64, i64, i32, %struct.fib6_node* }

@fib6_clean_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib6_node*, i32 (%struct.fib6_info*, i8*)*, i32, i8*, i32)* @fib6_clean_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_clean_tree(%struct.net* %0, %struct.fib6_node* %1, i32 (%struct.fib6_info*, i8*)* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib6_node*, align 8
  %9 = alloca i32 (%struct.fib6_info*, i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fib6_cleaner, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.fib6_node* %1, %struct.fib6_node** %8, align 8
  store i32 (%struct.fib6_info*, i8*)* %2, i32 (%struct.fib6_info*, i8*)** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.fib6_node*, %struct.fib6_node** %8, align 8
  %15 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store %struct.fib6_node* %14, %struct.fib6_node** %16, align 8
  %17 = load i32, i32* @fib6_clean_node, align 4
  %18 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32 (%struct.fib6_info*, i8*)*, i32 (%struct.fib6_info*, i8*)** %9, align 8
  %27 = bitcast i32 (%struct.fib6_info*, i8*)* %26 to i32 (%struct.fib6_info.0*, i8*)*
  %28 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 0
  store i32 (%struct.fib6_info.0*, i8*)* %27, i32 (%struct.fib6_info.0*, i8*)** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = load %struct.net*, %struct.net** %7, align 8
  %34 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 4
  store %struct.net* %33, %struct.net** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.net*, %struct.net** %7, align 8
  %38 = getelementptr inbounds %struct.fib6_cleaner, %struct.fib6_cleaner* %13, i32 0, i32 3
  %39 = call i32 @fib6_walk(%struct.net* %37, %struct.TYPE_2__* %38)
  ret void
}

declare dso_local i32 @fib6_walk(%struct.net*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
