; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v0_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v0_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, %struct.xt_set_info_target_v0* }
%struct.xt_set_info_target_v0 = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot find add_set index %u as target\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot find del_set index %u as target\0A\00", align 1
@IPSET_DIM_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"SET target dimension over the limit!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @set_target_v0_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v0_checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_set_info_target_v0*, align 8
  %5 = alloca i64, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %7, align 8
  store %struct.xt_set_info_target_v0* %8, %struct.xt_set_info_target_v0** %4, align 8
  %9 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPSET_INVALID_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %17 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %20 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @ip_set_nfnl_get_byindex(i32 %18, i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @IPSET_INVALID_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %29 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %147

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %38 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPSET_INVALID_ID, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %36
  %44 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %45 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %48 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ip_set_nfnl_get_byindex(i32 %46, i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @IPSET_INVALID_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %43
  %56 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %57 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %62 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IPSET_INVALID_ID, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %55
  %68 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %69 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %72 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ip_set_nfnl_put(i32 %70, i64 %74)
  br label %76

76:                                               ; preds = %67, %55
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %147

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %36
  %81 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %82 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* @IPSET_DIM_MAX, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %80
  %93 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %94 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* @IPSET_DIM_MAX, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %92, %80
  %105 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %107 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IPSET_INVALID_ID, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %114 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %117 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ip_set_nfnl_put(i32 %115, i64 %119)
  br label %121

121:                                              ; preds = %112, %104
  %122 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %123 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IPSET_INVALID_ID, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %130 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %133 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @ip_set_nfnl_put(i32 %131, i64 %135)
  br label %137

137:                                              ; preds = %128, %121
  %138 = load i32, i32* @ERANGE, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %147

140:                                              ; preds = %92
  %141 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %142 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %141, i32 0, i32 1
  %143 = call i32 @compat_flags(%struct.TYPE_4__* %142)
  %144 = load %struct.xt_set_info_target_v0*, %struct.xt_set_info_target_v0** %4, align 8
  %145 = getelementptr inbounds %struct.xt_set_info_target_v0, %struct.xt_set_info_target_v0* %144, i32 0, i32 0
  %146 = call i32 @compat_flags(%struct.TYPE_4__* %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %140, %137, %76, %27
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @ip_set_nfnl_get_byindex(i32, i64) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i32 @ip_set_nfnl_put(i32, i64) #1

declare dso_local i32 @compat_flags(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
