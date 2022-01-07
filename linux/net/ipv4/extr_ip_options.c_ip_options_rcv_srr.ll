; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_rcv_srr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_options.c_ip_options_rcv_srr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.ip_options = type { i32, i32, i32, i8*, i32 }
%struct.iphdr = type { i8*, i32, i32 }
%struct.rtable = type { i64 }
%struct.TYPE_2__ = type { %struct.ip_options }

@PACKET_HOST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8
@ICMP_PARAMETERPROB = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_options_rcv_srr(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ip_options* %18, %struct.ip_options** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %19)
  store %struct.iphdr* %20, %struct.iphdr** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i8* @skb_network_header(%struct.sk_buff* %21)
  %23 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %24 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  store i8* %27, i8** %11, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %28)
  store %struct.rtable* %29, %struct.rtable** %12, align 8
  %30 = load %struct.rtable*, %struct.rtable** %12, align 8
  %31 = icmp ne %struct.rtable* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %177

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PACKET_HOST, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %177

42:                                               ; preds = %33
  %43 = load %struct.rtable*, %struct.rtable** %12, align 8
  %44 = getelementptr inbounds %struct.rtable, %struct.rtable* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RTN_UNICAST, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %50 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %177

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i32, i32* @ICMP_PARAMETERPROB, align 4
  %57 = call i32 @htonl(i32 268435456)
  %58 = call i32 @icmp_send(%struct.sk_buff* %55, i32 %56, i32 0, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %177

61:                                               ; preds = %42
  %62 = load %struct.rtable*, %struct.rtable** %12, align 8
  %63 = getelementptr inbounds %struct.rtable, %struct.rtable* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTN_LOCAL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %177

70:                                               ; preds = %61
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %161, %70
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %164

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 3
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load i32, i32* @ICMP_PARAMETERPROB, align 4
  %91 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %92 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 2
  %95 = shl i32 %94, 24
  %96 = call i32 @htonl(i32 %95)
  %97 = call i32 @icmp_send(%struct.sk_buff* %89, i32 %90, i32 0, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %177

100:                                              ; preds = %83
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = call i32 @memcpy(i8** %9, i8* %105, i32 4)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %14, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @skb_dst_set(%struct.sk_buff* %110, i32* null)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = call i32 @ip_route_input(%struct.sk_buff* %112, i8* %113, i32 %116, i32 %119, %struct.net_device* %120)
  store i32 %121, i32* %15, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %122)
  store %struct.rtable* %123, %struct.rtable** %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %100
  %127 = load %struct.rtable*, %struct.rtable** %13, align 8
  %128 = getelementptr inbounds %struct.rtable, %struct.rtable* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @RTN_UNICAST, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = load %struct.rtable*, %struct.rtable** %13, align 8
  %134 = getelementptr inbounds %struct.rtable, %struct.rtable* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RTN_LOCAL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %132, %100
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = call i32 @skb_dst_drop(%struct.sk_buff* %139)
  %141 = load i64, i64* %14, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %177

146:                                              ; preds = %132, %126
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @refdst_drop(i64 %147)
  %149 = load %struct.rtable*, %struct.rtable** %13, align 8
  %150 = getelementptr inbounds %struct.rtable, %struct.rtable* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @RTN_LOCAL, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %164

155:                                              ; preds = %146
  %156 = load i8*, i8** %9, align 8
  %157 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %160 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 4
  store i32 %163, i32* %8, align 4
  br label %79

164:                                              ; preds = %154, %79
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %170 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %169, i32 0, i32 2
  store i32 1, i32* %170, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %173 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %175 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  br label %176

176:                                              ; preds = %168, %164
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %138, %88, %67, %54, %53, %39, %32
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ip_route_input(%struct.sk_buff*, i8*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @refdst_drop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
