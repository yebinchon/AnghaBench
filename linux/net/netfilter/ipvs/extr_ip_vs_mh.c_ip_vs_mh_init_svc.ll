; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_init_svc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_init_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { %struct.ip_vs_mh_state* }
%struct.ip_vs_mh_state = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IP_VS_MH_TAB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"MH lookup table (memory=%zdbytes) allocated for current service\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*)* @ip_vs_mh_init_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_mh_init_svc(%struct.ip_vs_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_mh_state*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ip_vs_mh_state* @kzalloc(i32 24, i32 %6)
  store %struct.ip_vs_mh_state* %7, %struct.ip_vs_mh_state** %5, align 8
  %8 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %9 = icmp ne %struct.ip_vs_mh_state* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kcalloc(i32 %14, i32 4, i32 %15)
  %17 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %18 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %20 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %25 = call i32 @kfree(%struct.ip_vs_mh_state* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %13
  %29 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %30 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %29, i32 0, i32 4
  %31 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %32 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %31, i32 0, i32 3
  %33 = call i32 @generate_hash_secret(i32* %30, i32* %32)
  %34 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %35 = call i32 @ip_vs_mh_gcd_weight(%struct.ip_vs_service* %34)
  %36 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %37 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %39 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %40 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ip_vs_mh_shift_weight(%struct.ip_vs_service* %38, i32 %41)
  %43 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %44 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @IP_VS_DBG(i32 6, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %51 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %52 = call i32 @ip_vs_mh_reassign(%struct.ip_vs_mh_state* %50, %struct.ip_vs_service* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %28
  %56 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %57 = call i32 @ip_vs_mh_reset(%struct.ip_vs_mh_state* %56)
  %58 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %59 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %58, i32 0, i32 0
  %60 = call i32 @ip_vs_mh_state_free(i32* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %28
  %63 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %64 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %65 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %64, i32 0, i32 0
  store %struct.ip_vs_mh_state* %63, %struct.ip_vs_mh_state** %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %55, %23, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ip_vs_mh_state* @kzalloc(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ip_vs_mh_state*) #1

declare dso_local i32 @generate_hash_secret(i32*, i32*) #1

declare dso_local i32 @ip_vs_mh_gcd_weight(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_mh_shift_weight(%struct.ip_vs_service*, i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

declare dso_local i32 @ip_vs_mh_reassign(%struct.ip_vs_mh_state*, %struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_mh_reset(%struct.ip_vs_mh_state*) #1

declare dso_local i32 @ip_vs_mh_state_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
