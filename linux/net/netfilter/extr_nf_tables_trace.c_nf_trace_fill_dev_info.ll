; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nf_trace_fill_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nf_trace_fill_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32 }

@NFTA_TRACE_IIF = common dso_local global i32 0, align 4
@NFTA_TRACE_IIFTYPE = common dso_local global i32 0, align 4
@NFTA_TRACE_OIF = common dso_local global i32 0, align 4
@NFTA_TRACE_OIFTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.net_device*)* @nf_trace_fill_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_trace_fill_dev_info(%struct.sk_buff* %0, %struct.net_device* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %6, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @NFTA_TRACE_IIF, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @htonl(i32 %15)
  %17 = call i64 @nla_put_be32(%struct.sk_buff* %11, i32 %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %56

20:                                               ; preds = %10
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @NFTA_TRACE_IIFTYPE, align 4
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @htons(i32 %25)
  %27 = call i64 @nla_put_be16(%struct.sk_buff* %21, i32 %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %56

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @NFTA_TRACE_OIF, align 4
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @htonl(i32 %39)
  %41 = call i64 @nla_put_be32(%struct.sk_buff* %35, i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %56

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* @NFTA_TRACE_OIFTYPE, align 4
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = call i64 @nla_put_be16(%struct.sk_buff* %45, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %56

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %31
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %53, %43, %29, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
