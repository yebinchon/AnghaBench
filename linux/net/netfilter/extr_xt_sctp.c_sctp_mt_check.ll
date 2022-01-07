; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_sctp.c_sctp_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_sctp.c_sctp_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_sctp_info* }
%struct.xt_sctp_info = type { i32, i32, i32 }

@XT_SCTP_VALID_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XT_SCTP_CHUNK_TYPES = common dso_local global i32 0, align 4
@SCTP_CHUNK_MATCH_ALL = common dso_local global i32 0, align 4
@SCTP_CHUNK_MATCH_ANY = common dso_local global i32 0, align 4
@SCTP_CHUNK_MATCH_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @sctp_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_sctp_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 0
  %7 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  store %struct.xt_sctp_info* %7, %struct.xt_sctp_info** %4, align 8
  %8 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %4, align 8
  %9 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @XT_SCTP_VALID_FLAGS, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %4, align 8
  %20 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XT_SCTP_VALID_FLAGS, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %65

29:                                               ; preds = %18
  %30 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %4, align 8
  %31 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %4, align 8
  %34 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %65

42:                                               ; preds = %29
  %43 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %4, align 8
  %44 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XT_SCTP_CHUNK_TYPES, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %65

50:                                               ; preds = %42
  %51 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %4, align 8
  %52 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SCTP_CHUNK_MATCH_ALL, align 4
  %55 = load i32, i32* @SCTP_CHUNK_MATCH_ANY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SCTP_CHUNK_MATCH_ONLY, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %61, %49, %39, %26, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
