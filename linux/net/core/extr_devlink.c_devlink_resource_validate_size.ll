; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_validate_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_validate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Size larger than maximum\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Size smaller than minimum\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Wrong granularity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_resource*, i64, %struct.netlink_ext_ack*)* @devlink_resource_validate_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_resource_validate_size(%struct.devlink_resource* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.devlink_resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.devlink_resource* %0, %struct.devlink_resource** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.devlink_resource*, %struct.devlink_resource** %4, align 8
  %11 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %9, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %17 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.devlink_resource*, %struct.devlink_resource** %4, align 8
  %23 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %29 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.devlink_resource*, %struct.devlink_resource** %4, align 8
  %35 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @div64_u64_rem(i64 %33, i32 %37, i64* %7)
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %43 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @div64_u64_rem(i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
