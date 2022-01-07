; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nla_put_nh_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nla_put_nh_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nh_group = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nexthop_grp = type { i64, i32 }
%struct.nlattr = type { i32 }

@NEXTHOP_GRP_TYPE_MPATH = common dso_local global i32 0, align 4
@NHA_GROUP_TYPE = common dso_local global i32 0, align 4
@NHA_GROUP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nh_group*)* @nla_put_nh_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nla_put_nh_group(%struct.sk_buff* %0, %struct.nh_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nh_group*, align 8
  %6 = alloca %struct.nexthop_grp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nh_group* %1, %struct.nh_group** %5, align 8
  %11 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %12 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %17 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @NEXTHOP_GRP_TYPE_MPATH, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @NHA_GROUP_TYPE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @nla_put_u16(%struct.sk_buff* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %76

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @NHA_GROUP, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %30, i32 %31, i64 %32)
  store %struct.nlattr* %33, %struct.nlattr** %8, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %76

37:                                               ; preds = %29
  %38 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %39 = call %struct.nexthop_grp* @nla_data(%struct.nlattr* %38)
  store %struct.nexthop_grp* %39, %struct.nexthop_grp** %6, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %72, %37
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %43 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %48 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nexthop_grp*, %struct.nexthop_grp** %6, align 8
  %58 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %60 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.nexthop_grp*, %struct.nexthop_grp** %6, align 8
  %69 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.nexthop_grp*, %struct.nexthop_grp** %6, align 8
  %71 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %70, i64 1
  store %struct.nexthop_grp* %71, %struct.nexthop_grp** %6, align 8
  br label %72

72:                                               ; preds = %46
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %40

75:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %79

76:                                               ; preds = %36, %28
  %77 = load i32, i32* @EMSGSIZE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i64) #1

declare dso_local %struct.nexthop_grp* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
