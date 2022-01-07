; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc_udp.c_udp_compress.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc_udp.c_udp_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.udphdr = type { i32, i32, i32 }

@LOWPAN_NHC_UDP_4BIT_MASK = common dso_local global i32 0, align 4
@LOWPAN_NHC_UDP_4BIT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"UDP header: both ports compression to 4 bits\0A\00", align 1
@LOWPAN_NHC_UDP_CS_P_11 = common dso_local global i32 0, align 4
@LOWPAN_NHC_UDP_8BIT_MASK = common dso_local global i32 0, align 4
@LOWPAN_NHC_UDP_8BIT_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"UDP header: remove 8 bits of dest\0A\00", align 1
@LOWPAN_NHC_UDP_CS_P_01 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"UDP header: remove 8 bits of source\0A\00", align 1
@LOWPAN_NHC_UDP_CS_P_10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"UDP header: can't compress\0A\00", align 1
@LOWPAN_NHC_UDP_CS_P_00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32**)* @udp_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_compress(%struct.sk_buff* %0, i32** %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.udphdr*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32** %1, i32*** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %7)
  store %struct.udphdr* %8, %struct.udphdr** %5, align 8
  %9 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %10 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  %13 = load i32, i32* @LOWPAN_NHC_UDP_4BIT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @LOWPAN_NHC_UDP_4BIT_PORT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %19 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  %22 = load i32, i32* @LOWPAN_NHC_UDP_4BIT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @LOWPAN_NHC_UDP_4BIT_PORT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %17
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @LOWPAN_NHC_UDP_CS_P_11, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32**, i32*** %4, align 8
  %30 = call i32 @lowpan_push_hc_data(i32** %29, i32* %6, i32 4)
  %31 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %32 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = load i32, i32* @LOWPAN_NHC_UDP_4BIT_PORT, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %38 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  %41 = load i32, i32* @LOWPAN_NHC_UDP_4BIT_PORT, align 4
  %42 = sub nsw i32 %40, %41
  %43 = shl i32 %42, 4
  %44 = add nsw i32 %36, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32**, i32*** %4, align 8
  %46 = call i32 @lowpan_push_hc_data(i32** %45, i32* %6, i32 4)
  br label %114

47:                                               ; preds = %17, %2
  %48 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %49 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  %52 = load i32, i32* @LOWPAN_NHC_UDP_8BIT_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @LOWPAN_NHC_UDP_8BIT_PORT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %47
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @LOWPAN_NHC_UDP_CS_P_01, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32**, i32*** %4, align 8
  %60 = call i32 @lowpan_push_hc_data(i32** %59, i32* %6, i32 4)
  %61 = load i32**, i32*** %4, align 8
  %62 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %63 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %62, i32 0, i32 0
  %64 = call i32 @lowpan_push_hc_data(i32** %61, i32* %63, i32 4)
  %65 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %66 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = load i32, i32* @LOWPAN_NHC_UDP_8BIT_PORT, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %6, align 4
  %71 = load i32**, i32*** %4, align 8
  %72 = call i32 @lowpan_push_hc_data(i32** %71, i32* %6, i32 4)
  br label %113

73:                                               ; preds = %47
  %74 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %75 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohs(i32 %76)
  %78 = load i32, i32* @LOWPAN_NHC_UDP_8BIT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @LOWPAN_NHC_UDP_8BIT_PORT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %73
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @LOWPAN_NHC_UDP_CS_P_10, align 4
  store i32 %84, i32* %6, align 4
  %85 = load i32**, i32*** %4, align 8
  %86 = call i32 @lowpan_push_hc_data(i32** %85, i32* %6, i32 4)
  %87 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %88 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohs(i32 %89)
  %91 = load i32, i32* @LOWPAN_NHC_UDP_8BIT_PORT, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %6, align 4
  %93 = load i32**, i32*** %4, align 8
  %94 = call i32 @lowpan_push_hc_data(i32** %93, i32* %6, i32 4)
  %95 = load i32**, i32*** %4, align 8
  %96 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %97 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %96, i32 0, i32 1
  %98 = call i32 @lowpan_push_hc_data(i32** %95, i32* %97, i32 4)
  br label %112

99:                                               ; preds = %73
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @LOWPAN_NHC_UDP_CS_P_00, align 4
  store i32 %101, i32* %6, align 4
  %102 = load i32**, i32*** %4, align 8
  %103 = call i32 @lowpan_push_hc_data(i32** %102, i32* %6, i32 4)
  %104 = load i32**, i32*** %4, align 8
  %105 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %106 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %105, i32 0, i32 0
  %107 = call i32 @lowpan_push_hc_data(i32** %104, i32* %106, i32 4)
  %108 = load i32**, i32*** %4, align 8
  %109 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %110 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %109, i32 0, i32 1
  %111 = call i32 @lowpan_push_hc_data(i32** %108, i32* %110, i32 4)
  br label %112

112:                                              ; preds = %99, %82
  br label %113

113:                                              ; preds = %112, %56
  br label %114

114:                                              ; preds = %113, %26
  %115 = load i32**, i32*** %4, align 8
  %116 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %117 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %116, i32 0, i32 2
  %118 = call i32 @lowpan_push_hc_data(i32** %115, i32* %117, i32 4)
  ret i32 0
}

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @lowpan_push_hc_data(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
