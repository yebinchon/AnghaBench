; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_xlat.c_ila_xlat_nl_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32, i64* }
%struct.TYPE_3__ = type { i32 }
%struct.ila_dump_iter = type { i32, %struct.rhashtable_iter }
%struct.rhashtable_iter = type { i32 }
%struct.ila_map = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@ILA_CMD_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ila_xlat_nl_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.ila_dump_iter*, align 8
  %6 = alloca %struct.rhashtable_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ila_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ila_dump_iter*
  store %struct.ila_dump_iter* %16, %struct.ila_dump_iter** %5, align 8
  %17 = load %struct.ila_dump_iter*, %struct.ila_dump_iter** %5, align 8
  %18 = getelementptr inbounds %struct.ila_dump_iter, %struct.ila_dump_iter* %17, i32 0, i32 1
  store %struct.rhashtable_iter* %18, %struct.rhashtable_iter** %6, align 8
  %19 = load %struct.ila_dump_iter*, %struct.ila_dump_iter** %5, align 8
  %20 = getelementptr inbounds %struct.ila_dump_iter, %struct.ila_dump_iter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %23 = call i32 @rhashtable_walk_start(%struct.rhashtable_iter* %22)
  %24 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %25 = call %struct.ila_map* @rhashtable_walk_peek(%struct.rhashtable_iter* %24)
  store %struct.ila_map* %25, %struct.ila_map** %8, align 8
  %26 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %27 = icmp ne %struct.ila_map* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %2
  %29 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %30 = call i64 @IS_ERR(%struct.ila_map* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %44, %35
  %37 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %38 = icmp ne %struct.ila_map* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %46 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ila_map* @rcu_access_pointer(i32 %47)
  store %struct.ila_map* %48, %struct.ila_map** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %7, align 4
  br label %36

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %32, %28, %2
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %103, %52
  %54 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %55 = call i64 @IS_ERR(%struct.ila_map* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %59 = call i32 @PTR_ERR(%struct.ila_map* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %122

65:                                               ; preds = %57
  br label %106

66:                                               ; preds = %53
  %67 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %68 = icmp ne %struct.ila_map* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %106

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %96, %71
  %73 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %74 = icmp ne %struct.ila_map* %73, null
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %78 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @NETLINK_CB(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %85 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NLM_F_MULTI, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = load i32, i32* @ILA_CMD_GET, align 4
  %92 = call i32 @ila_dump_info(%struct.ila_map* %76, i32 %83, i32 %88, i32 %89, %struct.sk_buff* %90, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %75
  br label %107

96:                                               ; preds = %75
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = load %struct.ila_map*, %struct.ila_map** %8, align 8
  %100 = getelementptr inbounds %struct.ila_map, %struct.ila_map* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.ila_map* @rcu_access_pointer(i32 %101)
  store %struct.ila_map* %102, %struct.ila_map** %8, align 8
  br label %72

103:                                              ; preds = %72
  store i32 0, i32* %7, align 4
  %104 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %105 = call %struct.ila_map* @rhashtable_walk_next(%struct.rhashtable_iter* %104)
  store %struct.ila_map* %105, %struct.ila_map** %8, align 8
  br label %53

106:                                              ; preds = %69, %65
  br label %107

107:                                              ; preds = %106, %95
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.ila_dump_iter*, %struct.ila_dump_iter** %5, align 8
  %110 = getelementptr inbounds %struct.ila_dump_iter, %struct.ila_dump_iter* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  br label %119

119:                                              ; preds = %116, %115
  %120 = phi i64 [ %113, %115 ], [ %118, %116 ]
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %64
  %123 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %124 = call i32 @rhashtable_walk_stop(%struct.rhashtable_iter* %123)
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local i32 @rhashtable_walk_start(%struct.rhashtable_iter*) #1

declare dso_local %struct.ila_map* @rhashtable_walk_peek(%struct.rhashtable_iter*) #1

declare dso_local i64 @IS_ERR(%struct.ila_map*) #1

declare dso_local %struct.ila_map* @rcu_access_pointer(i32) #1

declare dso_local i32 @PTR_ERR(%struct.ila_map*) #1

declare dso_local i32 @ila_dump_info(%struct.ila_map*, i32, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local %struct.ila_map* @rhashtable_walk_next(%struct.rhashtable_iter*) #1

declare dso_local i32 @rhashtable_walk_stop(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
