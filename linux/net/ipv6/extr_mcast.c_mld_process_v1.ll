; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_process_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_process_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32 }
%struct.mld_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLDV1_MRD_MAX_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*, %struct.mld_msg*, i64*, i32)* @mld_process_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mld_process_v1(%struct.inet6_dev* %0, %struct.mld_msg* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.mld_msg*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %6, align 8
  store %struct.mld_msg* %1, %struct.mld_msg** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %12 = call i64 @mld_in_v2_mode_only(%struct.inet6_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load %struct.mld_msg*, %struct.mld_msg** %7, align 8
  %19 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ntohs(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @MLDV1_MRD_MAX_COMPAT, align 4
  %27 = call i64 @min(i64 %25, i32 %26)
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @msecs_to_jiffies(i64 %29)
  %31 = call i64 @max(i32 %30, i64 1)
  %32 = load i64*, i64** %8, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %37 = call i32 @mld_set_v1_mode(%struct.inet6_dev* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %40 = call i32 @mld_gq_stop_timer(%struct.inet6_dev* %39)
  %41 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %42 = call i32 @mld_ifc_stop_timer(%struct.inet6_dev* %41)
  %43 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %44 = call i32 @mld_clear_delrec(%struct.inet6_dev* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %14
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @mld_in_v2_mode_only(%struct.inet6_dev*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mld_set_v1_mode(%struct.inet6_dev*) #1

declare dso_local i32 @mld_gq_stop_timer(%struct.inet6_dev*) #1

declare dso_local i32 @mld_ifc_stop_timer(%struct.inet6_dev*) #1

declare dso_local i32 @mld_clear_delrec(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
