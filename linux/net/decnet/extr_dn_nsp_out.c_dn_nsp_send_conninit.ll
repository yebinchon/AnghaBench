; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_conninit.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_conninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8, i8, i8, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.nsp_conn_init_msg = type { i8, i32, i32, i32, i32, i32 }
%struct.dn_skb_cb = type { i32 }
%struct.sk_buff = type { i32 }

@NSP_CI = common dso_local global i8 0, align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DN_MENUVER_ACC = common dso_local global i8 0, align 1
@DN_MENUVER_USR = common dso_local global i8 0, align 1
@SDF_PROXY = common dso_local global i32 0, align 4
@DN_MENUVER_PRX = common dso_local global i8 0, align 1
@SDF_UICPROXY = common dso_local global i32 0, align 4
@DN_MENUVER_UIC = common dso_local global i8 0, align 1
@dn_nsp_retrans_conninit = common dso_local global i32 0, align 4
@DN_RT_F_RQR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_nsp_send_conninit(%struct.sock* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca %struct.nsp_conn_init_msg*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.dn_skb_cb*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i8 %1, i8* %4, align 1
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.dn_scp* @DN_SK(%struct.sock* %13)
  store %struct.dn_scp* %14, %struct.dn_scp** %5, align 8
  store i8 1, i8* %10, align 1
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @NSP_CI, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %23, %20 ], [ %25, %24 ]
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.sk_buff* @dn_alloc_skb(%struct.sock* %28, i32 200, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %217

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %35)
  store %struct.dn_skb_cb* %36, %struct.dn_skb_cb** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = call %struct.nsp_conn_init_msg* @skb_put(%struct.sk_buff* %37, i32 24)
  store %struct.nsp_conn_init_msg* %38, %struct.nsp_conn_init_msg** %6, align 8
  %39 = load i8, i8* %4, align 1
  %40 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %41 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %40, i32 0, i32 0
  store i8 %39, i8* %41, align 4
  %42 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %43 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %48 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %50 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %53 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %55 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %58 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %60 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %64 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %66 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %34
  store i8 0, i8* %10, align 1
  br label %71

71:                                               ; preds = %70, %34
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %74 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %73, i32 0, i32 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %76 = call i32 @skb_tail_pointer(%struct.sk_buff* %75)
  %77 = load i8, i8* %10, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 @dn_sockaddr2username(%struct.TYPE_6__* %74, i32 %76, i32 %78)
  %80 = call %struct.nsp_conn_init_msg* @skb_put(%struct.sk_buff* %72, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %83 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %82, i32 0, i32 5
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = call i32 @skb_tail_pointer(%struct.sk_buff* %84)
  %86 = call i32 @dn_sockaddr2username(%struct.TYPE_6__* %83, i32 %85, i32 2)
  %87 = call %struct.nsp_conn_init_msg* @skb_put(%struct.sk_buff* %81, i32 %86)
  %88 = load i8, i8* @DN_MENUVER_ACC, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @DN_MENUVER_USR, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %89, %91
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %8, align 1
  %94 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %95 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SDF_PROXY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %71
  %102 = load i8, i8* @DN_MENUVER_PRX, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* %8, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %105, %103
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %8, align 1
  br label %108

108:                                              ; preds = %101, %71
  %109 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %110 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SDF_UICPROXY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load i8, i8* @DN_MENUVER_UIC, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %8, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %8, align 1
  br label %123

123:                                              ; preds = %116, %108
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = load i8, i8* %8, align 1
  %126 = call i32 @skb_put_u8(%struct.sk_buff* %124, i8 zeroext %125)
  %127 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %128 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 8
  store i8 %130, i8* %7, align 1
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = load i8, i8* %7, align 1
  %133 = call i32 @skb_put_u8(%struct.sk_buff* %131, i8 zeroext %132)
  %134 = load i8, i8* %7, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %123
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %140 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i8, i8* %7, align 1
  %144 = call i32 @skb_put_data(%struct.sk_buff* %138, i32 %142, i8 zeroext %143)
  br label %145

145:                                              ; preds = %137, %123
  %146 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %147 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %7, align 1
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = load i8, i8* %7, align 1
  %152 = call i32 @skb_put_u8(%struct.sk_buff* %150, i8 zeroext %151)
  %153 = load i8, i8* %7, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %145
  %157 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %158 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %159 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i8, i8* %7, align 1
  %163 = call i32 @skb_put_data(%struct.sk_buff* %157, i32 %161, i8 zeroext %162)
  br label %164

164:                                              ; preds = %156, %145
  %165 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %166 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i8, i8* %167, align 2
  store i8 %168, i8* %7, align 1
  %169 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %170 = load i8, i8* %7, align 1
  %171 = call i32 @skb_put_u8(%struct.sk_buff* %169, i8 zeroext %170)
  %172 = load i8, i8* %7, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %164
  %176 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %177 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %178 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i8, i8* %7, align 1
  %182 = call i32 @skb_put_data(%struct.sk_buff* %176, i32 %180, i8 zeroext %181)
  br label %183

183:                                              ; preds = %175, %164
  %184 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %185 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @le16_to_cpu(i32 %187)
  %189 = trunc i64 %188 to i8
  store i8 %189, i8* %7, align 1
  %190 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %191 = load i8, i8* %7, align 1
  %192 = call i32 @skb_put_u8(%struct.sk_buff* %190, i8 zeroext %191)
  %193 = load i8, i8* %7, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %183
  %197 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %198 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %199 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i8, i8* %7, align 1
  %203 = call i32 @skb_put_data(%struct.sk_buff* %197, i32 %201, i8 zeroext %202)
  br label %204

204:                                              ; preds = %196, %183
  %205 = load %struct.sock*, %struct.sock** %3, align 8
  %206 = call i32 @dn_nsp_persist(%struct.sock* %205)
  %207 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %208 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* @dn_nsp_retrans_conninit, align 4
  %210 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %211 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* @DN_RT_F_RQR, align 4
  %213 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %9, align 8
  %214 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 4
  %215 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %216 = call i32 @dn_nsp_send(%struct.sk_buff* %215)
  br label %217

217:                                              ; preds = %204, %33
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(%struct.sock*, i32, i32) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.nsp_conn_init_msg* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dn_sockaddr2username(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i8 zeroext) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i8 zeroext) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

declare dso_local i32 @dn_nsp_send(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
