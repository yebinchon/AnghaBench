; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_get_sdp_ssap.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_get_sdp_ssap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32, i32 }
%struct.nfc_llcp_sock = type { i64, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"WKS %d\0A\00", align 1
@LLCP_SAP_MAX = common dso_local global i32 0, align 4
@LLCP_SDP_UNBOUND = common dso_local global i32 0, align 4
@LLCP_WKS_NUM_SAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_llcp_get_sdp_ssap(%struct.nfc_llcp_local* %0, %struct.nfc_llcp_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_llcp_local*, align 8
  %5 = alloca %struct.nfc_llcp_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %4, align 8
  store %struct.nfc_llcp_sock* %1, %struct.nfc_llcp_sock** %5, align 8
  %7 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %8 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %73

14:                                               ; preds = %2
  %15 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %16 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %14
  %20 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %21 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @nfc_llcp_wks_sap(i32* %22, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %33 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %41 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @LLCP_SAP_MAX, align 4
  store i32 %43, i32* %3, align 4
  br label %112

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %47 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %50 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %112

53:                                               ; preds = %19
  %54 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %55 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %56 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %59 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32* @nfc_llcp_sock_from_sn(%struct.nfc_llcp_local* %54, i32* %57, i64 %60)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %65 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @LLCP_SAP_MAX, align 4
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %53
  %69 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %70 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* @LLCP_SDP_UNBOUND, align 4
  store i32 %72, i32* %3, align 4
  br label %112

73:                                               ; preds = %14, %2
  %74 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %75 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %73
  %79 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %80 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @LLCP_WKS_NUM_SAP, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %86 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %89 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %88, i32 0, i32 0
  %90 = call i32 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %84
  %93 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %94 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %97 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %100 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %103 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %3, align 4
  br label %112

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105, %78, %73
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %109 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* @LLCP_SAP_MAX, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %92, %68, %63, %44, %39
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfc_llcp_wks_sap(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32* @nfc_llcp_sock_from_sn(%struct.nfc_llcp_local*, i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
