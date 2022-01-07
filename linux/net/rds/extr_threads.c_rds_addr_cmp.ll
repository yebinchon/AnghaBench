; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_threads.c_rds_addr_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_threads.c_rds_addr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_addr_cmp(%struct.in6_addr* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %57, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %14 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %21 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %19, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %12
  %29 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %30 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @ntohl(i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %38 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @ntohl(i64 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %61

49:                                               ; preds = %28
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %61

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %12
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %9

60:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %53, %48
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
