; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_gnl_doit_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_gnl_doit_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32** }
%struct.wimax_dev = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(skb %p info %p)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WIMAX_GNL_RFKILL_IFIDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"WIMAX_GNL_OP_RFKILL: can't find IFIDX attribute\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WIMAX_GNL_RFKILL_STATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"WIMAX_GNL_RFKILL: can't find RFKILL_STATE attribute\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"(skb %p info %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_gnl_doit_rfkill(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wimax_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %12 = call i32 @d_fnstart(i32 3, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %10, %struct.genl_info* %11)
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* @WIMAX_GNL_RFKILL_IFIDX, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %69

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @WIMAX_GNL_RFKILL_IFIDX, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @nla_get_u32(i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.wimax_dev* @wimax_dev_get_by_genl_info(%struct.genl_info* %32, i32 %33)
  store %struct.wimax_dev* %34, %struct.wimax_dev** %7, align 8
  %35 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %36 = icmp eq %struct.wimax_dev* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %69

38:                                               ; preds = %24
  %39 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %40 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %39)
  store %struct.device* %40, %struct.device** %8, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  %43 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* @WIMAX_GNL_RFKILL_STATE, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %64

53:                                               ; preds = %38
  %54 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %55 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @WIMAX_GNL_RFKILL_STATE, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @nla_get_u32(i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @wimax_rfkill(%struct.wimax_dev* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %53, %50
  %65 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %66 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_put(i32 %67)
  br label %69

69:                                               ; preds = %64, %37, %22
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @d_fnend(i32 3, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %70, %struct.genl_info* %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @d_fnstart(i32, i32*, i8*, %struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nla_get_u32(i32*) #1

declare dso_local %struct.wimax_dev* @wimax_dev_get_by_genl_info(%struct.genl_info*, i32) #1

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @wimax_rfkill(%struct.wimax_dev*, i32) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @d_fnend(i32, i32*, i8*, %struct.sk_buff*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
