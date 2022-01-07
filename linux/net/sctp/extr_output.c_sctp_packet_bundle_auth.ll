; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_bundle_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_bundle_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sctp_association* }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@SCTP_XMIT_OK = common dso_local global i32 0, align 4
@SCTP_CID_AUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_packet*, %struct.sctp_chunk*)* @sctp_packet_bundle_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_packet_bundle_auth(%struct.sctp_packet* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_packet*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_packet* %0, %struct.sctp_packet** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  %9 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  store %struct.sctp_association* %13, %struct.sctp_association** %6, align 8
  %14 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %16 = icmp ne %struct.sctp_association* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCTP_CID_AUTH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %29 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %19
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %27
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %74

41:                                               ; preds = %34
  %42 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.sctp_chunk* @sctp_make_auth(%struct.sctp_association* %42, i32 %47)
  store %struct.sctp_chunk* %48, %struct.sctp_chunk** %8, align 8
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %50 = icmp ne %struct.sctp_chunk* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %41
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %58 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %57, i32 0, i32 0
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %58, align 8
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @sctp_auth_shkey_hold(%struct.TYPE_6__* %61)
  %63 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %65 = call i32 @__sctp_packet_append_chunk(%struct.sctp_packet* %63, %struct.sctp_chunk* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SCTP_XMIT_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %71 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %70)
  br label %72

72:                                               ; preds = %69, %53
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %51, %39, %32, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.sctp_chunk* @sctp_make_auth(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_auth_shkey_hold(%struct.TYPE_6__*) #1

declare dso_local i32 @__sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
