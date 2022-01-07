; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_check_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_check_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.net* }
%struct.net = type { i32 }
%struct.xt_hashlimit_htable = type { i32 }
%struct.hashlimit_cfg3 = type { i64, i64, i32, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@XT_HASHLIMIT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unknown mode mask %X, kernel too old?\0A\00", align 1
@XT_HASHLIMIT_RATE_MATCH = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid rate\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid interval\0A\00", align 1
@XT_HASHLIMIT_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"overflow, rate too high: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"overflow, try lower: %llu/%llu\0A\00", align 1
@hashlimit_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*, %struct.xt_hashlimit_htable**, %struct.hashlimit_cfg3*, i8*, i32)* @hashlimit_mt_check_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashlimit_mt_check_common(%struct.xt_mtchk_param* %0, %struct.xt_hashlimit_htable** %1, %struct.hashlimit_cfg3* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xt_mtchk_param*, align 8
  %8 = alloca %struct.xt_hashlimit_htable**, align 8
  %9 = alloca %struct.hashlimit_cfg3*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %7, align 8
  store %struct.xt_hashlimit_htable** %1, %struct.xt_hashlimit_htable*** %8, align 8
  store %struct.hashlimit_cfg3* %2, %struct.hashlimit_cfg3** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %7, align 8
  %15 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %14, i32 0, i32 1
  %16 = load %struct.net*, %struct.net** %15, align 8
  store %struct.net* %16, %struct.net** %12, align 8
  %17 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %18 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %23 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %197

29:                                               ; preds = %21
  %30 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %7, align 8
  %31 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NFPROTO_IPV4, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %37 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 32
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %42 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 32
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %197

48:                                               ; preds = %40
  br label %63

49:                                               ; preds = %29
  %50 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %51 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 128
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %56 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 128
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %49
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %197

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %65 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @XT_HASHLIMIT_ALL, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %73 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %197

78:                                               ; preds = %63
  %79 = load i32, i32* %11, align 4
  %80 = icmp sge i32 %79, 3
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %83 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @XT_HASHLIMIT_RATE_MATCH, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %81
  %89 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %90 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %95 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @U32_MAX, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %88
  %100 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @ERANGE, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %197

103:                                              ; preds = %93
  %104 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %105 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %197

112:                                              ; preds = %103
  br label %167

113:                                              ; preds = %81, %78
  %114 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %115 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @XT_HASHLIMIT_BYTES, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %122 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @user2credits_byte(i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %128 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %197

133:                                              ; preds = %120
  br label %166

134:                                              ; preds = %113
  %135 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %136 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %134
  %140 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %141 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %144 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %142, %145
  %147 = load i32, i32* %11, align 4
  %148 = call i64 @user2credits(i32 %146, i32 %147)
  %149 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %150 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i64 @user2credits(i32 %151, i32 %152)
  %154 = icmp slt i64 %148, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %139, %134
  %156 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %157 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %160 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load i32, i32* @ERANGE, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %197

165:                                              ; preds = %139
  br label %166

166:                                              ; preds = %165, %133
  br label %167

167:                                              ; preds = %166, %112
  %168 = call i32 @mutex_lock(i32* @hashlimit_mutex)
  %169 = load %struct.net*, %struct.net** %12, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %7, align 8
  %172 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call %struct.xt_hashlimit_htable* @htable_find_get(%struct.net* %169, i8* %170, i32 %173)
  %175 = load %struct.xt_hashlimit_htable**, %struct.xt_hashlimit_htable*** %8, align 8
  store %struct.xt_hashlimit_htable* %174, %struct.xt_hashlimit_htable** %175, align 8
  %176 = load %struct.xt_hashlimit_htable**, %struct.xt_hashlimit_htable*** %8, align 8
  %177 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %176, align 8
  %178 = icmp eq %struct.xt_hashlimit_htable* %177, null
  br i1 %178, label %179, label %195

179:                                              ; preds = %167
  %180 = load %struct.net*, %struct.net** %12, align 8
  %181 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %7, align 8
  %184 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.xt_hashlimit_htable**, %struct.xt_hashlimit_htable*** %8, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @htable_create(%struct.net* %180, %struct.hashlimit_cfg3* %181, i8* %182, i32 %185, %struct.xt_hashlimit_htable** %186, i32 %187)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %179
  %192 = call i32 @mutex_unlock(i32* @hashlimit_mutex)
  %193 = load i32, i32* %13, align 4
  store i32 %193, i32* %6, align 4
  br label %197

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %167
  %196 = call i32 @mutex_unlock(i32* @hashlimit_mutex)
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %195, %191, %155, %126, %108, %99, %71, %59, %45, %26
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i64 @user2credits_byte(i32) #1

declare dso_local i64 @user2credits(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xt_hashlimit_htable* @htable_find_get(%struct.net*, i8*, i32) #1

declare dso_local i32 @htable_create(%struct.net*, %struct.hashlimit_cfg3*, i8*, i32, %struct.xt_hashlimit_htable**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
