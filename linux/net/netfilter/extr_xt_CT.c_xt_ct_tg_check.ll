; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32 }
%struct.xt_ct_target_info_v1 = type { i32, %struct.nf_conn*, i64*, i64*, i32, i32, i64 }
%struct.nf_conn = type { i32, i32 }
%struct.nf_conntrack_zone = type { i32, i32, i64 }
%struct.nf_conn_help = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XT_CT_NOTRACK = common dso_local global i32 0, align 4
@XT_CT_ZONE_DIR_ORIG = common dso_local global i32 0, align 4
@XT_CT_ZONE_DIR_REPL = common dso_local global i32 0, align 4
@XT_CT_ZONE_MARK = common dso_local global i32 0, align 4
@NF_CT_FLAG_MARK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@IPS_CONFIRMED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*, %struct.xt_ct_target_info_v1*)* @xt_ct_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_ct_tg_check(%struct.xt_tgchk_param* %0, %struct.xt_ct_target_info_v1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_tgchk_param*, align 8
  %5 = alloca %struct.xt_ct_target_info_v1*, align 8
  %6 = alloca %struct.nf_conntrack_zone, align 8
  %7 = alloca %struct.nf_conn_help*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %4, align 8
  store %struct.xt_ct_target_info_v1* %1, %struct.xt_ct_target_info_v1** %5, align 8
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %13 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XT_CT_NOTRACK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.nf_conn* null, %struct.nf_conn** %8, align 8
  br label %166

19:                                               ; preds = %2
  %20 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %21 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %26 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XT_CT_ZONE_DIR_ORIG, align 4
  %29 = load i32, i32* @XT_CT_ZONE_DIR_REPL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @XT_CT_ZONE_MARK, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24, %19
  br label %192

36:                                               ; preds = %24
  %37 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %4, align 8
  %38 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %4, align 8
  %41 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nf_ct_netns_get(i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %192

47:                                               ; preds = %36
  %48 = call i32 @memset(%struct.nf_conntrack_zone* %6, i32 0, i32 16)
  %49 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %50 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %6, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %54 = call i32 @xt_ct_flags_to_dir(%struct.xt_ct_target_info_v1* %53)
  %55 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %6, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %57 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @XT_CT_ZONE_MARK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load i32, i32* @NF_CT_FLAG_MARK, align 4
  %64 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %47
  %68 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %4, align 8
  %69 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.nf_conn* @nf_ct_tmpl_alloc(i32 %70, %struct.nf_conntrack_zone* %6, i32 %71)
  store %struct.nf_conn* %72, %struct.nf_conn** %8, align 8
  %73 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %74 = icmp ne %struct.nf_conn* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %184

78:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  %79 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %80 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %85 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83, %78
  %89 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %90 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %91 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %94 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i32 @nf_ct_ecache_ext_add(%struct.nf_conn* %89, i32 %92, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %181

102:                                              ; preds = %88, %83
  %103 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %104 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  %110 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %111 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = call i32 @strnlen(i64* %112, i32 8)
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %114, 8
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @ENAMETOOLONG, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %181

119:                                              ; preds = %109
  %120 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %121 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %122 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %4, align 8
  %125 = call i32 @xt_ct_set_helper(%struct.nf_conn* %120, i64* %123, %struct.xt_tgchk_param* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %181

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %102
  %131 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %132 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %130
  %138 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %139 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %138, i32 0, i32 2
  %140 = load i64*, i64** %139, align 8
  %141 = call i32 @strnlen(i64* %140, i32 8)
  %142 = sext i32 %141 to i64
  %143 = icmp eq i64 %142, 8
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @ENAMETOOLONG, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %9, align 4
  br label %170

147:                                              ; preds = %137
  %148 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %149 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %4, align 8
  %150 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %151 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %150, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = call i32 @xt_ct_set_timeout(%struct.nf_conn* %148, %struct.xt_tgchk_param* %149, i64* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %170

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %130
  %159 = load i32, i32* @IPS_CONFIRMED_BIT, align 4
  %160 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %161 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %160, i32 0, i32 1
  %162 = call i32 @__set_bit(i32 %159, i32* %161)
  %163 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %164 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %163, i32 0, i32 0
  %165 = call i32 @nf_conntrack_get(i32* %164)
  br label %166

166:                                              ; preds = %158, %18
  %167 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %168 = load %struct.xt_ct_target_info_v1*, %struct.xt_ct_target_info_v1** %5, align 8
  %169 = getelementptr inbounds %struct.xt_ct_target_info_v1, %struct.xt_ct_target_info_v1* %168, i32 0, i32 1
  store %struct.nf_conn* %167, %struct.nf_conn** %169, align 8
  store i32 0, i32* %3, align 4
  br label %194

170:                                              ; preds = %156, %144
  %171 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %172 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %171)
  store %struct.nf_conn_help* %172, %struct.nf_conn_help** %7, align 8
  %173 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %174 = icmp ne %struct.nf_conn_help* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %177 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @nf_conntrack_helper_put(i32 %178)
  br label %180

180:                                              ; preds = %175, %170
  br label %181

181:                                              ; preds = %180, %128, %116, %99
  %182 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %183 = call i32 @nf_ct_tmpl_free(%struct.nf_conn* %182)
  br label %184

184:                                              ; preds = %181, %75
  %185 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %4, align 8
  %186 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %4, align 8
  %189 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @nf_ct_netns_put(i32 %187, i32 %190)
  br label %192

192:                                              ; preds = %184, %46, %35
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %166
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

declare dso_local i32 @memset(%struct.nf_conntrack_zone*, i32, i32) #1

declare dso_local i32 @xt_ct_flags_to_dir(%struct.xt_ct_target_info_v1*) #1

declare dso_local %struct.nf_conn* @nf_ct_tmpl_alloc(i32, %struct.nf_conntrack_zone*, i32) #1

declare dso_local i32 @nf_ct_ecache_ext_add(%struct.nf_conn*, i32, i32, i32) #1

declare dso_local i32 @strnlen(i64*, i32) #1

declare dso_local i32 @xt_ct_set_helper(%struct.nf_conn*, i64*, %struct.xt_tgchk_param*) #1

declare dso_local i32 @xt_ct_set_timeout(%struct.nf_conn*, %struct.xt_tgchk_param*, i64*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_helper_put(i32) #1

declare dso_local i32 @nf_ct_tmpl_free(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_netns_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
