; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_dump_all.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_dump_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.netlink_callback = type { i32, i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rtnl_link = type { i32 (%struct.sk_buff*, %struct.netlink_callback.0*)* }
%struct.netlink_callback.0 = type opaque

@RTM_BASE = common dso_local global i32 0, align 4
@RTNL_FAMILY_MAX = common dso_local global i32 0, align 4
@PF_PACKET = common dso_local global i32 0, align 4
@RTM_NR_MSGTYPES = common dso_local global i32 0, align 4
@rtnl_msg_handlers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @rtnl_dump_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_dump_all(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtnl_link**, align 8
  %10 = alloca %struct.rtnl_link*, align 8
  %11 = alloca i32 (%struct.sk_buff*, %struct.netlink_callback*)*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %16 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTM_BASE, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %2
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %97, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RTNL_FAMILY_MAX, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PF_PACKET, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  br label %97

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RTM_NR_MSGTYPES, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %39
  br label %97

47:                                               ; preds = %42
  %48 = load i32*, i32** @rtnl_msg_handlers, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.rtnl_link** @rcu_dereference_rtnl(i32 %52)
  store %struct.rtnl_link** %53, %struct.rtnl_link*** %9, align 8
  %54 = load %struct.rtnl_link**, %struct.rtnl_link*** %9, align 8
  %55 = icmp ne %struct.rtnl_link** %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %97

57:                                               ; preds = %47
  %58 = load %struct.rtnl_link**, %struct.rtnl_link*** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %58, i64 %60
  %62 = load %struct.rtnl_link*, %struct.rtnl_link** %61, align 8
  store %struct.rtnl_link* %62, %struct.rtnl_link** %10, align 8
  %63 = load %struct.rtnl_link*, %struct.rtnl_link** %10, align 8
  %64 = icmp ne %struct.rtnl_link* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %97

66:                                               ; preds = %57
  %67 = load %struct.rtnl_link*, %struct.rtnl_link** %10, align 8
  %68 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %67, i32 0, i32 0
  %69 = load i32 (%struct.sk_buff*, %struct.netlink_callback.0*)*, i32 (%struct.sk_buff*, %struct.netlink_callback.0*)** %68, align 8
  %70 = bitcast i32 (%struct.sk_buff*, %struct.netlink_callback.0*)* %69 to i32 (%struct.sk_buff*, %struct.netlink_callback*)*
  store i32 (%struct.sk_buff*, %struct.netlink_callback*)* %70, i32 (%struct.sk_buff*, %struct.netlink_callback*)** %11, align 8
  %71 = load i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*)** %11, align 8
  %72 = icmp ne i32 (%struct.sk_buff*, %struct.netlink_callback*)* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %97

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %80 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = call i32 @memset(i32* %82, i32 0, i32 8)
  %84 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %85 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %87 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %74
  %89 = load i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*)** %11, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %92 = call i32 %89(%struct.sk_buff* %90, %struct.netlink_callback* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %100

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %73, %65, %56, %46, %38
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %26

100:                                              ; preds = %95, %26
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %103 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %112

109:                                              ; preds = %100
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %109, %108
  %113 = phi i64 [ %106, %108 ], [ %111, %109 ]
  %114 = trunc i64 %113 to i32
  ret i32 %114
}

declare dso_local %struct.rtnl_link** @rcu_dereference_rtnl(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
