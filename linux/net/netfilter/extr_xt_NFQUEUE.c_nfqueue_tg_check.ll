; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.TYPE_2__*, %struct.xt_NFQ_info_v3* }
%struct.TYPE_2__ = type { i32 }
%struct.xt_NFQ_info_v3 = type { i32, i32, i32 }

@jhash_initval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"number of total queues is 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"number of queues (%u) out of range (got %u)\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NFQ_FLAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @nfqueue_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqueue_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_NFQ_info_v3*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %7, align 8
  store %struct.xt_NFQ_info_v3* %8, %struct.xt_NFQ_info_v3** %4, align 8
  %9 = call i32 @init_hashrandom(i32* @jhash_initval)
  %10 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %4, align 8
  %11 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %4, align 8
  %20 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %4, align 8
  %24 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 65535
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %4, align 8
  %31 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @ERANGE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %18
  %38 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %39 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %4, align 8
  %46 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %44, %37
  %53 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %54 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.xt_NFQ_info_v3*, %struct.xt_NFQ_info_v3** %4, align 8
  %61 = getelementptr inbounds %struct.xt_NFQ_info_v3, %struct.xt_NFQ_info_v3* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NFQ_FLAG_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %59, %52
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %67, %49, %29, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @init_hashrandom(i32*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
