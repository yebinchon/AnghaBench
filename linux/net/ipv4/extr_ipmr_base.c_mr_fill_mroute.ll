; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_mr_fill_mroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_mr_fill_mroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { %struct.vif_device* }
%struct.vif_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mr_mfc = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.rtmsg = type { i32, i32 }
%struct.rta_mfc_stats = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.rtnexthop = type { i32, i32, i32, i64 }

@MAXVIFS = common dso_local global i32 0, align 4
@RTNH_F_UNRESOLVED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RTA_IIF = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MFC_OFFLOAD = common dso_local global i32 0, align 4
@RTNH_F_OFFLOAD = common dso_local global i32 0, align 4
@RTA_MULTIPATH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTA_MFC_STATS = common dso_local global i32 0, align 4
@RTA_PAD = common dso_local global i32 0, align 4
@RTA_EXPIRES = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mr_fill_mroute(%struct.mr_table* %0, %struct.sk_buff* %1, %struct.mr_mfc* %2, %struct.rtmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mr_table*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mr_mfc*, align 8
  %9 = alloca %struct.rtmsg*, align 8
  %10 = alloca %struct.rta_mfc_stats, align 4
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.rtnexthop*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vif_device*, align 8
  store %struct.mr_table* %0, %struct.mr_table** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.mr_mfc* %2, %struct.mr_mfc** %8, align 8
  store %struct.rtmsg* %3, %struct.rtmsg** %9, align 8
  %16 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %17 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAXVIFS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32, i32* @RTNH_F_UNRESOLVED, align 4
  %23 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %24 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %211

29:                                               ; preds = %4
  %30 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %31 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %32 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @VIF_EXISTS(%struct.mr_table* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load i32, i32* @RTA_IIF, align 4
  %39 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %40 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %39, i32 0, i32 0
  %41 = load %struct.vif_device*, %struct.vif_device** %40, align 8
  %42 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %43 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %41, i64 %45
  %47 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %211

56:                                               ; preds = %36, %29
  %57 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %58 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MFC_OFFLOAD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %65 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %66 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load i32, i32* @RTA_MULTIPATH, align 4
  %72 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %70, i32 %71)
  store %struct.nlattr* %72, %struct.nlattr** %11, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %211

78:                                               ; preds = %69
  %79 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %80 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %149, %78
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %87 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %152

92:                                               ; preds = %84
  %93 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i64 @VIF_EXISTS(%struct.mr_table* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %148

97:                                               ; preds = %92
  %98 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %99 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 255
  br i1 %107, label %108, label %148

108:                                              ; preds = %97
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = call %struct.rtnexthop* @nla_reserve_nohdr(%struct.sk_buff* %109, i32 24)
  store %struct.rtnexthop* %110, %struct.rtnexthop** %12, align 8
  %111 = load %struct.rtnexthop*, %struct.rtnexthop** %12, align 8
  %112 = icmp ne %struct.rtnexthop* %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %116 = call i32 @nla_nest_cancel(%struct.sk_buff* %114, %struct.nlattr* %115)
  %117 = load i32, i32* @EMSGSIZE, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %211

119:                                              ; preds = %108
  %120 = load %struct.rtnexthop*, %struct.rtnexthop** %12, align 8
  %121 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %123 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rtnexthop*, %struct.rtnexthop** %12, align 8
  %132 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %134 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %133, i32 0, i32 0
  %135 = load %struct.vif_device*, %struct.vif_device** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %135, i64 %137
  store %struct.vif_device* %138, %struct.vif_device** %15, align 8
  %139 = load %struct.vif_device*, %struct.vif_device** %15, align 8
  %140 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.rtnexthop*, %struct.rtnexthop** %12, align 8
  %145 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.rtnexthop*, %struct.rtnexthop** %12, align 8
  %147 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %146, i32 0, i32 1
  store i32 24, i32* %147, align 4
  br label %148

148:                                              ; preds = %119, %97, %92
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %84

152:                                              ; preds = %84
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %155 = call i32 @nla_nest_end(%struct.sk_buff* %153, %struct.nlattr* %154)
  %156 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %157 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @READ_ONCE(i32 %160)
  store i64 %161, i64* %13, align 8
  %162 = load i64, i64* @jiffies, align 8
  %163 = load i64, i64* %13, align 8
  %164 = call i64 @time_after_eq(i64 %162, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %152
  %167 = load i64, i64* @jiffies, align 8
  %168 = load i64, i64* %13, align 8
  %169 = sub i64 %167, %168
  br label %171

170:                                              ; preds = %152
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i64 [ %169, %166 ], [ 0, %170 ]
  store i64 %172, i64* %13, align 8
  %173 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %174 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.rta_mfc_stats, %struct.rta_mfc_stats* %10, i32 0, i32 2
  store i32 %177, i32* %178, align 4
  %179 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %180 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.rta_mfc_stats, %struct.rta_mfc_stats* %10, i32 0, i32 1
  store i32 %183, i32* %184, align 4
  %185 = load %struct.mr_mfc*, %struct.mr_mfc** %8, align 8
  %186 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.rta_mfc_stats, %struct.rta_mfc_stats* %10, i32 0, i32 0
  store i32 %189, i32* %190, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = load i32, i32* @RTA_MFC_STATS, align 4
  %193 = load i32, i32* @RTA_PAD, align 4
  %194 = call i64 @nla_put_64bit(%struct.sk_buff* %191, i32 %192, i32 12, %struct.rta_mfc_stats* %10, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %171
  %197 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %198 = load i32, i32* @RTA_EXPIRES, align 4
  %199 = load i64, i64* %13, align 8
  %200 = call i32 @jiffies_to_clock_t(i64 %199)
  %201 = load i32, i32* @RTA_PAD, align 4
  %202 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %197, i32 %198, i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196, %171
  %205 = load i32, i32* @EMSGSIZE, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %5, align 4
  br label %211

207:                                              ; preds = %196
  %208 = load i32, i32* @RTN_MULTICAST, align 4
  %209 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %210 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  store i32 1, i32* %5, align 4
  br label %211

211:                                              ; preds = %207, %204, %113, %75, %53, %21
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i64 @VIF_EXISTS(%struct.mr_table*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local %struct.rtnexthop* @nla_reserve_nohdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.rta_mfc_stats*, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_clock_t(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
