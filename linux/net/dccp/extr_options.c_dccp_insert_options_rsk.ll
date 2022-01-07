; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_options_rsk.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_options_rsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_request_sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_insert_options_rsk(%struct.dccp_request_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dccp_request_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.dccp_request_sock* %0, %struct.dccp_request_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %7 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i64 @dccp_feat_insert_opts(i32* null, %struct.dccp_request_sock* %9, %struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @dccp_insert_option_timestamp(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %33

19:                                               ; preds = %14
  %20 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %4, align 8
  %21 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @dccp_insert_option_timestamp_echo(i32* null, %struct.dccp_request_sock* %25, %struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %33

30:                                               ; preds = %24, %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @dccp_insert_option_padding(%struct.sk_buff* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %29, %18, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_feat_insert_opts(i32*, %struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_insert_option_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @dccp_insert_option_timestamp_echo(i32*, %struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_insert_option_padding(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
