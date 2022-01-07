; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"d:D:e:f:Fhi:l:n:o:O:Rs:S:t:Tx:X:\00", align 1
@cfg_l3_outer = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"-d must be preceded by -o\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@out_daddr4 = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@out_daddr6 = common dso_local global i32 0, align 4
@cfg_l3_inner = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"-D must be preceded by -i\00", align 1
@in_daddr4 = common dso_local global i32 0, align 4
@in_daddr6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"gre\00", align 1
@IPPROTO_GRE = common dso_local global i64 0, align 8
@cfg_encap_proto = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"gue\00", align 1
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"bare\00", align 1
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@IPPROTO_IP = common dso_local global i64 0, align 8
@cfg_src_port = common dso_local global i8* null, align 8
@cfg_expect_failure = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@PF_INET6 = common dso_local global i64 0, align 8
@cfg_payload_len = common dso_local global i8* null, align 8
@cfg_num_pkt = common dso_local global i8* null, align 8
@cfg_l3_extra = common dso_local global i64 0, align 8
@cfg_only_rx = common dso_local global i32 0, align 4
@out_saddr4 = common dso_local global i32 0, align 4
@out_saddr6 = common dso_local global i32 0, align 4
@in_saddr4 = common dso_local global i32 0, align 4
@in_saddr6 = common dso_local global i32 0, align 4
@cfg_num_secs = common dso_local global i8* null, align 8
@cfg_only_tx = common dso_local global i32 0, align 4
@cfg_dsfield_outer = common dso_local global i32 0, align 4
@cfg_dsfield_inner = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"options: cannot combine rx-only and tx-only\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"options: must specify outer with encap\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"options: cannot combine no-encap and outer\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"options: cannot combine no-encap and extra\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %161, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %162

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %161 [
    i32 100, label %13
    i32 68, label %30
    i32 101, label %47
    i32 102, label %80
    i32 70, label %83
    i32 104, label %84
    i32 105, label %89
    i32 108, label %108
    i32 110, label %111
    i32 111, label %114
    i32 79, label %120
    i32 82, label %126
    i32 115, label %127
    i32 83, label %138
    i32 116, label %149
    i32 84, label %152
    i32 120, label %153
    i32 88, label %157
  ]

