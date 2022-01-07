; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entries_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entries_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32, i32 }
%struct.devlink_dpipe_table = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, %struct.devlink_dpipe_dump_ctx*)* }
%struct.devlink_dpipe_dump_ctx = type { i32, i32*, %struct.genl_info* }
%struct.nlmsghdr = type { i32 }

@NLMSG_DONE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i32, i32, %struct.devlink_dpipe_table*)* @devlink_dpipe_entries_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_entries_fill(%struct.genl_info* %0, i32 %1, i32 %2, %struct.devlink_dpipe_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.devlink_dpipe_table*, align 8
  %10 = alloca %struct.devlink_dpipe_dump_ctx, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.devlink_dpipe_table* %3, %struct.devlink_dpipe_table** %9, align 8
  %13 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %10, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %17 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %10, i32 0, i32 2
  store %struct.genl_info* %16, %struct.genl_info** %17, align 8
  %18 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %9, align 8
  %19 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, %struct.devlink_dpipe_dump_ctx*)*, i32 (i32, i32, %struct.devlink_dpipe_dump_ctx*)** %21, align 8
  %23 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %9, align 8
  %24 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %9, align 8
  %27 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %22(i32 %25, i32 %28, %struct.devlink_dpipe_dump_ctx* %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %65

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %59, %34
  %36 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %10, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NLMSG_DONE, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NLM_F_MULTI, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.nlmsghdr* @nlmsg_put(i32* %37, i32 %40, i32 %43, i32 %44, i32 0, i32 %47)
  store %struct.nlmsghdr* %48, %struct.nlmsghdr** %11, align 8
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %50 = icmp ne %struct.nlmsghdr* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %10, i32 0, i32 1
  %53 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %54 = call i32 @devlink_dpipe_send_and_alloc_skb(i32** %52, %struct.genl_info* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %51
  br label %35

60:                                               ; preds = %35
  %61 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %10, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %64 = call i32 @genlmsg_reply(i32* %62, %struct.genl_info* %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %57, %32
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @devlink_dpipe_send_and_alloc_skb(i32**, %struct.genl_info*) #1

declare dso_local i32 @genlmsg_reply(i32*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
