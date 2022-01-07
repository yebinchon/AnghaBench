; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_enable_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_enable_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64, %struct.net_device*, %struct.TYPE_9__*, %struct.TYPE_10__, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.net = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)* }

@ETH_P_BATMAN = common dso_local global i32 0, align 4
@BATADV_IF_NOT_IN_USE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Can't create batman mesh interface %s: already exists as regular interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BATADV_IF_INACTIVE = common dso_local global i64 0, align 8
@batadv_batman_skb_recv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Adding interface: %s\0A\00", align 1
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [236 x i8] c"The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. Packets going over this interface will be fragmented on layer2 which could impact the performance. Setting the MTU to %i would solve the problem.\0A\00", align 1
@.str.3 = private unnamed_addr constant [171 x i8] c"The MTU of interface %s is too small (%i) to handle the transport of batman-adv packets. If you experience problems getting traffic through try increasing the MTU to %i.\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Not using interface %s (retrying later): interface not active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_hardif_enable_interface(%struct.batadv_hard_iface* %0, %struct.net* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @ETH_P_BATMAN, align 4
  %15 = call i32 @htons(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = call i32 (...) @batadv_max_header_len()
  store i32 %16, i32* %12, align 4
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %18 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BATADV_IF_NOT_IN_USE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %233

23:                                               ; preds = %3
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %25 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %24, i32 0, i32 4
  %26 = call i32 @kref_get(i32* %25)
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call %struct.net_device* @dev_get_by_name(%struct.net* %27, i8* %28)
  store %struct.net_device* %29, %struct.net_device** %9, align 8
  %30 = load %struct.net_device*, %struct.net_device** %9, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %23
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call %struct.net_device* @batadv_softif_create(%struct.net* %33, i8* %34)
  store %struct.net_device* %35, %struct.net_device** %9, align 8
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %245

41:                                               ; preds = %32
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = call i32 @dev_hold(%struct.net_device* %42)
  br label %44

44:                                               ; preds = %41, %23
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = call i32 @batadv_softif_is_valid(%struct.net_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %240

55:                                               ; preds = %44
  %56 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %57 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.TYPE_9__* %58)
  store %struct.net_device* %59, %struct.net_device** %10, align 8
  %60 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %61 = load %struct.net_device*, %struct.net_device** %10, align 8
  %62 = call i32 @batadv_master_del_slave(%struct.batadv_hard_iface* %60, %struct.net_device* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %240

66:                                               ; preds = %55
  %67 = load %struct.net_device*, %struct.net_device** %9, align 8
  %68 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %69 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %68, i32 0, i32 1
  store %struct.net_device* %67, %struct.net_device** %69, align 8
  %70 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %71 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %70, i32 0, i32 1
  %72 = load %struct.net_device*, %struct.net_device** %71, align 8
  %73 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %72)
  store %struct.batadv_priv* %73, %struct.batadv_priv** %8, align 8
  %74 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %75 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %9, align 8
  %78 = call i32 @netdev_master_upper_dev_link(%struct.TYPE_9__* %76, %struct.net_device* %77, i32* null, i32* null, i32* null)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %240

82:                                               ; preds = %66
  %83 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %84 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %87, align 8
  %89 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %90 = call i32 %88(%struct.batadv_hard_iface* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %234

94:                                               ; preds = %82
  %95 = load i64, i64* @BATADV_IF_INACTIVE, align 8
  %96 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %97 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %99 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %98, i32 0, i32 4
  %100 = call i32 @kref_get(i32* %99)
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %103 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @batadv_batman_skb_recv, align 4
  %106 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %107 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 8
  %109 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %110 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %109, i32 0, i32 2
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %113 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %114, align 8
  %115 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %116 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %115, i32 0, i32 3
  %117 = call i32 @dev_add_pack(%struct.TYPE_10__* %116)
  %118 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %119 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %118, i32 0, i32 1
  %120 = load %struct.net_device*, %struct.net_device** %119, align 8
  %121 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %122 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %121, i32 0, i32 2
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.net_device*, i8*, i32, ...) @batadv_info(%struct.net_device* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %128 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %127, i32 0, i32 1
  %129 = call i64 @atomic_read(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %94
  %132 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %133 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %132, i32 0, i32 2
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ETH_DATA_LEN, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = icmp slt i64 %136, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %131
  %143 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %144 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %143, i32 0, i32 1
  %145 = load %struct.net_device*, %struct.net_device** %144, align 8
  %146 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %147 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %146, i32 0, i32 2
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %152 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ETH_DATA_LEN, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = call i32 (%struct.net_device*, i8*, i32, ...) @batadv_info(%struct.net_device* %145, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.2, i64 0, i64 0), i32 %150, i64 %155, i64 %159)
  br label %161

161:                                              ; preds = %142, %131, %94
  %162 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %163 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %162, i32 0, i32 1
  %164 = call i64 @atomic_read(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %196, label %166

166:                                              ; preds = %161
  %167 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %168 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %167, i32 0, i32 2
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ETH_DATA_LEN, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = icmp slt i64 %171, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %166
  %178 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %179 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %178, i32 0, i32 1
  %180 = load %struct.net_device*, %struct.net_device** %179, align 8
  %181 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %182 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %187 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @ETH_DATA_LEN, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %191, %193
  %195 = call i32 (%struct.net_device*, i8*, i32, ...) @batadv_info(%struct.net_device* %180, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.3, i64 0, i64 0), i32 %185, i64 %190, i64 %194)
  br label %196

196:                                              ; preds = %177, %166, %161
  %197 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %198 = call i64 @batadv_hardif_is_iface_up(%struct.batadv_hard_iface* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %202 = call i32 @batadv_hardif_activate_interface(%struct.batadv_hard_iface* %201)
  br label %213

203:                                              ; preds = %196
  %204 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %205 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %204, i32 0, i32 1
  %206 = load %struct.net_device*, %struct.net_device** %205, align 8
  %207 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %208 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %207, i32 0, i32 2
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @batadv_err(%struct.net_device* %206, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %203, %200
  %214 = load %struct.net_device*, %struct.net_device** %9, align 8
  %215 = call i32 @batadv_hardif_recalc_extra_skbroom(%struct.net_device* %214)
  %216 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %217 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %220, align 8
  %222 = icmp ne i32 (%struct.batadv_hard_iface*)* %221, null
  br i1 %222, label %223, label %232

223:                                              ; preds = %213
  %224 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %225 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %224, i32 0, i32 0
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %228, align 8
  %230 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %231 = call i32 %229(%struct.batadv_hard_iface* %230)
  br label %232

232:                                              ; preds = %223, %213
  br label %233

233:                                              ; preds = %232, %22
  store i32 0, i32* %4, align 4
  br label %249

234:                                              ; preds = %93
  %235 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %236 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %235, i32 0, i32 2
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = load %struct.net_device*, %struct.net_device** %9, align 8
  %239 = call i32 @netdev_upper_dev_unlink(%struct.TYPE_9__* %237, %struct.net_device* %238)
  br label %240

240:                                              ; preds = %234, %81, %65, %48
  %241 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %242 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %241, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %242, align 8
  %243 = load %struct.net_device*, %struct.net_device** %9, align 8
  %244 = call i32 @dev_put(%struct.net_device* %243)
  br label %245

245:                                              ; preds = %240, %38
  %246 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %247 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %246)
  %248 = load i32, i32* %13, align 4
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %245, %233
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @batadv_max_header_len(...) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i8*) #1

declare dso_local %struct.net_device* @batadv_softif_create(%struct.net*, i8*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.TYPE_9__*) #1

declare dso_local i32 @batadv_master_del_slave(%struct.batadv_hard_iface*, %struct.net_device*) #1

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_master_upper_dev_link(%struct.TYPE_9__*, %struct.net_device*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_add_pack(%struct.TYPE_10__*) #1

declare dso_local i32 @batadv_info(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @batadv_hardif_is_iface_up(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_hardif_activate_interface(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @batadv_hardif_recalc_extra_skbroom(%struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.TYPE_9__*, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
