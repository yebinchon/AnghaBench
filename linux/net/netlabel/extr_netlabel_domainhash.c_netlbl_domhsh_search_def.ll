; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_domainhash.c_netlbl_domhsh_search_def.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_domainhash.c_netlbl_domhsh_search_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_dom_map = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@netlbl_domhsh_def_ipv4 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@netlbl_domhsh_def_ipv6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_dom_map* (i8*, i64)* @netlbl_domhsh_search_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_dom_map* @netlbl_domhsh_search_def(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.netlbl_dom_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlbl_dom_map*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.netlbl_dom_map* @netlbl_domhsh_search(i8* %7, i64 %8)
  store %struct.netlbl_dom_map* %9, %struct.netlbl_dom_map** %6, align 8
  %10 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %11 = icmp ne %struct.netlbl_dom_map* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  store %struct.netlbl_dom_map* %13, %struct.netlbl_dom_map** %3, align 8
  br label %57

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @AF_UNSPEC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @netlbl_domhsh_def_ipv4, align 4
  %24 = call %struct.netlbl_dom_map* @netlbl_domhsh_rcu_deref(i32 %23)
  store %struct.netlbl_dom_map* %24, %struct.netlbl_dom_map** %6, align 8
  %25 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %26 = icmp ne %struct.netlbl_dom_map* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %29 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  store %struct.netlbl_dom_map* %33, %struct.netlbl_dom_map** %3, align 8
  br label %57

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @AF_INET6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @AF_UNSPEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @netlbl_domhsh_def_ipv6, align 4
  %45 = call %struct.netlbl_dom_map* @netlbl_domhsh_rcu_deref(i32 %44)
  store %struct.netlbl_dom_map* %45, %struct.netlbl_dom_map** %6, align 8
  %46 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %47 = icmp ne %struct.netlbl_dom_map* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  %50 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %6, align 8
  store %struct.netlbl_dom_map* %54, %struct.netlbl_dom_map** %3, align 8
  br label %57

55:                                               ; preds = %48, %43
  br label %56

56:                                               ; preds = %55, %39
  store %struct.netlbl_dom_map* null, %struct.netlbl_dom_map** %3, align 8
  br label %57

57:                                               ; preds = %56, %53, %32, %12
  %58 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %3, align 8
  ret %struct.netlbl_dom_map* %58
}

declare dso_local %struct.netlbl_dom_map* @netlbl_domhsh_search(i8*, i64) #1

declare dso_local %struct.netlbl_dom_map* @netlbl_domhsh_rcu_deref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
