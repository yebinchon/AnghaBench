; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf_set_prim.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf_set_prim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*)* }
%union.sctp_addr_param = type { i64 }
%struct.sctp_addip_param = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SCTP_PARAM_SET_PRIMARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_asconf_set_prim(%struct.sctp_association* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_af*, align 8
  %7 = alloca %union.sctp_addr_param, align 8
  %8 = alloca %struct.sctp_addip_param, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  %12 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %13 = bitcast %union.sctp_addr* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sctp_af* @sctp_get_af_specific(i32 %15)
  store %struct.sctp_af* %16, %struct.sctp_af** %6, align 8
  store i32 16, i32* %10, align 4
  %17 = load %struct.sctp_af*, %struct.sctp_af** %6, align 8
  %18 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %17, i32 0, i32 0
  %19 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*)** %18, align 8
  %20 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %21 = call i32 %19(%union.sctp_addr* %20, %union.sctp_addr_param* %7)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %3, align 8
  br label %52

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %30 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.sctp_chunk* @sctp_make_asconf(%struct.sctp_association* %29, %union.sctp_addr* %30, i32 %31)
  store %struct.sctp_chunk* %32, %struct.sctp_chunk** %9, align 8
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %34 = icmp ne %struct.sctp_chunk* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %3, align 8
  br label %52

36:                                               ; preds = %25
  %37 = load i32, i32* @SCTP_PARAM_SET_PRIMARY, align 4
  %38 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %8, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %46 = bitcast %struct.sctp_addip_param* %8 to %union.sctp_addr_param*
  %47 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %45, i32 16, %union.sctp_addr_param* %46)
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %48, i32 %49, %union.sctp_addr_param* %7)
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  store %struct.sctp_chunk* %51, %struct.sctp_chunk** %3, align 8
  br label %52

52:                                               ; preds = %36, %35, %24
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  ret %struct.sctp_chunk* %53
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_asconf(%struct.sctp_association*, %union.sctp_addr*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %union.sctp_addr_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
