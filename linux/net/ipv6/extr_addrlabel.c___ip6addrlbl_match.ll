; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c___ip6addrlbl_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c___ip6addrlbl_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6addrlbl_entry = type { i32, i32, i32, i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6addrlbl_entry*, %struct.in6_addr*, i32, i32)* @__ip6addrlbl_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip6addrlbl_match(%struct.ip6addrlbl_entry* %0, %struct.in6_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6addrlbl_entry*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip6addrlbl_entry* %0, %struct.ip6addrlbl_entry** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %6, align 8
  %11 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %6, align 8
  %16 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %44

21:                                               ; preds = %14, %4
  %22 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %6, align 8
  %23 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %6, align 8
  %28 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %44

33:                                               ; preds = %26, %21
  %34 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %35 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %6, align 8
  %36 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %35, i32 0, i32 3
  %37 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %6, align 8
  %38 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ipv6_prefix_equal(%struct.in6_addr* %34, i32* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %44

43:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %42, %32, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @ipv6_prefix_equal(%struct.in6_addr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
