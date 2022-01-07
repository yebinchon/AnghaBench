; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { %struct.net*, i32, i64, i32 }
%struct.net = type { i32 }
%struct.nh_config = type { i32, i32, i64, i64 }
%struct.netlink_ext_ack = type { i32 }

@NLM_F_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Replace requires nexthop id\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"No unused id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nexthop* (%struct.net*, %struct.nh_config*, %struct.netlink_ext_ack*)* @nexthop_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nexthop* @nexthop_add(%struct.net* %0, %struct.nh_config* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.nexthop*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nh_config*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nexthop*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nh_config* %1, %struct.nh_config** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %11 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NLM_F_REPLACE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %18 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %23 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.nexthop* @ERR_PTR(i32 %25)
  store %struct.nexthop* %26, %struct.nexthop** %4, align 8
  br label %102

27:                                               ; preds = %16, %3
  %28 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %29 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = load %struct.net*, %struct.net** %5, align 8
  %34 = call i64 @nh_find_unused_id(%struct.net* %33)
  %35 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %36 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %38 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %43 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.nexthop* @ERR_PTR(i32 %45)
  store %struct.nexthop* %46, %struct.nexthop** %4, align 8
  br label %102

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %50 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.net*, %struct.net** %5, align 8
  %55 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %56 = call %struct.nexthop* @nexthop_create_group(%struct.net* %54, %struct.nh_config* %55)
  store %struct.nexthop* %56, %struct.nexthop** %8, align 8
  br label %62

57:                                               ; preds = %48
  %58 = load %struct.net*, %struct.net** %5, align 8
  %59 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %61 = call %struct.nexthop* @nexthop_create(%struct.net* %58, %struct.nh_config* %59, %struct.netlink_ext_ack* %60)
  store %struct.nexthop* %61, %struct.nexthop** %8, align 8
  br label %62

62:                                               ; preds = %57, %53
  %63 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %64 = call i64 @IS_ERR(%struct.nexthop* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  store %struct.nexthop* %67, %struct.nexthop** %4, align 8
  br label %102

68:                                               ; preds = %62
  %69 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %70 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %69, i32 0, i32 3
  %71 = call i32 @refcount_set(i32* %70, i32 1)
  %72 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %73 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %76 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %78 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %81 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.net*, %struct.net** %5, align 8
  %83 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %84 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %83, i32 0, i32 0
  store %struct.net* %82, %struct.net** %84, align 8
  %85 = load %struct.net*, %struct.net** %5, align 8
  %86 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %87 = load %struct.nh_config*, %struct.nh_config** %6, align 8
  %88 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %89 = call i32 @insert_nexthop(%struct.net* %85, %struct.nexthop* %86, %struct.nh_config* %87, %struct.netlink_ext_ack* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %68
  %93 = load %struct.net*, %struct.net** %5, align 8
  %94 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %95 = call i32 @__remove_nexthop(%struct.net* %93, %struct.nexthop* %94, i32* null)
  %96 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %97 = call i32 @nexthop_put(%struct.nexthop* %96)
  %98 = load i32, i32* %9, align 4
  %99 = call %struct.nexthop* @ERR_PTR(i32 %98)
  store %struct.nexthop* %99, %struct.nexthop** %8, align 8
  br label %100

100:                                              ; preds = %92, %68
  %101 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  store %struct.nexthop* %101, %struct.nexthop** %4, align 8
  br label %102

102:                                              ; preds = %100, %66, %41, %21
  %103 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  ret %struct.nexthop* %103
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nexthop* @ERR_PTR(i32) #1

declare dso_local i64 @nh_find_unused_id(%struct.net*) #1

declare dso_local %struct.nexthop* @nexthop_create_group(%struct.net*, %struct.nh_config*) #1

declare dso_local %struct.nexthop* @nexthop_create(%struct.net*, %struct.nh_config*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.nexthop*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @insert_nexthop(%struct.net*, %struct.nexthop*, %struct.nh_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @__remove_nexthop(%struct.net*, %struct.nexthop*, i32*) #1

declare dso_local i32 @nexthop_put(%struct.nexthop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
