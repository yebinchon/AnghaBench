; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_ctrl_getfamily.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_ctrl_getfamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i64* }
%struct.genl_family = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_NAME = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@CTRL_CMD_NEWFAMILY = common dso_local global i32 0, align 4
@NETLINK_GENERIC = common dso_local global i32 0, align 4
@PF_NETLINK = common dso_local global i32 0, align 4
@cb_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ctrl_getfamily to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_getfamily(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.genl_family*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.genl_family* null, %struct.genl_family** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @CTRL_ATTR_FAMILY_ID, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @CTRL_ATTR_FAMILY_ID, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @nla_get_u16(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.genl_family* @genl_family_find_byid(i32 %28)
  store %struct.genl_family* %29, %struct.genl_family** %7, align 8
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @CTRL_ATTR_FAMILY_NAME, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @CTRL_ATTR_FAMILY_NAME, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @nla_data(i64 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call %struct.genl_family* @genl_family_find_byname(i8* %48)
  store %struct.genl_family* %49, %struct.genl_family** %7, align 8
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %40, %32
  %53 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %54 = icmp eq %struct.genl_family* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %90

57:                                               ; preds = %52
  %58 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %59 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = call i32 @genl_info_net(%struct.genl_info* %63)
  %65 = call i32 @net_eq(i32 %64, i32* @init_net)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %90

70:                                               ; preds = %62, %57
  %71 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CTRL_CMD_NEWFAMILY, align 4
  %79 = call %struct.sk_buff* @ctrl_build_family_msg(%struct.genl_family* %71, i32 %74, i32 %77, i32 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %6, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i64 @IS_ERR(%struct.sk_buff* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i32 @PTR_ERR(%struct.sk_buff* %84)
  store i32 %85, i32* %3, align 4
  br label %90

86:                                               ; preds = %70
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %89 = call i32 @genlmsg_reply(%struct.sk_buff* %87, %struct.genl_info* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %83, %67, %55
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local %struct.genl_family* @genl_family_find_byid(i32) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local %struct.genl_family* @genl_family_find_byname(i8*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local %struct.sk_buff* @ctrl_build_family_msg(%struct.genl_family*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
