; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { %struct.tcf_block* }
%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.net = type { i32 }
%struct.tcmsg = type { i32 }
%struct.tcf_proto = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.tcf_proto*, %struct.TYPE_6__*, i32)* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32 }
%struct.tcf_dump_args = type { %struct.TYPE_6__, i32, %struct.Qdisc*, %struct.tcf_block*, %struct.netlink_callback*, %struct.sk_buff* }
%struct.TYPE_8__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@RTM_NEWTFILTER = common dso_local global i32 0, align 4
@tcf_node_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_chain*, %struct.Qdisc*, i32, %struct.sk_buff*, %struct.netlink_callback*, i64, i64*)* @tcf_chain_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_chain_dump(%struct.tcf_chain* %0, %struct.Qdisc* %1, i32 %2, %struct.sk_buff* %3, %struct.netlink_callback* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_chain*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.netlink_callback*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.tcf_block*, align 8
  %18 = alloca %struct.tcmsg*, align 8
  %19 = alloca %struct.tcf_proto*, align 8
  %20 = alloca %struct.tcf_proto*, align 8
  %21 = alloca %struct.tcf_dump_args, align 8
  %22 = alloca %struct.TYPE_8__, align 4
  store %struct.tcf_chain* %0, %struct.tcf_chain** %9, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store %struct.netlink_callback* %4, %struct.netlink_callback** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @sock_net(i32 %25)
  store %struct.net* %26, %struct.net** %16, align 8
  %27 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %28 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %27, i32 0, i32 0
  %29 = load %struct.tcf_block*, %struct.tcf_block** %28, align 8
  store %struct.tcf_block* %29, %struct.tcf_block** %17, align 8
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %31 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call %struct.tcmsg* @nlmsg_data(%struct.TYPE_7__* %32)
  store %struct.tcmsg* %33, %struct.tcmsg** %18, align 8
  %34 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %35 = call %struct.tcf_proto* @__tcf_get_next_proto(%struct.tcf_chain* %34, %struct.tcf_proto* null)
  store %struct.tcf_proto* %35, %struct.tcf_proto** %19, align 8
  br label %36

36:                                               ; preds = %194, %7
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %38 = icmp ne %struct.tcf_proto* %37, null
  br i1 %38, label %39, label %204

39:                                               ; preds = %36
  %40 = load i64*, i64** %15, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %194

45:                                               ; preds = %39
  %46 = load %struct.tcmsg*, %struct.tcmsg** %18, align 8
  %47 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @TC_H_MAJ(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.tcmsg*, %struct.tcmsg** %18, align 8
  %53 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @TC_H_MAJ(i32 %54)
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %57 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %194

61:                                               ; preds = %51, %45
  %62 = load %struct.tcmsg*, %struct.tcmsg** %18, align 8
  %63 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @TC_H_MIN(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.tcmsg*, %struct.tcmsg** %18, align 8
  %69 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @TC_H_MIN(i32 %70)
  %72 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %73 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %194

77:                                               ; preds = %67, %61
  %78 = load i64*, i64** %15, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %84 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = call i32 @memset(i32* %86, i32 0, i32 4)
  br label %88

88:                                               ; preds = %82, %77
  %89 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %90 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %88
  %96 = load %struct.net*, %struct.net** %16, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %99 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %100 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %103 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @NETLINK_CB(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %110 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NLM_F_MULTI, align 4
  %115 = load i32, i32* @RTM_NEWTFILTER, align 4
  %116 = call i64 @tcf_fill_node(%struct.net* %96, %struct.sk_buff* %97, %struct.tcf_proto* %98, %struct.tcf_block* %99, %struct.Qdisc* %100, i32 %101, i32* null, i32 %108, i32 %113, i32 %114, i32 %115, i32 1)
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %95
  br label %205

119:                                              ; preds = %95
  %120 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %121 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %88
  %125 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %126 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32 (%struct.tcf_proto*, %struct.TYPE_6__*, i32)*, i32 (%struct.tcf_proto*, %struct.TYPE_6__*, i32)** %128, align 8
  %130 = icmp ne i32 (%struct.tcf_proto*, %struct.TYPE_6__*, i32)* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  br label %194

132:                                              ; preds = %124
  %133 = load i32, i32* @tcf_node_dump, align 4
  %134 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %137 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 5
  store %struct.sk_buff* %136, %struct.sk_buff** %137, align 8
  %138 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %139 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 4
  store %struct.netlink_callback* %138, %struct.netlink_callback** %139, align 8
  %140 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  %141 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 3
  store %struct.tcf_block* %140, %struct.tcf_block** %141, align 8
  %142 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %143 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 2
  store %struct.Qdisc* %142, %struct.Qdisc** %143, align 8
  %144 = load i32, i32* %11, align 4
  %145 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 1
  store i32 %144, i32* %145, align 8
  %146 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %149 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i32 0, i32* %157, align 4
  %158 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %159 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %166 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %165, i32 0, i32 2
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32 (%struct.tcf_proto*, %struct.TYPE_6__*, i32)*, i32 (%struct.tcf_proto*, %struct.TYPE_6__*, i32)** %168, align 8
  %170 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %171 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %172 = call i32 %169(%struct.tcf_proto* %170, %struct.TYPE_6__* %171, i32 1)
  %173 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %177 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  store i32 %175, i32* %179, align 4
  %180 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  %184 = load %struct.netlink_callback*, %struct.netlink_callback** %13, align 8
  %185 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 %183, i32* %187, align 4
  %188 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %21, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %132
  br label %205

193:                                              ; preds = %132
  br label %194

194:                                              ; preds = %193, %131, %76, %60, %44
  %195 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  store %struct.tcf_proto* %195, %struct.tcf_proto** %20, align 8
  %196 = load %struct.tcf_chain*, %struct.tcf_chain** %9, align 8
  %197 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %198 = call %struct.tcf_proto* @__tcf_get_next_proto(%struct.tcf_chain* %196, %struct.tcf_proto* %197)
  store %struct.tcf_proto* %198, %struct.tcf_proto** %19, align 8
  %199 = load %struct.tcf_proto*, %struct.tcf_proto** %20, align 8
  %200 = call i32 @tcf_proto_put(%struct.tcf_proto* %199, i32 1, i32* null)
  %201 = load i64*, i64** %15, align 8
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %36

204:                                              ; preds = %36
  store i32 1, i32* %8, align 4
  br label %208

205:                                              ; preds = %192, %118
  %206 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %207 = call i32 @tcf_proto_put(%struct.tcf_proto* %206, i32 1, i32* null)
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %205, %204
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.TYPE_7__*) #1

declare dso_local %struct.tcf_proto* @__tcf_get_next_proto(%struct.tcf_chain*, %struct.tcf_proto*) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i64 @TC_H_MIN(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @tcf_fill_node(%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_block*, %struct.Qdisc*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @tcf_proto_put(%struct.tcf_proto*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
