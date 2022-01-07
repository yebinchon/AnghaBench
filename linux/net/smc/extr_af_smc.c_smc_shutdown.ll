; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.smc_sock = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SMC_ACTIVE = common dso_local global i64 0, align 8
@SMC_PEERCLOSEWAIT1 = common dso_local global i64 0, align 8
@SMC_PEERCLOSEWAIT2 = common dso_local global i64 0, align 8
@SMC_APPCLOSEWAIT1 = common dso_local global i64 0, align 8
@SMC_APPCLOSEWAIT2 = common dso_local global i64 0, align 8
@SMC_APPFINCLOSEWAIT = common dso_local global i64 0, align 8
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SMC_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @smc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.smc_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %6, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.smc_sock* @smc_sk(%struct.sock* %15)
  store %struct.smc_sock* %16, %struct.smc_sock** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 130
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 129
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %133

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = call i32 @lock_sock(%struct.sock* %25)
  %27 = load i32, i32* @ENOTCONN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMC_ACTIVE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %24
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SMC_PEERCLOSEWAIT1, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SMC_PEERCLOSEWAIT2, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.sock*, %struct.sock** %6, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SMC_APPCLOSEWAIT1, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SMC_APPCLOSEWAIT2, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SMC_APPFINCLOSEWAIT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %122

65:                                               ; preds = %58, %52, %46, %40, %34, %24
  %66 = load %struct.smc_sock*, %struct.smc_sock** %7, align 8
  %67 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  %71 = load %struct.smc_sock*, %struct.smc_sock** %7, align 8
  %72 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @kernel_sock_shutdown(%struct.TYPE_4__* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.smc_sock*, %struct.smc_sock** %7, align 8
  %77 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sock*, %struct.sock** %6, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sock*, %struct.sock** %6, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SHUTDOWN_MASK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %70
  %91 = load i64, i64* @SMC_CLOSED, align 8
  %92 = load %struct.sock*, %struct.sock** %6, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %70
  br label %122

95:                                               ; preds = %65
  %96 = load i32, i32* %5, align 4
  switch i32 %96, label %104 [
    i32 129, label %97
    i32 128, label %100
    i32 130, label %103
  ]

97:                                               ; preds = %95
  %98 = load %struct.smc_sock*, %struct.smc_sock** %7, align 8
  %99 = call i32 @smc_close_active(%struct.smc_sock* %98)
  store i32 %99, i32* %8, align 4
  br label %104

100:                                              ; preds = %95
  %101 = load %struct.smc_sock*, %struct.smc_sock** %7, align 8
  %102 = call i32 @smc_close_shutdown_write(%struct.smc_sock* %101)
  store i32 %102, i32* %8, align 4
  br label %104

103:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %95, %103, %100, %97
  %105 = load %struct.smc_sock*, %struct.smc_sock** %7, align 8
  %106 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = icmp ne %struct.TYPE_4__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.smc_sock*, %struct.smc_sock** %7, align 8
  %111 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @kernel_sock_shutdown(%struct.TYPE_4__* %112, i32 %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %94, %64
  %123 = load %struct.sock*, %struct.sock** %6, align 8
  %124 = call i32 @release_sock(%struct.sock* %123)
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  br label %131

129:                                              ; preds = %122
  %130 = load i32, i32* %9, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %22
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @kernel_sock_shutdown(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @smc_close_active(%struct.smc_sock*) #1

declare dso_local i32 @smc_close_shutdown_write(%struct.smc_sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
