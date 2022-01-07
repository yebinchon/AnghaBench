; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_ism_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_ism_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.smc_clc_msg_proposal = type { i32 }
%struct.smc_init_info = type { i64, i32 }
%struct.smc_clc_msg_smcd = type { i32 }

@SMC_FIRST_CONTACT = common dso_local global i64 0, align 8
@SMC_CLC_DECL_SMCDNOTALK = common dso_local global i32 0, align 4
@SMC_CLC_DECL_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, %struct.smc_clc_msg_proposal*, %struct.smc_init_info*)* @smc_listen_ism_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_listen_ism_init(%struct.smc_sock* %0, %struct.smc_clc_msg_proposal* %1, %struct.smc_init_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_sock*, align 8
  %6 = alloca %struct.smc_clc_msg_proposal*, align 8
  %7 = alloca %struct.smc_init_info*, align 8
  %8 = alloca %struct.smc_clc_msg_smcd*, align 8
  %9 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %5, align 8
  store %struct.smc_clc_msg_proposal* %1, %struct.smc_clc_msg_proposal** %6, align 8
  store %struct.smc_init_info* %2, %struct.smc_init_info** %7, align 8
  %10 = load %struct.smc_clc_msg_proposal*, %struct.smc_clc_msg_proposal** %6, align 8
  %11 = call %struct.smc_clc_msg_smcd* @smc_get_clc_msg_smcd(%struct.smc_clc_msg_proposal* %10)
  store %struct.smc_clc_msg_smcd* %11, %struct.smc_clc_msg_smcd** %8, align 8
  %12 = load %struct.smc_clc_msg_smcd*, %struct.smc_clc_msg_smcd** %8, align 8
  %13 = getelementptr inbounds %struct.smc_clc_msg_smcd, %struct.smc_clc_msg_smcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %16 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %18 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %19 = call i32 @smc_conn_create(%struct.smc_sock* %17, %struct.smc_init_info* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %26 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %32 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %38 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @smc_ism_cantalk(i32 %30, i32 %36, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %24
  %46 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %47 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SMC_FIRST_CONTACT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %53 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i32 @smc_lgr_forget(%struct.TYPE_3__* %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %59 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %58, i32 0, i32 0
  %60 = call i32 @smc_conn_free(%struct.TYPE_4__* %59)
  %61 = load i32, i32* @SMC_CLC_DECL_SMCDNOTALK, align 4
  store i32 %61, i32* %4, align 4
  br label %84

62:                                               ; preds = %24
  %63 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %64 = call i64 @smc_buf_create(%struct.smc_sock* %63, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.smc_init_info*, %struct.smc_init_info** %7, align 8
  %68 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SMC_FIRST_CONTACT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %74 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = call i32 @smc_lgr_forget(%struct.TYPE_3__* %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %80 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %79, i32 0, i32 0
  %81 = call i32 @smc_conn_free(%struct.TYPE_4__* %80)
  %82 = load i32, i32* @SMC_CLC_DECL_MEM, align 4
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %78, %57, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.smc_clc_msg_smcd* @smc_get_clc_msg_smcd(%struct.smc_clc_msg_proposal*) #1

declare dso_local i32 @smc_conn_create(%struct.smc_sock*, %struct.smc_init_info*) #1

declare dso_local i64 @smc_ism_cantalk(i32, i32, i32) #1

declare dso_local i32 @smc_lgr_forget(%struct.TYPE_3__*) #1

declare dso_local i32 @smc_conn_free(%struct.TYPE_4__*) #1

declare dso_local i64 @smc_buf_create(%struct.smc_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
