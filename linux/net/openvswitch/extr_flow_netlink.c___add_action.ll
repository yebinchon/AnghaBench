; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___add_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c___add_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32, i32 }
%struct.sw_flow_actions = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlattr* (%struct.sw_flow_actions**, i32, i8*, i32, i32)* @__add_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlattr* @__add_action(%struct.sw_flow_actions** %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.sw_flow_actions**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  store %struct.sw_flow_actions** %0, %struct.sw_flow_actions*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @nla_attr_size(i32 %14)
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.nlattr* @reserve_sfa_size(%struct.sw_flow_actions** %13, i32 %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %12, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %19 = call i64 @IS_ERR(%struct.nlattr* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  store %struct.nlattr* %22, %struct.nlattr** %6, align 8
  br label %51

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %26 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @nla_attr_size(i32 %27)
  %29 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %30 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %35 = call i32 @nla_data(%struct.nlattr* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %23
  %40 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %41 = bitcast %struct.nlattr* %40 to i8*
  %42 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %43 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @nla_padlen(i32 %47)
  %49 = call i32 @memset(i8* %46, i32 0, i32 %48)
  %50 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  store %struct.nlattr* %50, %struct.nlattr** %6, align 8
  br label %51

51:                                               ; preds = %39, %21
  %52 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  ret %struct.nlattr* %52
}

declare dso_local %struct.nlattr* @reserve_sfa_size(%struct.sw_flow_actions**, i32, i32) #1

declare dso_local i32 @nla_attr_size(i32) #1

declare dso_local i64 @IS_ERR(%struct.nlattr*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @nla_padlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
