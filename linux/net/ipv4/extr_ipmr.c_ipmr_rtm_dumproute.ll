; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_dumproute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_rtm_dumproute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32, i32, i64 }
%struct.fib_dump_filter = type { i64, i64 }
%struct.mr_table = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ipv4: MR table does not exist\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@_ipmr_fill_mroute = common dso_local global i32 0, align 4
@mfc_unres_lock = common dso_local global i32 0, align 4
@ipmr_mr_table_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ipmr_rtm_dumproute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_rtm_dumproute(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.fib_dump_filter, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mr_table*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %9 = bitcast %struct.fib_dump_filter* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %11 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sock_net(i32 %17)
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %23 = call i32 @ip_valid_fib_dump_req(i32 %18, i32 %21, %struct.fib_dump_filter* %6, %struct.netlink_callback* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %2
  %30 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sock_net(i32 %36)
  %38 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.mr_table* @ipmr_get_table(i32 %37, i64 %39)
  store %struct.mr_table* %40, %struct.mr_table** %8, align 8
  %41 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %42 = icmp ne %struct.mr_table* %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %79

51:                                               ; preds = %43
  %52 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %53 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @NL_SET_ERR_MSG(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %79

58:                                               ; preds = %33
  %59 = load %struct.mr_table*, %struct.mr_table** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %62 = load i32, i32* @_ipmr_fill_mroute, align 4
  %63 = call i32 @mr_table_dump(%struct.mr_table* %59, %struct.sk_buff* %60, %struct.netlink_callback* %61, i32 %62, i32* @mfc_unres_lock, %struct.fib_dump_filter* %6)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ %66, %68 ], [ %70, %69 ]
  store i32 %72, i32* %3, align 4
  br label %79

73:                                               ; preds = %29
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %76 = load i32, i32* @ipmr_mr_table_iter, align 4
  %77 = load i32, i32* @_ipmr_fill_mroute, align 4
  %78 = call i32 @mr_rtm_dumproute(%struct.sk_buff* %74, %struct.netlink_callback* %75, i32 %76, i32 %77, i32* @mfc_unres_lock, %struct.fib_dump_filter* %6)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %71, %51, %47, %26
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ip_valid_fib_dump_req(i32, i32, %struct.fib_dump_filter*, %struct.netlink_callback*) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local %struct.mr_table* @ipmr_get_table(i32, i64) #2

declare dso_local i32 @NL_SET_ERR_MSG(i32, i8*) #2

declare dso_local i32 @mr_table_dump(%struct.mr_table*, %struct.sk_buff*, %struct.netlink_callback*, i32, i32*, %struct.fib_dump_filter*) #2

declare dso_local i32 @mr_rtm_dumproute(%struct.sk_buff*, %struct.netlink_callback*, i32, i32, i32*, %struct.fib_dump_filter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
