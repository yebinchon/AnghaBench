; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_fill_vif.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_fill_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { %struct.vif_device* }
%struct.vif_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@IPMRA_VIF = common dso_local global i32 0, align 4
@IPMRA_VIFA_IFINDEX = common dso_local global i32 0, align 4
@IPMRA_VIFA_VIF_ID = common dso_local global i32 0, align 4
@IPMRA_VIFA_FLAGS = common dso_local global i32 0, align 4
@IPMRA_VIFA_BYTES_IN = common dso_local global i32 0, align 4
@IPMRA_VIFA_PAD = common dso_local global i32 0, align 4
@IPMRA_VIFA_BYTES_OUT = common dso_local global i32 0, align 4
@IPMRA_VIFA_PACKETS_IN = common dso_local global i32 0, align 4
@IPMRA_VIFA_PACKETS_OUT = common dso_local global i32 0, align 4
@IPMRA_VIFA_LOCAL_ADDR = common dso_local global i32 0, align 4
@IPMRA_VIFA_REMOTE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, i64, %struct.sk_buff*)* @ipmr_fill_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_fill_vif(%struct.mr_table* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mr_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.vif_device*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @VIF_EXISTS(%struct.mr_table* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %111

15:                                               ; preds = %3
  %16 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %17 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %16, i32 0, i32 0
  %18 = load %struct.vif_device*, %struct.vif_device** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %18, i64 %19
  store %struct.vif_device* %20, %struct.vif_device** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = load i32, i32* @IPMRA_VIF, align 4
  %23 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %21, i32 %22)
  store %struct.nlattr* %23, %struct.nlattr** %8, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %111

27:                                               ; preds = %15
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* @IPMRA_VIFA_IFINDEX, align 4
  %30 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %31 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %30, i32 0, i32 7
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %28, i32 %29, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %103, label %37

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* @IPMRA_VIFA_VIF_ID, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %103, label %43

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load i32, i32* @IPMRA_VIFA_FLAGS, align 4
  %46 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %47 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @nla_put_u16(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %103, label %51

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* @IPMRA_VIFA_BYTES_IN, align 4
  %54 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %55 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IPMRA_VIFA_PAD, align 4
  %58 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %52, i32 %53, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %51
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load i32, i32* @IPMRA_VIFA_BYTES_OUT, align 4
  %63 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %64 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IPMRA_VIFA_PAD, align 4
  %67 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %61, i32 %62, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %60
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load i32, i32* @IPMRA_VIFA_PACKETS_IN, align 4
  %72 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %73 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IPMRA_VIFA_PAD, align 4
  %76 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %70, i32 %71, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = load i32, i32* @IPMRA_VIFA_PACKETS_OUT, align 4
  %81 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %82 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IPMRA_VIFA_PAD, align 4
  %85 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %79, i32 %80, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %78
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load i32, i32* @IPMRA_VIFA_LOCAL_ADDR, align 4
  %90 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %91 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @nla_put_be32(%struct.sk_buff* %88, i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %87
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = load i32, i32* @IPMRA_VIFA_REMOTE_ADDR, align 4
  %98 = load %struct.vif_device*, %struct.vif_device** %9, align 8
  %99 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @nla_put_be32(%struct.sk_buff* %96, i32 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95, %87, %78, %69, %60, %51, %43, %37, %27
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %106 = call i32 @nla_nest_cancel(%struct.sk_buff* %104, %struct.nlattr* %105)
  store i32 0, i32* %4, align 4
  br label %111

107:                                              ; preds = %95
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %110 = call i32 @nla_nest_end(%struct.sk_buff* %108, %struct.nlattr* %109)
  store i32 1, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %103, %26, %14
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @VIF_EXISTS(%struct.mr_table*, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
