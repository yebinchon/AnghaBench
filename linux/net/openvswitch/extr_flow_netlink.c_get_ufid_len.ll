; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_get_ufid_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_get_ufid_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@MAX_UFID_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"ufid size %u bytes exceeds the range (1, %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nlattr*, i32)* @get_ufid_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ufid_len(%struct.nlattr* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %8 = icmp ne %struct.nlattr* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %12 = call i64 @nla_len(%struct.nlattr* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MAX_UFID_LENGTH, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %10
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %22 = call i64 @nla_len(%struct.nlattr* %21)
  %23 = load i64, i64* @MAX_UFID_LENGTH, align 8
  %24 = call i32 @OVS_NLERR(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  store i64 0, i64* %3, align 8
  br label %27

25:                                               ; preds = %15
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %25, %19, %9
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @OVS_NLERR(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
