; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.xt_mtchk_param*)*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [63 x i8] c"%s_tables: %s.%u match: invalid size %u (kernel) != (user) %u\0A\00", align 1
@xt_prefix = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s_tables: %s match: only valid in %s table, not %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"%s_tables: %s match: used from hooks %s, but only valid from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s_tables: %s match: only valid for protocol %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xt_check_match(%struct.xt_mtchk_param* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xt_mtchk_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %14 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @XT_ALIGN(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %4
  %22 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %23 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %55

28:                                               ; preds = %21
  %29 = load i32*, i32** @xt_prefix, align 8
  %30 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %31 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %36 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %41 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %46 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @XT_ALIGN(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i32 %44, i32 %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %215

55:                                               ; preds = %21, %4
  %56 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %57 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %97

62:                                               ; preds = %55
  %63 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %64 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %69 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @strcmp(i32* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %62
  %74 = load i32*, i32** @xt_prefix, align 8
  %75 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %76 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %81 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %86 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = ptrtoint i32* %89 to i32
  %91 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %92 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, i32, i32, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %84, i32 %90, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %215

97:                                               ; preds = %62, %55
  %98 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %99 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %149

104:                                              ; preds = %97
  %105 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %106 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %109 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %107, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %104
  %117 = load i32*, i32** @xt_prefix, align 8
  %118 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %119 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %124 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %129 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %130 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %133 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @textify_hooks(i8* %128, i32 64, i32 %131, i64 %134)
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %137 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %138 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %143 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @textify_hooks(i8* %136, i32 64, i32 %141, i64 %144)
  %146 = call i32 (i8*, i32, i32, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %127, i32 %135, i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %215

149:                                              ; preds = %104, %97
  %150 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %151 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %149
  %157 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %158 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %157, i32 0, i32 2
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %164, %156
  %168 = load i32*, i32** @xt_prefix, align 8
  %169 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %170 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %175 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %174, i32 0, i32 2
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %180 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %179, i32 0, i32 2
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i8*, i32, i32, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %173, i32 %178, i32 %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %215

187:                                              ; preds = %164, %149
  %188 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %189 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  %192 = load i32 (%struct.xt_mtchk_param*)*, i32 (%struct.xt_mtchk_param*)** %191, align 8
  %193 = icmp ne i32 (%struct.xt_mtchk_param*)* %192, null
  br i1 %193, label %194, label %214

194:                                              ; preds = %187
  %195 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %196 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %195, i32 0, i32 2
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i32 (%struct.xt_mtchk_param*)*, i32 (%struct.xt_mtchk_param*)** %198, align 8
  %200 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %201 = call i32 %199(%struct.xt_mtchk_param* %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %194
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %5, align 4
  br label %215

206:                                              ; preds = %194
  %207 = load i32, i32* %10, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* @EIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %215

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213, %187
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %214, %209, %204, %167, %116, %73, %28
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @XT_ALIGN(i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @textify_hooks(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
