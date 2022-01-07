; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_send_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_send_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfc_target = type { i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@nfc_genl_family = common dso_local global i32 0, align 4
@NFC_CMD_GET_TARGET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_PROTOCOLS = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_SENS_RES = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_SEL_RES = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_NFCID1 = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_SENSB_RES = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_SENSF_RES = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_ISO15693_DSFID = common dso_local global i32 0, align 4
@NFC_ATTR_TARGET_ISO15693_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nfc_target*, %struct.netlink_callback*, i32)* @nfc_genl_send_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_send_target(%struct.sk_buff* %0, %struct.nfc_target* %1, %struct.netlink_callback* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %7, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NETLINK_CB(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NFC_CMD_GET_TARGET, align 4
  %27 = call i8* @genlmsg_put(%struct.sk_buff* %12, i32 %19, i32 %24, i32* @nfc_genl_family, i32 %25, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %156

33:                                               ; preds = %4
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %34, i8* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* @NFC_ATTR_TARGET_INDEX, align 4
  %39 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %40 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @NFC_ATTR_PROTOCOLS, align 4
  %47 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %48 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i32, i32* @NFC_ATTR_TARGET_SENS_RES, align 4
  %55 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %56 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @nla_put_u16(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load i32, i32* @NFC_ATTR_TARGET_SEL_RES, align 4
  %63 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %64 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_u8(%struct.sk_buff* %61, i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60, %52, %44, %33
  br label %150

69:                                               ; preds = %60
  %70 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %71 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* @NFC_ATTR_TARGET_NFCID1, align 4
  %77 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %78 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %82 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @nla_put(%struct.sk_buff* %75, i32 %76, i32 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %150

87:                                               ; preds = %74, %69
  %88 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %89 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i32, i32* @NFC_ATTR_TARGET_SENSB_RES, align 4
  %95 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %96 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %100 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @nla_put(%struct.sk_buff* %93, i32 %94, i32 %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %150

105:                                              ; preds = %92, %87
  %106 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %107 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = load i32, i32* @NFC_ATTR_TARGET_SENSF_RES, align 4
  %113 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %114 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %118 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @nla_put(%struct.sk_buff* %111, i32 %112, i32 %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %150

123:                                              ; preds = %110, %105
  %124 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %125 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = load i32, i32* @NFC_ATTR_TARGET_ISO15693_DSFID, align 4
  %131 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %132 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @nla_put_u8(%struct.sk_buff* %129, i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %128
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = load i32, i32* @NFC_ATTR_TARGET_ISO15693_UID, align 4
  %139 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %140 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @nla_put(%struct.sk_buff* %137, i32 %138, i32 4, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136, %128
  br label %150

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145, %123
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 @genlmsg_end(%struct.sk_buff* %147, i8* %148)
  store i32 0, i32* %5, align 4
  br label %156

150:                                              ; preds = %144, %122, %104, %86, %68
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 @genlmsg_cancel(%struct.sk_buff* %151, i8* %152)
  %154 = load i32, i32* @EMSGSIZE, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %150, %146, %30
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
