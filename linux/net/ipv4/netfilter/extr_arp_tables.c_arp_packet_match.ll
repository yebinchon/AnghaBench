; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_arp_packet_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_arp_tables.c_arp_packet_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arphdr = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.arpt_arp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ARPT_INV_ARPOP = common dso_local global i32 0, align 4
@ARPT_INV_ARPHRD = common dso_local global i32 0, align 4
@ARPT_INV_ARPPRO = common dso_local global i32 0, align 4
@ARPT_INV_ARPHLN = common dso_local global i32 0, align 4
@ARPT_INV_SRCDEVADDR = common dso_local global i32 0, align 4
@ARPT_INV_TGTDEVADDR = common dso_local global i32 0, align 4
@ARPT_INV_SRCIP = common dso_local global i32 0, align 4
@ARPT_INV_TGTIP = common dso_local global i32 0, align 4
@ARPT_INV_VIA_IN = common dso_local global i32 0, align 4
@ARPT_INV_VIA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arphdr*, %struct.net_device*, i8*, i8*, %struct.arpt_arp*)* @arp_packet_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_packet_match(%struct.arphdr* %0, %struct.net_device* %1, i8* %2, i8* %3, %struct.arpt_arp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.arphdr*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.arpt_arp*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.arphdr* %0, %struct.arphdr** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.arpt_arp* %4, %struct.arpt_arp** %11, align 8
  %18 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %19 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %18, i64 1
  %20 = bitcast %struct.arphdr* %19 to i8*
  store i8* %20, i8** %12, align 8
  %21 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %22 = load i32, i32* @ARPT_INV_ARPOP, align 4
  %23 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %24 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %27 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %31 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @NF_INVF(%struct.arpt_arp* %21, i32 %22, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %207

38:                                               ; preds = %5
  %39 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %40 = load i32, i32* @ARPT_INV_ARPHRD, align 4
  %41 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %42 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %45 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %49 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @NF_INVF(%struct.arpt_arp* %39, i32 %40, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %207

56:                                               ; preds = %38
  %57 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %58 = load i32, i32* @ARPT_INV_ARPPRO, align 4
  %59 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %60 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %63 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  %66 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %67 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @NF_INVF(%struct.arpt_arp* %57, i32 %58, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %207

74:                                               ; preds = %56
  %75 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %76 = load i32, i32* @ARPT_INV_ARPHLN, align 4
  %77 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %78 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %81 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %79, %82
  %84 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %85 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @NF_INVF(%struct.arpt_arp* %75, i32 %76, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %207

92:                                               ; preds = %74
  %93 = load i8*, i8** %12, align 8
  store i8* %93, i8** %13, align 8
  %94 = load %struct.net_device*, %struct.net_device** %8, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %12, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @memcpy(i32* %15, i8* %100, i32 4)
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %12, align 8
  %104 = load i8*, i8** %12, align 8
  store i8* %104, i8** %14, align 8
  %105 = load %struct.net_device*, %struct.net_device** %8, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %12, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @memcpy(i32* %16, i8* %111, i32 4)
  %113 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %114 = load i32, i32* @ARPT_INV_SRCDEVADDR, align 4
  %115 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %116 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %115, i32 0, i32 17
  %117 = load i8*, i8** %13, align 8
  %118 = load %struct.net_device*, %struct.net_device** %8, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @arp_devaddr_compare(i32* %116, i8* %117, i32 %120)
  %122 = call i64 @NF_INVF(%struct.arpt_arp* %113, i32 %114, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %92
  %125 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %126 = load i32, i32* @ARPT_INV_TGTDEVADDR, align 4
  %127 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %128 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %127, i32 0, i32 16
  %129 = load i8*, i8** %14, align 8
  %130 = load %struct.net_device*, %struct.net_device** %8, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @arp_devaddr_compare(i32* %128, i8* %129, i32 %132)
  %134 = call i64 @NF_INVF(%struct.arpt_arp* %125, i32 %126, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124, %92
  store i32 0, i32* %6, align 4
  br label %207

137:                                              ; preds = %124
  %138 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %139 = load i32, i32* @ARPT_INV_SRCIP, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %142 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %140, %144
  %146 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %147 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %146, i32 0, i32 14
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %145, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @NF_INVF(%struct.arpt_arp* %138, i32 %139, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %137
  %155 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %156 = load i32, i32* @ARPT_INV_TGTIP, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %159 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %158, i32 0, i32 13
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %157, %161
  %163 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %164 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %163, i32 0, i32 12
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %162, %166
  %168 = zext i1 %167 to i32
  %169 = call i64 @NF_INVF(%struct.arpt_arp* %155, i32 %156, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %154, %137
  store i32 0, i32* %6, align 4
  br label %207

172:                                              ; preds = %154
  %173 = load i8*, i8** %9, align 8
  %174 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %175 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %178 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @ifname_compare(i8* %173, i32 %176, i32 %179)
  store i64 %180, i64* %17, align 8
  %181 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %182 = load i32, i32* @ARPT_INV_VIA_IN, align 4
  %183 = load i64, i64* %17, align 8
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i64 @NF_INVF(%struct.arpt_arp* %181, i32 %182, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %172
  store i32 0, i32* %6, align 4
  br label %207

189:                                              ; preds = %172
  %190 = load i8*, i8** %10, align 8
  %191 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %192 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %195 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @ifname_compare(i8* %190, i32 %193, i32 %196)
  store i64 %197, i64* %17, align 8
  %198 = load %struct.arpt_arp*, %struct.arpt_arp** %11, align 8
  %199 = load i32, i32* @ARPT_INV_VIA_OUT, align 4
  %200 = load i64, i64* %17, align 8
  %201 = icmp ne i64 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i64 @NF_INVF(%struct.arpt_arp* %198, i32 %199, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  br label %207

206:                                              ; preds = %189
  store i32 1, i32* %6, align 4
  br label %207

207:                                              ; preds = %206, %205, %188, %171, %136, %91, %73, %55, %37
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i64 @NF_INVF(%struct.arpt_arp*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @arp_devaddr_compare(i32*, i8*, i32) #1

declare dso_local i64 @ifname_compare(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