13:                                               ; preds = %11
  %14 = load i64, i64* @cfg_l3_outer, align 8
  %15 = load i64, i64* @AF_UNSPEC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i64, i64* @cfg_l3_outer, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @optarg, align 4
  %25 = call i32 @parse_addr4(i32* @out_daddr4, i32 %24)
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @parse_addr6(i32* @out_daddr6, i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %161

30:                                               ; preds = %11
  %31 = load i64, i64* @cfg_l3_inner, align 8
  %32 = load i64, i64* @AF_UNSPEC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, i64* @cfg_l3_inner, align 8
  %38 = load i64, i64* @AF_INET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @optarg, align 4
  %42 = call i32 @parse_addr4(i32* @in_daddr4, i32 %41)
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @optarg, align 4
  %45 = call i32 @parse_addr6(i32* @in_daddr6, i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %161

47:                                               ; preds = %11
  %48 = load i32, i32* @optarg, align 4
  %49 = call i32 @strcmp(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* @IPPROTO_GRE, align 8
  store i64 %52, i64* @cfg_encap_proto, align 8
  br label %79

53:                                               ; preds = %47
  %54 = load i32, i32* @optarg, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @IPPROTO_UDP, align 8
  store i64 %58, i64* @cfg_encap_proto, align 8
  br label %78

59:                                               ; preds = %53
  %60 = load i32, i32* @optarg, align 4
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* @IPPROTO_IPIP, align 8
  store i64 %64, i64* @cfg_encap_proto, align 8
  br label %77

65:                                               ; preds = %59
  %66 = load i32, i32* @optarg, align 4
  %67 = call i32 @strcmp(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* @IPPROTO_IP, align 8
  store i64 %70, i64* @cfg_encap_proto, align 8
  br label %76

71:                                               ; preds = %65
  %72 = load i8**, i8*** %4, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @usage(i8* %74)
  br label %76

76:                                               ; preds = %71, %69
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %51
  br label %161

80:                                               ; preds = %11
  %81 = load i32, i32* @optarg, align 4
  %82 = call i8* @strtol(i32 %81, i32* null, i32 0)
  store i8* %82, i8** @cfg_src_port, align 8
  br label %161

83:                                               ; preds = %11
  store i32 1, i32* @cfg_expect_failure, align 4
  br label %161

84:                                               ; preds = %11
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @usage(i8* %87)
  br label %161

89:                                               ; preds = %11
  %90 = load i32, i32* @optarg, align 4
  %91 = call i32 @strcmp(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* @PF_INET, align 8
  store i64 %94, i64* @cfg_l3_inner, align 8
  br label %107

95:                                               ; preds = %89
  %96 = load i32, i32* @optarg, align 4
  %97 = call i32 @strcmp(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* @PF_INET6, align 8
  store i64 %100, i64* @cfg_l3_inner, align 8
  br label %106

101:                                              ; preds = %95
  %102 = load i8**, i8*** %4, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @usage(i8* %104)
  br label %106

106:                                              ; preds = %101, %99
  br label %107

107:                                              ; preds = %106, %93
  br label %161

108:                                              ; preds = %11
  %109 = load i32, i32* @optarg, align 4
  %110 = call i8* @strtol(i32 %109, i32* null, i32 0)
  store i8* %110, i8** @cfg_payload_len, align 8
  br label %161

111:                                              ; preds = %11
  %112 = load i32, i32* @optarg, align 4
  %113 = call i8* @strtol(i32 %112, i32* null, i32 0)
  store i8* %113, i8** @cfg_num_pkt, align 8
  br label %161

114:                                              ; preds = %11
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* @optarg, align 4
  %119 = call i64 @parse_protocol_family(i8* %117, i32 %118)
  store i64 %119, i64* @cfg_l3_outer, align 8
  br label %161

120:                                              ; preds = %11
  %121 = load i8**, i8*** %4, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @optarg, align 4
  %125 = call i64 @parse_protocol_family(i8* %123, i32 %124)
  store i64 %125, i64* @cfg_l3_extra, align 8
  br label %161

126:                                              ; preds = %11
  store i32 1, i32* @cfg_only_rx, align 4
  br label %161

127:                                              ; preds = %11
  %128 = load i64, i64* @cfg_l3_outer, align 8
  %129 = load i64, i64* @AF_INET, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* @optarg, align 4
  %133 = call i32 @parse_addr4(i32* @out_saddr4, i32 %132)
  br label %137

134:                                              ; preds = %127
  %135 = load i32, i32* @optarg, align 4
  %136 = call i32 @parse_addr6(i32* @out_saddr6, i32 %135)
  br label %137

137:                                              ; preds = %134, %131
  br label %161

138:                                              ; preds = %11
  %139 = load i64, i64* @cfg_l3_inner, align 8
  %140 = load i64, i64* @AF_INET, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @optarg, align 4
  %144 = call i32 @parse_addr4(i32* @in_saddr4, i32 %143)
  br label %148

145:                                              ; preds = %138
  %146 = load i32, i32* @optarg, align 4
  %147 = call i32 @parse_addr6(i32* @in_saddr6, i32 %146)
  br label %148

148:                                              ; preds = %145, %142
  br label %161

149:                                              ; preds = %11
  %150 = load i32, i32* @optarg, align 4
  %151 = call i8* @strtol(i32 %150, i32* null, i32 0)
  store i8* %151, i8** @cfg_num_secs, align 8
  br label %161

152:                                              ; preds = %11
  store i32 1, i32* @cfg_only_tx, align 4
  br label %161

153:                                              ; preds = %11
  %154 = load i32, i32* @optarg, align 4
  %155 = call i8* @strtol(i32 %154, i32* null, i32 0)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* @cfg_dsfield_outer, align 4
  br label %161

157:                                              ; preds = %11
  %158 = load i32, i32* @optarg, align 4
  %159 = call i8* @strtol(i32 %158, i32* null, i32 0)
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* @cfg_dsfield_inner, align 4
  br label %161

161:                                              ; preds = %11, %157, %153, %152, %149, %148, %137, %126, %120, %114, %111, %108, %107, %84, %83, %80, %79, %46, %29
  br label %6

162:                                              ; preds = %6
  %163 = load i32, i32* @cfg_only_rx, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* @cfg_only_tx, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %165, %162
  %171 = load i64, i64* @cfg_encap_proto, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i64, i64* @cfg_l3_outer, align 8
  %175 = load i64, i64* @AF_UNSPEC, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %199

179:                                              ; preds = %173, %170
  %180 = load i64, i64* @cfg_encap_proto, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load i64, i64* @cfg_l3_outer, align 8
  %184 = load i64, i64* @AF_UNSPEC, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  br label %198

188:                                              ; preds = %182, %179
  %189 = load i64, i64* @cfg_encap_proto, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load i64, i64* @cfg_l3_extra, align 8
  %193 = load i64, i64* @AF_UNSPEC, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %197

197:                                              ; preds = %195, %191, %188
  br label %198

198:                                              ; preds = %197, %186
  br label %199

199:                                              ; preds = %198, %177
  %200 = load i64, i64* @cfg_l3_inner, align 8
  %201 = load i64, i64* @AF_UNSPEC, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i64, i64* @AF_INET6, align 8
  store i64 %204, i64* @cfg_l3_inner, align 8
  br label %205

205:                                              ; preds = %203, %199
  %206 = load i64, i64* @cfg_l3_inner, align 8
  %207 = load i64, i64* @AF_INET6, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i64, i64* @cfg_encap_proto, align 8
  %211 = load i64, i64* @IPPROTO_IPIP, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i64, i64* @IPPROTO_IPV6, align 8
  store i64 %214, i64* @cfg_encap_proto, align 8
  br label %215

215:                                              ; preds = %213, %209, %205
  %216 = load i32, i32* @cfg_dsfield_outer, align 4
  %217 = and i32 %216, 3
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load i32, i32* @cfg_dsfield_inner, align 4
  %221 = and i32 %220, 3
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i32 1, i32* @cfg_expect_failure, align 4
  br label %224

224:                                              ; preds = %223, %219, %215
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @parse_addr4(i32*, i32) #1

declare dso_local i32 @parse_addr6(i32*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strtol(i32, i32*, i32) #1

declare dso_local i64 @parse_protocol_family(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
