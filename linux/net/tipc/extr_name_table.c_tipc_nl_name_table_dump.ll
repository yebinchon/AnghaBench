; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nl_name_table_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_table.c_tipc_nl_name_table_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_name_table_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tipc_nl_msg, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %6, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %7, align 8
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %33 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %40 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

47:                                               ; preds = %2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %11, i32 0, i32 2
  store %struct.sk_buff* %48, %struct.sk_buff** %49, align 8
  %50 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %51 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @NETLINK_CB(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %11, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %59 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %11, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = call i32 (...) @rcu_read_lock()
  %65 = load %struct.net*, %struct.net** %6, align 8
  %66 = call i32 @tipc_nl_service_list(%struct.net* %65, %struct.tipc_nl_msg* %11, i8** %7, i8** %8, i8** %9)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  br label %79

70:                                               ; preds = %47
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @EMSGSIZE, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %77 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %76, i32 0, i32 1
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78, %69
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load i8*, i8** %7, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %84 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %82, i32* %86, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %90 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %88, i32* %92, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %96 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %99, i32* %103, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %79, %46
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @tipc_nl_service_list(%struct.net*, %struct.tipc_nl_msg*, i8**, i8**, i8**) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
