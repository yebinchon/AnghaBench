; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v1_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_set.c_set_target_v1_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, %struct.xt_set_info_target_v1* }
%struct.xt_set_info_target_v1 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot find add_set index %u as target\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot find del_set index %u as target\0A\00", align 1
@IPSET_DIM_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"SET target dimension over the limit!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @set_target_v1_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_v1_checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_set_info_target_v1*, align 8
  %5 = alloca i64, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %7, align 8
  store %struct.xt_set_info_target_v1* %8, %struct.xt_set_info_target_v1** %4, align 8
  %9 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPSET_INVALID_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %17 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %20 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @ip_set_nfnl_get_byindex(i32 %18, i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @IPSET_INVALID_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %29 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %131

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %38 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPSET_INVALID_ID, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %36
  %44 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %45 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %48 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ip_set_nfnl_get_byindex(i32 %46, i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @IPSET_INVALID_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %43
  %56 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %57 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %62 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IPSET_INVALID_ID, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %55
  %68 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %69 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %72 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ip_set_nfnl_put(i32 %70, i64 %74)
  br label %76

76:                                               ; preds = %67, %55
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %131

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %36
  %81 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %82 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IPSET_DIM_MAX, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %89 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IPSET_DIM_MAX, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %87, %80
  %95 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %97 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IPSET_INVALID_ID, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %104 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %107 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ip_set_nfnl_put(i32 %105, i64 %109)
  br label %111

111:                                              ; preds = %102, %94
  %112 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %113 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IPSET_INVALID_ID, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %120 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.xt_set_info_target_v1*, %struct.xt_set_info_target_v1** %4, align 8
  %123 = getelementptr inbounds %struct.xt_set_info_target_v1, %struct.xt_set_info_target_v1* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ip_set_nfnl_put(i32 %121, i64 %125)
  br label %127

127:                                              ; preds = %118, %111
  %128 = load i32, i32* @ERANGE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %127, %76, %27
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @ip_set_nfnl_get_byindex(i32, i64) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i32 @ip_set_nfnl_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
