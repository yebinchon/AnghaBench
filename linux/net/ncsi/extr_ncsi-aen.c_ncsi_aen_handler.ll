; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-aen.c_ncsi_aen_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-aen.c_ncsi_aen_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_aen_handler = type { i64, i32 (%struct.ncsi_dev_priv*, %struct.ncsi_aen_pkt_hdr*)*, i32 }
%struct.ncsi_dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ncsi_aen_pkt_hdr = type { i64 }
%struct.sk_buff = type { i32 }

@ncsi_aen_handlers = common dso_local global %struct.ncsi_aen_handler* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Invalid AEN (0x%x) received\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"NCSI: 'bad' packet ignored for AEN type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"NCSI: Handler for AEN type 0x%x returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncsi_aen_handler(%struct.ncsi_dev_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ncsi_aen_pkt_hdr*, align 8
  %7 = alloca %struct.ncsi_aen_handler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ncsi_dev_priv* %0, %struct.ncsi_dev_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ncsi_aen_handler* null, %struct.ncsi_aen_handler** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i64 @skb_network_header(%struct.sk_buff* %10)
  %12 = inttoptr i64 %11 to %struct.ncsi_aen_pkt_hdr*
  store %struct.ncsi_aen_pkt_hdr* %12, %struct.ncsi_aen_pkt_hdr** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %35, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ncsi_aen_handler*, %struct.ncsi_aen_handler** @ncsi_aen_handlers, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.ncsi_aen_handler* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.ncsi_aen_handler*, %struct.ncsi_aen_handler** @ncsi_aen_handlers, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ncsi_aen_handler, %struct.ncsi_aen_handler* %19, i64 %21
  %23 = getelementptr inbounds %struct.ncsi_aen_handler, %struct.ncsi_aen_handler* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.ncsi_aen_pkt_hdr, %struct.ncsi_aen_pkt_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.ncsi_aen_handler*, %struct.ncsi_aen_handler** @ncsi_aen_handlers, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ncsi_aen_handler, %struct.ncsi_aen_handler* %30, i64 %32
  store %struct.ncsi_aen_handler* %33, %struct.ncsi_aen_handler** %7, align 8
  br label %38

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %13

38:                                               ; preds = %29, %13
  %39 = load %struct.ncsi_aen_handler*, %struct.ncsi_aen_handler** %7, align 8
  %40 = icmp ne %struct.ncsi_aen_handler* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %6, align 8
  %47 = getelementptr inbounds %struct.ncsi_aen_pkt_hdr, %struct.ncsi_aen_pkt_hdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @netdev_warn(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %93

52:                                               ; preds = %38
  %53 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %6, align 8
  %54 = load %struct.ncsi_aen_handler*, %struct.ncsi_aen_handler** %7, align 8
  %55 = getelementptr inbounds %struct.ncsi_aen_handler, %struct.ncsi_aen_handler* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ncsi_validate_aen_pkt(%struct.ncsi_aen_pkt_hdr* %53, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %62 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %6, align 8
  %66 = getelementptr inbounds %struct.ncsi_aen_pkt_hdr, %struct.ncsi_aen_pkt_hdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @netdev_warn(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  br label %89

69:                                               ; preds = %52
  %70 = load %struct.ncsi_aen_handler*, %struct.ncsi_aen_handler** %7, align 8
  %71 = getelementptr inbounds %struct.ncsi_aen_handler, %struct.ncsi_aen_handler* %70, i32 0, i32 1
  %72 = load i32 (%struct.ncsi_dev_priv*, %struct.ncsi_aen_pkt_hdr*)*, i32 (%struct.ncsi_dev_priv*, %struct.ncsi_aen_pkt_hdr*)** %71, align 8
  %73 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %74 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %6, align 8
  %75 = call i32 %72(%struct.ncsi_dev_priv* %73, %struct.ncsi_aen_pkt_hdr* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %6, align 8
  %84 = getelementptr inbounds %struct.ncsi_aen_pkt_hdr, %struct.ncsi_aen_pkt_hdr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @netdev_err(i32 %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %69
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @consume_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %41
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ncsi_aen_handler*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64) #1

declare dso_local i32 @ncsi_validate_aen_pkt(%struct.ncsi_aen_pkt_hdr*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
