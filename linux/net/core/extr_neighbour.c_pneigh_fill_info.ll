; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pneigh_entry = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.neigh_table = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i32, i32, i64, i64, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@NTF_PROXY = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@NUD_NONE = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i32 0, align 4
@NDA_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.pneigh_entry*, i32, i32, i32, i32, %struct.neigh_table*)* @pneigh_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pneigh_fill_info(%struct.sk_buff* %0, %struct.pneigh_entry* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.neigh_table* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.pneigh_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.neigh_table*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.ndmsg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.pneigh_entry* %1, %struct.pneigh_entry** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.neigh_table* %6, %struct.neigh_table** %15, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32 %21, i32 40, i32 %22)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %16, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %25 = icmp eq %struct.nlmsghdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %104

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %31 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.ndmsg* %31, %struct.ndmsg** %17, align 8
  %32 = load %struct.neigh_table*, %struct.neigh_table** %15, align 8
  %33 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %36 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %38 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %40 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %42 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NTF_PROXY, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %47 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @RTN_UNICAST, align 4
  %49 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %50 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %52 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %29
  %56 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %57 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %62

61:                                               ; preds = %29
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i32 [ %60, %55 ], [ 0, %61 ]
  %64 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %65 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @NUD_NONE, align 4
  %67 = load %struct.ndmsg*, %struct.ndmsg** %17, align 8
  %68 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load i32, i32* @NDA_DST, align 4
  %71 = load %struct.neigh_table*, %struct.neigh_table** %15, align 8
  %72 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %75 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nla_put(%struct.sk_buff* %69, i32 %70, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %98

80:                                               ; preds = %62
  %81 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %82 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load i32, i32* @NDA_PROTOCOL, align 4
  %88 = load %struct.pneigh_entry*, %struct.pneigh_entry** %10, align 8
  %89 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @nla_put_u8(%struct.sk_buff* %86, i32 %87, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %98

94:                                               ; preds = %85, %80
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %97 = call i32 @nlmsg_end(%struct.sk_buff* %95, %struct.nlmsghdr* %96)
  store i32 0, i32* %8, align 4
  br label %104

98:                                               ; preds = %93, %79
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %101 = call i32 @nlmsg_cancel(%struct.sk_buff* %99, %struct.nlmsghdr* %100)
  %102 = load i32, i32* @EMSGSIZE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %98, %94, %26
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
