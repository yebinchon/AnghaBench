; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_port_fdb_do_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_port_fdb_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_slave_dump_ctx = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i64, i32, i64, i64, i32 }

@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NDA_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*)* @dsa_slave_port_fdb_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_port_fdb_do_dump(i8* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dsa_slave_dump_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca %struct.ndmsg*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.dsa_slave_dump_ctx*
  store %struct.dsa_slave_dump_ctx* %17, %struct.dsa_slave_dump_ctx** %10, align 8
  %18 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @NETLINK_CB(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %36, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %119

46:                                               ; preds = %4
  %47 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @RTM_NEWNEIGH, align 4
  %53 = load i32, i32* @NLM_F_MULTI, align 4
  %54 = call %struct.nlmsghdr* @nlmsg_put(i32 %49, i32 %50, i32 %51, i32 %52, i32 48, i32 %53)
  store %struct.nlmsghdr* %54, %struct.nlmsghdr** %14, align 8
  %55 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %56 = icmp ne %struct.nlmsghdr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @EMSGSIZE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %132

60:                                               ; preds = %46
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %62 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %61)
  store %struct.ndmsg* %62, %struct.ndmsg** %15, align 8
  %63 = load i32, i32* @AF_BRIDGE, align 4
  %64 = load %struct.ndmsg*, %struct.ndmsg** %15, align 8
  %65 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ndmsg*, %struct.ndmsg** %15, align 8
  %67 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.ndmsg*, %struct.ndmsg** %15, align 8
  %69 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @NTF_SELF, align 4
  %71 = load %struct.ndmsg*, %struct.ndmsg** %15, align 8
  %72 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ndmsg*, %struct.ndmsg** %15, align 8
  %74 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ndmsg*, %struct.ndmsg** %15, align 8
  %81 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %60
  %85 = load i32, i32* @NUD_NOARP, align 4
  br label %88

86:                                               ; preds = %60
  %87 = load i32, i32* @NUD_REACHABLE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.ndmsg*, %struct.ndmsg** %15, align 8
  %91 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %93 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NDA_LLADDR, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @nla_put(i32 %94, i32 %95, i32 %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %124

101:                                              ; preds = %88
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %106 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NDA_VLAN, align 4
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @nla_put_u16(i32 %107, i32 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %124

113:                                              ; preds = %104, %101
  %114 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %115 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %118 = call i32 @nlmsg_end(i32 %116, %struct.nlmsghdr* %117)
  br label %119

119:                                              ; preds = %113, %45
  %120 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %121 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  store i32 0, i32* %5, align 4
  br label %132

124:                                              ; preds = %112, %100
  %125 = load %struct.dsa_slave_dump_ctx*, %struct.dsa_slave_dump_ctx** %10, align 8
  %126 = getelementptr inbounds %struct.dsa_slave_dump_ctx, %struct.dsa_slave_dump_ctx* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %129 = call i32 @nlmsg_cancel(i32 %127, %struct.nlmsghdr* %128)
  %130 = load i32, i32* @EMSGSIZE, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %124, %119, %57
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put(i32, i32, i32, i8*) #1

declare dso_local i64 @nla_put_u16(i32, i32, i64) #1

declare dso_local i32 @nlmsg_end(i32, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(i32, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
