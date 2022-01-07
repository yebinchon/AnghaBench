; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_owner.c_owner_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_owner.c_owner_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.net*, %struct.xt_owner_match_info* }
%struct.net = type { i64 }
%struct.xt_owner_match_info = type { i32, i64, i64, i64, i64 }

@XT_OWNER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XT_OWNER_UID = common dso_local global i32 0, align 4
@XT_OWNER_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @owner_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owner_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_owner_match_info*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %10 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %11 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %10, i32 0, i32 1
  %12 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %11, align 8
  store %struct.xt_owner_match_info* %12, %struct.xt_owner_match_info** %4, align 8
  %13 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %14 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %13, i32 0, i32 0
  %15 = load %struct.net*, %struct.net** %14, align 8
  store %struct.net* %15, %struct.net** %5, align 8
  %16 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %17 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XT_OWNER_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %137

26:                                               ; preds = %1
  %27 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %28 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @XT_OWNER_UID, align 4
  %31 = load i32, i32* @XT_OWNER_GID, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = call i64 (...) @current_user_ns()
  %37 = load %struct.net*, %struct.net** %5, align 8
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %137

44:                                               ; preds = %35, %26
  %45 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %46 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XT_OWNER_UID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %44
  %52 = load %struct.net*, %struct.net** %5, align 8
  %53 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %56 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @make_kuid(i64 %54, i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.net*, %struct.net** %5, align 8
  %60 = getelementptr inbounds %struct.net, %struct.net* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %63 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @make_kuid(i64 %61, i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @uid_valid(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %51
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @uid_valid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %75 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %78 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @uid_lt(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %73, %69, %51
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %137

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %44
  %91 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %92 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @XT_OWNER_GID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %90
  %98 = load %struct.net*, %struct.net** %5, align 8
  %99 = getelementptr inbounds %struct.net, %struct.net* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %102 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @make_kgid(i64 %100, i64 %103)
  store i32 %104, i32* %8, align 4
  %105 = load %struct.net*, %struct.net** %5, align 8
  %106 = getelementptr inbounds %struct.net, %struct.net* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %109 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @make_kgid(i64 %107, i64 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @gid_valid(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %97
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @gid_valid(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %121 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %4, align 8
  %124 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i64 @gid_lt(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %119, %115, %97
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %137

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %90
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %132, %86, %41, %23
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @current_user_ns(...) #1

declare dso_local i32 @make_kuid(i64, i64) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i64 @uid_lt(i32, i32) #1

declare dso_local i32 @make_kgid(i64, i64) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i64 @gid_lt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
