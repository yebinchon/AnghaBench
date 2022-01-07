; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_llsec_parse_key_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_llsec_parse_key_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.ieee802154_llsec_key_id = type { i32, i8*, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8*, i8* }

@IEEE802154_ATTR_LLSEC_KEY_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_SCF_KEY_IMPLICIT = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAN_ID = common dso_local global i64 0, align 8
@IEEE802154_ATTR_SHORT_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_HW_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i32 0, align 4
@IEEE802154_ATTR_LLSEC_KEY_ID = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT = common dso_local global i64 0, align 8
@IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.ieee802154_llsec_key_id*)* @ieee802154_llsec_parse_key_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_llsec_parse_key_id(%struct.genl_info* %0, %struct.ieee802154_llsec_key_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.ieee802154_llsec_key_id*, align 8
  %6 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.ieee802154_llsec_key_id* %1, %struct.ieee802154_llsec_key_id** %5, align 8
  %7 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %8 = call i32 @memset(%struct.ieee802154_llsec_key_id* %7, i32 0, i32 64)
  %9 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_MODE, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %203

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_MODE, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @nla_get_u8(i64 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %29 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %31 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IEEE802154_SCF_KEY_IMPLICIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %111

35:                                               ; preds = %19
  %36 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @IEEE802154_ATTR_PAN_ID, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %35
  %44 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @IEEE802154_ATTR_SHORT_ADDR, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %43
  %52 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %203

62:                                               ; preds = %51, %43, %35
  %63 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @IEEE802154_ATTR_PAN_ID, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @nla_get_shortaddr(i64 %68)
  %70 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %71 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i8* %69, i8** %72, align 8
  %73 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @IEEE802154_ATTR_SHORT_ADDR, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %62
  %81 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %82 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %83 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %86 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @IEEE802154_ATTR_SHORT_ADDR, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @nla_get_shortaddr(i64 %90)
  %92 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %93 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  br label %110

95:                                               ; preds = %62
  %96 = load i32, i32* @IEEE802154_ADDR_LONG, align 4
  %97 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %98 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %101 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @IEEE802154_ATTR_HW_ADDR, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @nla_get_hwaddr(i64 %105)
  %107 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %108 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  br label %110

110:                                              ; preds = %95, %80
  br label %111

111:                                              ; preds = %110, %19
  %112 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %113 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IEEE802154_SCF_KEY_IMPLICIT, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %119 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_ID, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %203

128:                                              ; preds = %117, %111
  %129 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %130 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 128
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %135 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %133
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %203

144:                                              ; preds = %133, %128
  %145 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %146 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 129
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %151 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %203

160:                                              ; preds = %149, %144
  %161 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %162 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @IEEE802154_SCF_KEY_IMPLICIT, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %168 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_ID, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i8* @nla_get_u8(i64 %172)
  %174 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %175 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %166, %160
  %177 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %178 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  switch i32 %179, label %202 [
    i32 128, label %180
    i32 129, label %192
  ]

180:                                              ; preds = %176
  %181 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %182 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @nla_get_u32(i64 %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @cpu_to_le32(i32 %188)
  %190 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %191 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  br label %202

192:                                              ; preds = %176
  %193 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %194 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = load i64, i64* @IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = call i8* @nla_get_hwaddr(i64 %198)
  %200 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %201 = getelementptr inbounds %struct.ieee802154_llsec_key_id, %struct.ieee802154_llsec_key_id* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %176, %192, %180
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %157, %141, %125, %59, %16
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @memset(%struct.ieee802154_llsec_key_id*, i32, i32) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i8* @nla_get_shortaddr(i64) #1

declare dso_local i8* @nla_get_hwaddr(i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
