; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-reset.c_wimax_gnl_doit_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-reset.c_wimax_gnl_doit_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32** }
%struct.wimax_dev = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(skb %p info %p)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WIMAX_GNL_RESET_IFIDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"WIMAX_GNL_OP_RFKILL: can't find IFIDX attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"(skb %p info %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_gnl_doit_reset(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wimax_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %10 = call i32 @d_fnstart(i32 3, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %8, %struct.genl_info* %9)
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load i64, i64* @WIMAX_GNL_RESET_IFIDX, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* @WIMAX_GNL_RESET_IFIDX, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @nla_get_u32(i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.wimax_dev* @wimax_dev_get_by_genl_info(%struct.genl_info* %30, i32 %31)
  store %struct.wimax_dev* %32, %struct.wimax_dev** %7, align 8
  %33 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %34 = icmp eq %struct.wimax_dev* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %43

36:                                               ; preds = %22
  %37 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %38 = call i32 @wimax_reset(%struct.wimax_dev* %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %40 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_put(i32 %41)
  br label %43

43:                                               ; preds = %36, %35, %20
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @d_fnend(i32 3, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %44, %struct.genl_info* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @d_fnstart(i32, i32*, i8*, %struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nla_get_u32(i32*) #1

declare dso_local %struct.wimax_dev* @wimax_dev_get_by_genl_info(%struct.genl_info*, i32) #1

declare dso_local i32 @wimax_reset(%struct.wimax_dev*) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @d_fnend(i32, i32*, i8*, %struct.sk_buff*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
