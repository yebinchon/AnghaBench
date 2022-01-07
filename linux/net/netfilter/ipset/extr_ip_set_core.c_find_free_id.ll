; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_find_free_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_find_free_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set_net = type { i64 }
%struct.ip_set = type { i32 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@IPSET_ERR_MAX_SETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set_net*, i8*, i64*, %struct.ip_set**)* @find_free_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_id(%struct.ip_set_net* %0, i8* %1, i64* %2, %struct.ip_set** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set_net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ip_set**, align 8
  %10 = alloca %struct.ip_set*, align 8
  %11 = alloca i64, align 8
  store %struct.ip_set_net* %0, %struct.ip_set_net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.ip_set** %3, %struct.ip_set*** %9, align 8
  %12 = load i64, i64* @IPSET_INVALID_ID, align 8
  %13 = load i64*, i64** %8, align 8
  store i64 %12, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %49, %4
  %15 = load i64, i64* %11, align 8
  %16 = load %struct.ip_set_net*, %struct.ip_set_net** %6, align 8
  %17 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load %struct.ip_set_net*, %struct.ip_set_net** %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %21, i64 %22)
  store %struct.ip_set* %23, %struct.ip_set** %10, align 8
  %24 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %25 = icmp ne %struct.ip_set* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPSET_INVALID_ID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8
  %33 = load i64*, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  br label %48

35:                                               ; preds = %20
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %38 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @STRNCMP(i8* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %44 = load %struct.ip_set**, %struct.ip_set*** %9, align 8
  store %struct.ip_set* %43, %struct.ip_set** %44, align 8
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %61

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %11, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IPSET_INVALID_ID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @IPSET_ERR_MAX_SETS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %57, %42
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i64) #1

declare dso_local i64 @STRNCMP(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
