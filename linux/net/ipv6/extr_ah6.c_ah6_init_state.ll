; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ah6_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ah6_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ah_data*, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.ah_data = type { i32, i32, %struct.crypto_ahash* }
%struct.crypto_ahash = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"AH: %s digestsize %u != %hu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @ah6_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah6_init_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.ah_data*, align 8
  %5 = alloca %struct.xfrm_algo_desc*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.ah_data* null, %struct.ah_data** %4, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %138

12:                                               ; preds = %1
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %138

18:                                               ; preds = %12
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ah_data* @kzalloc(i32 16, i32 %19)
  store %struct.ah_data* %20, %struct.ah_data** %4, align 8
  %21 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %22 = icmp ne %struct.ah_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %151

26:                                               ; preds = %18
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.crypto_ahash* @crypto_alloc_ahash(i32 %31, i32 0, i32 0)
  store %struct.crypto_ahash* %32, %struct.crypto_ahash** %6, align 8
  %33 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %34 = call i64 @IS_ERR(%struct.crypto_ahash* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %138

37:                                               ; preds = %26
  %38 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %39 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %40 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %39, i32 0, i32 2
  store %struct.crypto_ahash* %38, %struct.crypto_ahash** %40, align 8
  %41 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %43 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 7
  %53 = sdiv i32 %52, 8
  %54 = call i64 @crypto_ahash_setkey(%struct.crypto_ahash* %41, i32 %46, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %138

57:                                               ; preds = %37
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %59 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32 %62, i32 0)
  store %struct.xfrm_algo_desc* %63, %struct.xfrm_algo_desc** %5, align 8
  %64 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %65 = icmp ne %struct.xfrm_algo_desc* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %70 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 8
  %75 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %76 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %75)
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %57
  %79 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %80 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %85 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %84)
  %86 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %87 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, 8
  %92 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %85, i32 %91)
  br label %138

93:                                               ; preds = %57
  %94 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %95 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 8
  %100 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %101 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 8
  %108 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %109 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %111 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 4, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @XFRM_ALIGN8(i32 %115)
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %121 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %133 [
    i32 130, label %124
    i32 129, label %124
    i32 128, label %125
  ]

124:                                              ; preds = %93, %93
  br label %134

125:                                              ; preds = %93
  %126 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %127 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 4
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 8
  br label %134

133:                                              ; preds = %93
  br label %138

134:                                              ; preds = %125, %124
  %135 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %136 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %137 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %136, i32 0, i32 0
  store %struct.ah_data* %135, %struct.ah_data** %137, align 8
  store i32 0, i32* %2, align 4
  br label %151

138:                                              ; preds = %133, %78, %56, %36, %17, %11
  %139 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %140 = icmp ne %struct.ah_data* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %143 = getelementptr inbounds %struct.ah_data, %struct.ah_data* %142, i32 0, i32 2
  %144 = load %struct.crypto_ahash*, %struct.crypto_ahash** %143, align 8
  %145 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %144)
  %146 = load %struct.ah_data*, %struct.ah_data** %4, align 8
  %147 = call i32 @kfree(%struct.ah_data* %146)
  br label %148

148:                                              ; preds = %141, %138
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %134, %23
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.ah_data* @kzalloc(i32, i32) #1

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #1

declare dso_local i64 @crypto_ahash_setkey(%struct.crypto_ahash*, i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byname(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @XFRM_ALIGN8(i32) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

declare dso_local i32 @kfree(%struct.ah_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
