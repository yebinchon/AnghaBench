; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gvi.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gvi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_gvi_pkt = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { %struct.ncsi_channel_version }
%struct.ncsi_channel_version = type { i8*, i32*, i8*, i32, i32, i8* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_gvi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_gvi(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_gvi_pkt*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_channel_version*, align 8
  %8 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %10 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %9, i32 0, i32 1
  %11 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %10, align 8
  store %struct.ncsi_dev_priv* %11, %struct.ncsi_dev_priv** %5, align 8
  %12 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %13 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @skb_network_header(i32 %14)
  %16 = inttoptr i64 %15 to %struct.ncsi_rsp_gvi_pkt*
  store %struct.ncsi_rsp_gvi_pkt* %16, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %17 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %18 = load %struct.ncsi_rsp_gvi_pkt*, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %19 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, %struct.ncsi_rsp_gvi_pkt* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %17, i32 %22, i32* null, %struct.ncsi_channel** %6)
  %24 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %25 = icmp ne %struct.ncsi_channel* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %1
  %30 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %31 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %30, i32 0, i32 0
  store %struct.ncsi_channel_version* %31, %struct.ncsi_channel_version** %7, align 8
  %32 = load %struct.ncsi_rsp_gvi_pkt*, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %33 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, %struct.ncsi_rsp_gvi_pkt* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @ntohl(i32 %34)
  %36 = load %struct.ncsi_channel_version*, %struct.ncsi_channel_version** %7, align 8
  %37 = getelementptr inbounds %struct.ncsi_channel_version, %struct.ncsi_channel_version* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ncsi_rsp_gvi_pkt*, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %39 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, %struct.ncsi_rsp_gvi_pkt* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ncsi_channel_version*, %struct.ncsi_channel_version** %7, align 8
  %42 = getelementptr inbounds %struct.ncsi_channel_version, %struct.ncsi_channel_version* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ncsi_channel_version*, %struct.ncsi_channel_version** %7, align 8
  %44 = getelementptr inbounds %struct.ncsi_channel_version, %struct.ncsi_channel_version* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ncsi_rsp_gvi_pkt*, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %47 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, %struct.ncsi_rsp_gvi_pkt* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %45, i32 %48, i32 12)
  %50 = load %struct.ncsi_rsp_gvi_pkt*, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %51 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, %struct.ncsi_rsp_gvi_pkt* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ntohl(i32 %52)
  %54 = load %struct.ncsi_channel_version*, %struct.ncsi_channel_version** %7, align 8
  %55 = getelementptr inbounds %struct.ncsi_channel_version, %struct.ncsi_channel_version* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %78, %29
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ncsi_channel_version*, %struct.ncsi_channel_version** %7, align 8
  %59 = getelementptr inbounds %struct.ncsi_channel_version, %struct.ncsi_channel_version* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.ncsi_rsp_gvi_pkt*, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %65 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, %struct.ncsi_rsp_gvi_pkt* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohs(i32 %70)
  %72 = load %struct.ncsi_channel_version*, %struct.ncsi_channel_version** %7, align 8
  %73 = getelementptr inbounds %struct.ncsi_channel_version, %struct.ncsi_channel_version* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load %struct.ncsi_rsp_gvi_pkt*, %struct.ncsi_rsp_gvi_pkt** %4, align 8
  %83 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, %struct.ncsi_rsp_gvi_pkt* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @ntohl(i32 %84)
  %86 = load %struct.ncsi_channel_version*, %struct.ncsi_channel_version** %7, align 8
  %87 = getelementptr inbounds %struct.ncsi_channel_version, %struct.ncsi_channel_version* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %81, %26
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
