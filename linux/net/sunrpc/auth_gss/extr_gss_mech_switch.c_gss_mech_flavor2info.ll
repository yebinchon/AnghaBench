; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_flavor2info.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_flavor2info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcsec_gss_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gss_api_mech = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_mech_flavor2info(i64 %0, %struct.rpcsec_gss_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.rpcsec_gss_info*, align 8
  %6 = alloca %struct.gss_api_mech*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.rpcsec_gss_info* %1, %struct.rpcsec_gss_info** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.gss_api_mech* @gss_mech_get_by_pseudoflavor(i64 %8)
  store %struct.gss_api_mech* %9, %struct.gss_api_mech** %6, align 8
  %10 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %11 = icmp eq %struct.gss_api_mech* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %85

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %77, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %19 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %24 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %22
  %34 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %5, align 8
  %35 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %39 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %43 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %37, i32 %41, i32 %45)
  %47 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %48 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %5, align 8
  %52 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %55 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %5, align 8
  %63 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %65 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %5, align 8
  %73 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %75 = call i32 @gss_mech_put(%struct.gss_api_mech* %74)
  store i32 0, i32* %3, align 4
  br label %85

76:                                               ; preds = %22
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %16

80:                                               ; preds = %16
  %81 = load %struct.gss_api_mech*, %struct.gss_api_mech** %6, align 8
  %82 = call i32 @gss_mech_put(%struct.gss_api_mech* %81)
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %33, %12
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.gss_api_mech* @gss_mech_get_by_pseudoflavor(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @gss_mech_put(%struct.gss_api_mech*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
