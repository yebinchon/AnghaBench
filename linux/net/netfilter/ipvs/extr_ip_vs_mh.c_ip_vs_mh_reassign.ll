; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_reassign.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_reassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_mh_state = type { i32* }
%struct.ip_vs_service = type { i32, i32, i32, i32 }

@IP_VS_MH_TAB_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MH: reassign lookup table of %s:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_mh_state*, %struct.ip_vs_service*)* @ip_vs_mh_reassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_mh_reassign(%struct.ip_vs_mh_state* %0, %struct.ip_vs_service* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_mh_state*, align 8
  %5 = alloca %struct.ip_vs_service*, align 8
  %6 = alloca i32, align 4
  store %struct.ip_vs_mh_state* %0, %struct.ip_vs_mh_state** %4, align 8
  store %struct.ip_vs_service* %1, %struct.ip_vs_service** %5, align 8
  %7 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %8 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %17 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %22 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kcalloc(i32 %23, i32 4, i32 %24)
  %26 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %4, align 8
  %27 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %4, align 8
  %29 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %72

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %4, align 8
  %38 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %39 = call i32 @ip_vs_mh_permutate(%struct.ip_vs_mh_state* %37, %struct.ip_vs_service* %38)
  %40 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %4, align 8
  %41 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %42 = call i32 @ip_vs_mh_populate(%struct.ip_vs_mh_state* %40, %struct.ip_vs_service* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %58

46:                                               ; preds = %36
  %47 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %48 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %51 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %50, i32 0, i32 2
  %52 = call i32 @IP_VS_DBG_ADDR(i32 %49, i32* %51)
  %53 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %54 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = call i32 @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %46, %45
  %59 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %60 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %4, align 8
  %65 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %4, align 8
  %69 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %32, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ip_vs_mh_permutate(%struct.ip_vs_mh_state*, %struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_mh_populate(%struct.ip_vs_mh_state*, %struct.ip_vs_service*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
