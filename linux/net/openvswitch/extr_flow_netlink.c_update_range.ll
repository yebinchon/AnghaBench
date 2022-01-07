; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_update_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_update_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_match = type { %struct.TYPE_2__*, %struct.sw_flow_key_range }
%struct.TYPE_2__ = type { %struct.sw_flow_key_range }
%struct.sw_flow_key_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw_flow_match*, i64, i64, i32)* @update_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_range(%struct.sw_flow_match* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.sw_flow_match*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sw_flow_key_range*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sw_flow_match* %0, %struct.sw_flow_match** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @rounddown(i64 %12, i32 8)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %14, %15
  %17 = call i64 @roundup(i64 %16, i32 8)
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %22 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %21, i32 0, i32 1
  store %struct.sw_flow_key_range* %22, %struct.sw_flow_key_range** %9, align 8
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.sw_flow_match*, %struct.sw_flow_match** %5, align 8
  %25 = getelementptr inbounds %struct.sw_flow_match, %struct.sw_flow_match* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.sw_flow_key_range* %27, %struct.sw_flow_key_range** %9, align 8
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %30 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %33 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %39 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %42 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %63

43:                                               ; preds = %28
  %44 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %45 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %52 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %55 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.sw_flow_key_range*, %struct.sw_flow_key_range** %9, align 8
  %62 = getelementptr inbounds %struct.sw_flow_key_range, %struct.sw_flow_key_range* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %36, %59, %53
  ret void
}

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
