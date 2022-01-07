; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_find_set_and_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_find_set_and_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }
%struct.ip_set_net = type { i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_set* (%struct.ip_set_net*, i8*, i64*)* @find_set_and_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_set* @find_set_and_id(%struct.ip_set_net* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.ip_set_net*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ip_set*, align 8
  %8 = alloca i64, align 8
  store %struct.ip_set_net* %0, %struct.ip_set_net** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  store %struct.ip_set* null, %struct.ip_set** %7, align 8
  %9 = load i64, i64* @IPSET_INVALID_ID, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 %9, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.ip_set_net*, %struct.ip_set_net** %4, align 8
  %14 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.ip_set_net*, %struct.ip_set_net** %4, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %18, i64 %19)
  store %struct.ip_set* %20, %struct.ip_set** %7, align 8
  %21 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %22 = icmp ne %struct.ip_set* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %25 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @STRNCMP(i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %37

33:                                               ; preds = %23, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %11

37:                                               ; preds = %30, %11
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IPSET_INVALID_ID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %45

43:                                               ; preds = %37
  %44 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi %struct.ip_set* [ null, %42 ], [ %44, %43 ]
  ret %struct.ip_set* %46
}

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i64) #1

declare dso_local i64 @STRNCMP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
