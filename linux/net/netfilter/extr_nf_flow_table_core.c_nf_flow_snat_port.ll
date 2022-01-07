; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_snat_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_snat_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.flow_ports = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_flow_snat_port(%struct.flow_offload* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_offload*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.flow_ports*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.flow_offload* %0, %struct.flow_offload** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %17, 16
  %19 = trunc i64 %18 to i32
  %20 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = call i64 @skb_try_make_writable(%struct.sk_buff* %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %5
  store i32 -1, i32* %6, align 4
  br label %76

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i64 @skb_network_header(%struct.sk_buff* %32)
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to %struct.flow_ports*
  store %struct.flow_ports* %38, %struct.flow_ports** %12, align 8
  %39 = load i32, i32* %11, align 4
  switch i32 %39, label %68 [
    i32 129, label %40
    i32 128, label %54
  ]

40:                                               ; preds = %31
  %41 = load %struct.flow_ports*, %struct.flow_ports** %12, align 8
  %42 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %13, align 8
  %44 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %45 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 128
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load %struct.flow_ports*, %struct.flow_ports** %12, align 8
  %53 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %69

54:                                               ; preds = %31
  %55 = load %struct.flow_ports*, %struct.flow_ports** %12, align 8
  %56 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %13, align 8
  %58 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %59 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 129
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load %struct.flow_ports*, %struct.flow_ports** %12, align 8
  %67 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %69

68:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %76

69:                                               ; preds = %54, %40
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @nf_flow_nat_port(%struct.sk_buff* %70, i32 %71, i32 %72, i8* %73, i8* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %69, %68, %30
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @nf_flow_nat_port(%struct.sk_buff*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
