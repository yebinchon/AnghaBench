; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.xt_tgchk_param*)*, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"%s_tables: %s.%u target: invalid size %u (kernel) != (user) %u\0A\00", align 1
@xt_prefix = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s_tables: %s target: only valid in %s table, not %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"%s_tables: %s target: used from hooks %s, but only usable from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s_tables: %s target: only valid for protocol %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xt_check_target(%struct.xt_tgchk_param* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xt_tgchk_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %14 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @XT_ALIGN(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %4
  %22 = load i32*, i32** @xt_prefix, align 8
  %23 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %24 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %29 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %34 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %39 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @XT_ALIGN(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %37, i32 %43, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %208

48:                                               ; preds = %4
  %49 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %50 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %90

55:                                               ; preds = %48
  %56 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %57 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %62 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @strcmp(i32* %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %55
  %67 = load i32*, i32** @xt_prefix, align 8
  %68 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %69 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %74 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %79 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = ptrtoint i32* %82 to i32
  %84 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %85 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, i32, i32, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %77, i32 %83, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %208

90:                                               ; preds = %55, %48
  %91 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %92 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %142

97:                                               ; preds = %90
  %98 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %99 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %102 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = xor i32 %105, -1
  %107 = and i32 %100, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %97
  %110 = load i32*, i32** @xt_prefix, align 8
  %111 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %112 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %117 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %122 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %123 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %126 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @textify_hooks(i8* %121, i32 64, i32 %124, i64 %127)
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %130 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %131 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %136 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @textify_hooks(i8* %129, i32 64, i32 %134, i64 %137)
  %139 = call i32 (i8*, i32, i32, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %120, i32 %128, i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %208

142:                                              ; preds = %97, %90
  %143 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %144 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %143, i32 0, i32 2
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %180

149:                                              ; preds = %142
  %150 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %151 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %160, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %157, %149
  %161 = load i32*, i32** @xt_prefix, align 8
  %162 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %163 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %168 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %173 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, i32, i32, i32, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %171, i32 %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %208

180:                                              ; preds = %157, %142
  %181 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %182 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32 (%struct.xt_tgchk_param*)*, i32 (%struct.xt_tgchk_param*)** %184, align 8
  %186 = icmp ne i32 (%struct.xt_tgchk_param*)* %185, null
  br i1 %186, label %187, label %207

187:                                              ; preds = %180
  %188 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %189 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32 (%struct.xt_tgchk_param*)*, i32 (%struct.xt_tgchk_param*)** %191, align 8
  %193 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %194 = call i32 %192(%struct.xt_tgchk_param* %193)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %5, align 4
  br label %208

199:                                              ; preds = %187
  %200 = load i32, i32* %10, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* @EIO, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %5, align 4
  br label %208

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206, %180
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %202, %197, %160, %109, %66, %21
  %209 = load i32, i32* %5, align 4
  ret i32 %209
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
