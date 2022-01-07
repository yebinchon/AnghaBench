; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissector_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_dissector = type { i64* }
%struct.flow_dissector_key = type { i64, i64 }

@USHRT_MAX = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i64 0, align 8
@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_flow_dissector_init(%struct.flow_dissector* %0, %struct.flow_dissector_key* %1, i32 %2) #0 {
  %4 = alloca %struct.flow_dissector*, align 8
  %5 = alloca %struct.flow_dissector_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.flow_dissector* %0, %struct.flow_dissector** %4, align 8
  store %struct.flow_dissector_key* %1, %struct.flow_dissector_key** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.flow_dissector*, %struct.flow_dissector** %4, align 8
  %9 = call i32 @memset(%struct.flow_dissector* %8, i32 0, i32 8)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = load %struct.flow_dissector_key*, %struct.flow_dissector_key** %5, align 8
  %16 = getelementptr inbounds %struct.flow_dissector_key, %struct.flow_dissector_key* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USHRT_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.flow_dissector*, %struct.flow_dissector** %4, align 8
  %23 = load %struct.flow_dissector_key*, %struct.flow_dissector_key** %5, align 8
  %24 = getelementptr inbounds %struct.flow_dissector_key, %struct.flow_dissector_key* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dissector_uses_key(%struct.flow_dissector* %22, i64 %25)
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.flow_dissector*, %struct.flow_dissector** %4, align 8
  %29 = load %struct.flow_dissector_key*, %struct.flow_dissector_key** %5, align 8
  %30 = getelementptr inbounds %struct.flow_dissector_key, %struct.flow_dissector_key* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dissector_set_key(%struct.flow_dissector* %28, i64 %31)
  %33 = load %struct.flow_dissector_key*, %struct.flow_dissector_key** %5, align 8
  %34 = getelementptr inbounds %struct.flow_dissector_key, %struct.flow_dissector_key* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.flow_dissector*, %struct.flow_dissector** %4, align 8
  %37 = getelementptr inbounds %struct.flow_dissector, %struct.flow_dissector* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.flow_dissector_key*, %struct.flow_dissector_key** %5, align 8
  %40 = getelementptr inbounds %struct.flow_dissector_key, %struct.flow_dissector_key* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 %35, i64* %42, align 8
  br label %43

43:                                               ; preds = %14
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load %struct.flow_dissector_key*, %struct.flow_dissector_key** %5, align 8
  %47 = getelementptr inbounds %struct.flow_dissector_key, %struct.flow_dissector_key* %46, i32 1
  store %struct.flow_dissector_key* %47, %struct.flow_dissector_key** %5, align 8
  br label %10

48:                                               ; preds = %10
  %49 = load %struct.flow_dissector*, %struct.flow_dissector** %4, align 8
  %50 = load i64, i64* @FLOW_DISSECTOR_KEY_CONTROL, align 8
  %51 = call i32 @dissector_uses_key(%struct.flow_dissector* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.flow_dissector*, %struct.flow_dissector** %4, align 8
  %57 = load i64, i64* @FLOW_DISSECTOR_KEY_BASIC, align 8
  %58 = call i32 @dissector_uses_key(%struct.flow_dissector* %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  ret void
}

declare dso_local i32 @memset(%struct.flow_dissector*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dissector_uses_key(%struct.flow_dissector*, i64) #1

declare dso_local i32 @dissector_set_key(%struct.flow_dissector*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
