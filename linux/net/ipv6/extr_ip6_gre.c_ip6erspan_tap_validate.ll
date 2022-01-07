; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_tap_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6erspan_tap_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_GRE_OFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_IFLAGS = common dso_local global i64 0, align 8
@IFLA_GRE_COLLECT_METADATA = common dso_local global i64 0, align 8
@GRE_SEQ = common dso_local global i32 0, align 4
@GRE_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFLA_GRE_IKEY = common dso_local global i64 0, align 8
@ID_MASK = common dso_local global i32 0, align 4
@IFLA_GRE_OKEY = common dso_local global i64 0, align 8
@IFLA_GRE_ERSPAN_VER = common dso_local global i64 0, align 8
@IFLA_GRE_ERSPAN_INDEX = common dso_local global i64 0, align 8
@INDEX_MASK = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_DIR = common dso_local global i64 0, align 8
@DIR_MASK = common dso_local global i32 0, align 4
@DIR_OFFSET = common dso_local global i32 0, align 4
@IFLA_GRE_ERSPAN_HWID = common dso_local global i64 0, align 8
@HWID_MASK = common dso_local global i32 0, align 4
@HWID_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip6erspan_tap_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6erspan_tap_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %15 = icmp ne %struct.nlattr** %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %207

17:                                               ; preds = %3
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %21 = call i32 @ip6gre_tap_validate(%struct.nlattr** %18, %struct.nlattr** %19, %struct.netlink_ext_ack* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %207

26:                                               ; preds = %17
  %27 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %28 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %34 = load i64, i64* @IFLA_GRE_OFLAGS, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @nla_get_be16(%struct.nlattr* %36)
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %42 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %48 = load i64, i64* @IFLA_GRE_IFLAGS, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @nla_get_be16(%struct.nlattr* %50)
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %56 = load i64, i64* @IFLA_GRE_COLLECT_METADATA, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @GRE_SEQ, align 4
  %63 = load i32, i32* @GRE_KEY, align 4
  %64 = or i32 %62, %63
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %207

69:                                               ; preds = %60, %54
  %70 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %71 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %77 = load i64, i64* @IFLA_GRE_IKEY, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call i32 @nla_get_be32(%struct.nlattr* %79)
  %81 = call i32 @ntohl(i32 %80)
  %82 = load i32, i32* @ID_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %207

89:                                               ; preds = %75, %69
  %90 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %91 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = icmp ne %struct.nlattr* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %97 = load i64, i64* @IFLA_GRE_OKEY, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %96, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i32 @nla_get_be32(%struct.nlattr* %99)
  %101 = call i32 @ntohl(i32 %100)
  %102 = load i32, i32* @ID_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %207

109:                                              ; preds = %95, %89
  %110 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %111 = load i64, i64* @IFLA_GRE_ERSPAN_VER, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = icmp ne %struct.nlattr* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %117 = load i64, i64* @IFLA_GRE_ERSPAN_VER, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = call i32 @nla_get_u8(%struct.nlattr* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %207

129:                                              ; preds = %123, %115
  br label %130

130:                                              ; preds = %129, %109
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %155

133:                                              ; preds = %130
  %134 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %135 = load i64, i64* @IFLA_GRE_ERSPAN_INDEX, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %134, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %133
  %140 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %141 = load i64, i64* @IFLA_GRE_ERSPAN_INDEX, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = call i32 @nla_get_u32(%struct.nlattr* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @INDEX_MASK, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %207

153:                                              ; preds = %139
  br label %154

154:                                              ; preds = %153, %133
  br label %206

155:                                              ; preds = %130
  %156 = load i32, i32* %10, align 4
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %205

158:                                              ; preds = %155
  %159 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %160 = load i64, i64* @IFLA_GRE_ERSPAN_DIR, align 8
  %161 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %159, i64 %160
  %162 = load %struct.nlattr*, %struct.nlattr** %161, align 8
  %163 = icmp ne %struct.nlattr* %162, null
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %166 = load i64, i64* @IFLA_GRE_ERSPAN_DIR, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i32 @nla_get_u8(%struct.nlattr* %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @DIR_MASK, align 4
  %172 = load i32, i32* @DIR_OFFSET, align 4
  %173 = ashr i32 %171, %172
  %174 = xor i32 %173, -1
  %175 = and i32 %170, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %207

180:                                              ; preds = %164
  br label %181

181:                                              ; preds = %180, %158
  %182 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %183 = load i64, i64* @IFLA_GRE_ERSPAN_HWID, align 8
  %184 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %182, i64 %183
  %185 = load %struct.nlattr*, %struct.nlattr** %184, align 8
  %186 = icmp ne %struct.nlattr* %185, null
  br i1 %186, label %187, label %204

187:                                              ; preds = %181
  %188 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %189 = load i64, i64* @IFLA_GRE_ERSPAN_HWID, align 8
  %190 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %188, i64 %189
  %191 = load %struct.nlattr*, %struct.nlattr** %190, align 8
  %192 = call i32 @nla_get_u16(%struct.nlattr* %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @HWID_MASK, align 4
  %195 = load i32, i32* @HWID_OFFSET, align 4
  %196 = ashr i32 %194, %195
  %197 = xor i32 %196, -1
  %198 = and i32 %193, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %187
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  br label %207

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203, %181
  br label %205

205:                                              ; preds = %204, %155
  br label %206

206:                                              ; preds = %205, %154
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %200, %177, %150, %126, %106, %86, %66, %24, %16
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @ip6gre_tap_validate(%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
