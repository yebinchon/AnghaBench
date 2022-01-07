; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_flow_get_ports.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_flow_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__skb_flow_get_ports(%struct.sk_buff* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @proto_ports_offset(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i32 @skb_headlen(%struct.sk_buff* %23)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %12, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32* @__skb_header_pointer(%struct.sk_buff* %29, i32 %32, i32 4, i8* %33, i32 %34, i32* %14)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %43

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %25
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @proto_ports_offset(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32* @__skb_header_pointer(%struct.sk_buff*, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
