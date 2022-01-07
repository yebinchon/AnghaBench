; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_set_nla.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_set_nla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.smc_user_pnetentry = type { i8*, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_10__ = type { i8* }

@SMC_PNETID_NAME = common dso_local global i32 0, align 4
@SMC_PNETID_ETHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@SMC_PNETID_IBNAME = common dso_local global i32 0, align 4
@SMC_PNETID_IBPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.smc_user_pnetentry*)* @smc_pnet_set_nla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_pnet_set_nla(%struct.sk_buff* %0, %struct.smc_user_pnetentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.smc_user_pnetentry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.smc_user_pnetentry* %1, %struct.smc_user_pnetentry** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @SMC_PNETID_NAME, align 4
  %8 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %9 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @nla_put_string(%struct.sk_buff* %6, i32 %7, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %103

14:                                               ; preds = %2
  %15 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %16 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %15, i32 0, i32 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @SMC_PNETID_ETHNAME, align 4
  %22 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %23 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %22, i32 0, i32 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @nla_put_string(%struct.sk_buff* %20, i32 %21, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %103

30:                                               ; preds = %19
  br label %38

31:                                               ; preds = %14
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @SMC_PNETID_ETHNAME, align 4
  %34 = call i64 @nla_put_string(%struct.sk_buff* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %103

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %40 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @SMC_PNETID_IBNAME, align 4
  %46 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %47 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i8* @dev_name(i32* %53)
  %55 = call i64 @nla_put_string(%struct.sk_buff* %44, i32 %45, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %43
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* @SMC_PNETID_IBPORT, align 4
  %60 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %61 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @nla_put_u8(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %43
  store i32 -1, i32* %3, align 4
  br label %103

66:                                               ; preds = %57
  br label %102

67:                                               ; preds = %38
  %68 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %69 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @SMC_PNETID_IBNAME, align 4
  %75 = load %struct.smc_user_pnetentry*, %struct.smc_user_pnetentry** %5, align 8
  %76 = getelementptr inbounds %struct.smc_user_pnetentry, %struct.smc_user_pnetentry* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i8* @dev_name(i32* %78)
  %80 = call i64 @nla_put_string(%struct.sk_buff* %73, i32 %74, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %72
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load i32, i32* @SMC_PNETID_IBPORT, align 4
  %85 = call i64 @nla_put_u8(%struct.sk_buff* %83, i32 %84, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %72
  store i32 -1, i32* %3, align 4
  br label %103

88:                                               ; preds = %82
  br label %101

89:                                               ; preds = %67
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @SMC_PNETID_IBNAME, align 4
  %92 = call i64 @nla_put_string(%struct.sk_buff* %90, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i32, i32* @SMC_PNETID_IBPORT, align 4
  %97 = call i64 @nla_put_u8(%struct.sk_buff* %95, i32 %96, i32 255)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %89
  store i32 -1, i32* %3, align 4
  br label %103

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %66
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %99, %87, %65, %36, %29, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
