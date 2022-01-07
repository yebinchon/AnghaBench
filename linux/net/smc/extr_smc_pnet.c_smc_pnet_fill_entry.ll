; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_fill_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_fill_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.smc_user_pnetentry = type { i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMC_PNETID_NAME = common dso_local global i64 0, align 8
@SMC_PNETID_ETHNAME = common dso_local global i64 0, align 8
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@SMC_PNETID_IBNAME = common dso_local global i64 0, align 8
@SMC_PNETID_IBPORT = common dso_local global i64 0, align 8
@SMC_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.smc_user_pnetentry*, %struct.nlattr**)* @smc_pnet_fill_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_pnet_fill_entry(%struct.net* %0, %struct.smc_user_pnetentry* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.smc_user_pnetentry*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.smc_user_pnetentry* %1, %struct.smc_user_pnetentry** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %12 = call i32 @memset(%struct.smc_user_pnetentry* %11, i32 0, i32 24)
  %13 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %14 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %13, i32 0, i32 5
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %19 = load i64, i64* @SMC_PNETID_NAME, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %137

24:                                               ; preds = %3
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @SMC_PNETID_NAME, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i64 @nla_data(%struct.nlattr* %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %33 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @smc_pnetid_valid(i8* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %137

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = load i64, i64* @SMC_PNETID_ETHNAME, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %38
  %47 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %48 = load i64, i64* @SMC_PNETID_ETHNAME, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i64 @nla_data(%struct.nlattr* %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %8, align 8
  %53 = load %struct.net*, %struct.net** %5, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @dev_get_by_name(%struct.net* %53, i8* %54)
  %56 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %57 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %59 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %46
  br label %137

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.net*, %struct.net** %5, align 8
  %66 = icmp ne %struct.net* %65, @init_net
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %139

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %72 = load i64, i64* @SMC_PNETID_IBNAME, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %76, label %136

76:                                               ; preds = %68
  %77 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %78 = load i64, i64* @SMC_PNETID_IBNAME, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i64 @nla_data(%struct.nlattr* %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i8* @strim(i8* %83)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @smc_pnet_find_ib(i8* %85)
  %87 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %88 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @smc_pnet_find_smcd(i8* %89)
  %91 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %92 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %94 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %76
  %98 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %99 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %137

103:                                              ; preds = %97, %76
  %104 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %105 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %103
  %109 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %110 = load i64, i64* @SMC_PNETID_IBPORT, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %137

115:                                              ; preds = %108
  %116 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %117 = load i64, i64* @SMC_PNETID_IBPORT, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = call i32 @nla_get_u8(%struct.nlattr* %119)
  %121 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %122 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %124 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %133, label %127

127:                                              ; preds = %115
  %128 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %6, align 8
  %129 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SMC_MAX_PORTS, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127, %115
  br label %137

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %103
  br label %136

136:                                              ; preds = %135, %68
  store i32 0, i32* %4, align 4
  br label %139

137:                                              ; preds = %133, %114, %102, %62, %37, %23
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %136, %67
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @memset(%struct.smc_user_pnetentry*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @smc_pnetid_valid(i8*, i32) #1

declare dso_local i32 @dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i8* @strim(i8*) #1

declare dso_local i32 @smc_pnet_find_ib(i8*) #1

declare dso_local i32 @smc_pnet_find_smcd(i8*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
