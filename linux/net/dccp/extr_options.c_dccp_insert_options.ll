; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_insert_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_sock = type { i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@DCCP_PKT_DATA = common dso_local global i64 0, align 8
@DCCP_PKT_REQUEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_insert_options(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %7)
  store %struct.dccp_sock* %8, %struct.dccp_sock** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %13 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i64 @dccp_insert_option_ndp(%struct.sock* %17, %struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %91

22:                                               ; preds = %16, %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DCCP_PKT_DATA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i64 @dccp_feat_insert_opts(%struct.dccp_sock* %30, i32* null, %struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %91

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i64 @dccp_insert_option_timestamp(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %91

47:                                               ; preds = %42
  br label %59

48:                                               ; preds = %35
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i64 @dccp_ackvec_pending(%struct.sock* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i64 @dccp_insert_option_ackvec(%struct.sock* %53, %struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %91

58:                                               ; preds = %52, %48
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %22
  %61 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %62 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %67 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i64 @ccid_hc_rx_insert_options(i32 %68, %struct.sock* %69, %struct.sk_buff* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %91

74:                                               ; preds = %65
  %75 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %76 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %60
  %78 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %79 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i64 @dccp_insert_option_timestamp_echo(%struct.dccp_sock* %83, i32* null, %struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %91

88:                                               ; preds = %82, %77
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @dccp_insert_option_padding(%struct.sk_buff* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %87, %73, %57, %46, %34, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @dccp_insert_option_ndp(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_feat_insert_opts(%struct.dccp_sock*, i32*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_insert_option_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @dccp_ackvec_pending(%struct.sock*) #1

declare dso_local i64 @dccp_insert_option_ackvec(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @ccid_hc_rx_insert_options(i32, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_insert_option_timestamp_echo(%struct.dccp_sock*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @dccp_insert_option_padding(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
