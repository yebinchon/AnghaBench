; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_fixup_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_fixup_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_txoptions = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipv6_txoptions* @ipv6_fixup_options(%struct.ipv6_txoptions* %0, %struct.ipv6_txoptions* %1) #0 {
  %3 = alloca %struct.ipv6_txoptions*, align 8
  %4 = alloca %struct.ipv6_txoptions*, align 8
  store %struct.ipv6_txoptions* %0, %struct.ipv6_txoptions** %3, align 8
  store %struct.ipv6_txoptions* %1, %struct.ipv6_txoptions** %4, align 8
  %5 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %6 = icmp ne %struct.ipv6_txoptions* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %9 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %14 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %12
  %18 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %3, align 8
  %19 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %20 = icmp ne %struct.ipv6_txoptions* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %3, align 8
  %23 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %24 = call i32 @memcpy(%struct.ipv6_txoptions* %22, %struct.ipv6_txoptions* %23, i32 16)
  %25 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %3, align 8
  store %struct.ipv6_txoptions* %25, %struct.ipv6_txoptions** %4, align 8
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %28 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @ipv6_optlen(i32* %29)
  %31 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %32 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  %37 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %38 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %12, %7, %2
  %40 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  ret %struct.ipv6_txoptions* %40
}

declare dso_local i32 @memcpy(%struct.ipv6_txoptions*, %struct.ipv6_txoptions*, i32) #1

declare dso_local i64 @ipv6_optlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
