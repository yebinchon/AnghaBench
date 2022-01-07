; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.sctp_association = type { i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_addiphdr = type { i32 }
%union.sctp_addr_param = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*)* }

@SCTP_CID_ASCONF = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, %union.sctp_addr*, i32)* @sctp_make_asconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_make_asconf(%struct.sctp_association* %0, %union.sctp_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_addiphdr, align 4
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.sctp_addr_param, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %19 = bitcast %union.sctp_addr* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sctp_af* @sctp_get_af_specific(i32 %21)
  store %struct.sctp_af* %22, %struct.sctp_af** %13, align 8
  %23 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %24 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %23, i32 0, i32 0
  %25 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*)** %24, align 8
  %26 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %27 = call i32 %25(%union.sctp_addr* %26, %union.sctp_addr_param* %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %63

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %36 = load i32, i32* @SCTP_CID_ASCONF, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %35, i32 %36, i32 0, i32 %37, i32 %38)
  store %struct.sctp_chunk* %39, %struct.sctp_chunk** %9, align 8
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %41 = icmp ne %struct.sctp_chunk* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %63

43:                                               ; preds = %31
  %44 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = call i32 @htonl(i32 %46)
  %49 = getelementptr inbounds %struct.sctp_addiphdr, %struct.sctp_addiphdr* %8, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %51 = bitcast %struct.sctp_addiphdr* %8 to %union.sctp_addr_param*
  %52 = call i8* @sctp_addto_chunk(%struct.sctp_chunk* %50, i32 4, %union.sctp_addr_param* %51)
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i8* @sctp_addto_chunk(%struct.sctp_chunk* %56, i32 %57, %union.sctp_addr_param* %11)
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  store %struct.sctp_chunk* %62, %struct.sctp_chunk** %4, align 8
  br label %63

63:                                               ; preds = %43, %42, %30
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %64
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @sctp_addto_chunk(%struct.sctp_chunk*, i32, %union.sctp_addr_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
