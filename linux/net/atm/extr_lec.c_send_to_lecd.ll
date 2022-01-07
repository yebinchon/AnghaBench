; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_send_to_lecd.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_send_to_lecd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_priv = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.atmlec_msg = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"about to send %d bytes of data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lec_priv*, i32, i8*, i8*, %struct.sk_buff*)* @send_to_lecd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_to_lecd(%struct.lec_priv* %0, i32 %1, i8* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lec_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.atmlec_msg*, align 8
  store %struct.lec_priv* %0, %struct.lec_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %15 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %16 = icmp ne %struct.lec_priv* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %19 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %5
  store i32 -1, i32* %6, align 4
  br label %121

23:                                               ; preds = %17
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.sk_buff* @alloc_skb(i32 20, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %13, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %121

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  store i32 20, i32* %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.atmlec_msg*
  store %struct.atmlec_msg* %35, %struct.atmlec_msg** %14, align 8
  %36 = load %struct.atmlec_msg*, %struct.atmlec_msg** %14, align 8
  %37 = call i32 @memset(%struct.atmlec_msg* %36, i32 0, i32 20)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.atmlec_msg*, %struct.atmlec_msg** %14, align 8
  %40 = getelementptr inbounds %struct.atmlec_msg, %struct.atmlec_msg* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.atmlec_msg*, %struct.atmlec_msg** %14, align 8
  %48 = getelementptr inbounds %struct.atmlec_msg, %struct.atmlec_msg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %29
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.atmlec_msg*, %struct.atmlec_msg** %14, align 8
  %54 = getelementptr inbounds %struct.atmlec_msg, %struct.atmlec_msg* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @ether_addr_copy(i32 %57, i8* %58)
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.atmlec_msg*, %struct.atmlec_msg** %14, align 8
  %62 = getelementptr inbounds %struct.atmlec_msg, %struct.atmlec_msg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.atmlec_msg*, %struct.atmlec_msg** %14, align 8
  %70 = getelementptr inbounds %struct.atmlec_msg, %struct.atmlec_msg* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @ATM_ESA_LEN, align 4
  %75 = call i32 @memcpy(i32* %72, i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %65
  %77 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %78 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @atm_force_charge(i32 %79, i32 %82)
  %84 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %85 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.sock* @sk_atm(i32 %86)
  store %struct.sock* %87, %struct.sock** %12, align 8
  %88 = load %struct.sock*, %struct.sock** %12, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 1
  %90 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %91 = call i32 @skb_queue_tail(i32* %89, %struct.sk_buff* %90)
  %92 = load %struct.sock*, %struct.sock** %12, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  %94 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %93, align 8
  %95 = load %struct.sock*, %struct.sock** %12, align 8
  %96 = call i32 %94(%struct.sock* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %76
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %105 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @atm_force_charge(i32 %106, i32 %109)
  %111 = load %struct.sock*, %struct.sock** %12, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 1
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = call i32 @skb_queue_tail(i32* %112, %struct.sk_buff* %113)
  %115 = load %struct.sock*, %struct.sock** %12, align 8
  %116 = getelementptr inbounds %struct.sock, %struct.sock* %115, i32 0, i32 0
  %117 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %116, align 8
  %118 = load %struct.sock*, %struct.sock** %12, align 8
  %119 = call i32 %117(%struct.sock* %118)
  br label %120

120:                                              ; preds = %99, %76
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %28, %22
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @memset(%struct.atmlec_msg*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @atm_force_charge(i32, i32) #1

declare dso_local %struct.sock* @sk_atm(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
