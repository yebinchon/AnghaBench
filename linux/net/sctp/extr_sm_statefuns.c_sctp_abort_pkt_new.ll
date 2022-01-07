; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_abort_pkt_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_abort_pkt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i32 }
%struct.net = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_packet* (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i8*, i64)* @sctp_abort_pkt_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, %struct.sctp_chunk* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.sctp_packet*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sctp_endpoint*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sctp_packet*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %9, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %10, align 8
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %19 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net* %16, %struct.sctp_association* %17, %struct.sctp_chunk* %18)
  store %struct.sctp_packet* %19, %struct.sctp_packet** %14, align 8
  %20 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %21 = icmp ne %struct.sctp_packet* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %6
  %23 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %23, %struct.sctp_chunk* %24, i64 %25)
  store %struct.sctp_chunk* %26, %struct.sctp_chunk** %15, align 8
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %28 = icmp ne %struct.sctp_chunk* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %31 = call i32 @sctp_ootb_pkt_free(%struct.sctp_packet* %30)
  store %struct.sctp_packet* null, %struct.sctp_packet** %7, align 8
  br label %63

32:                                               ; preds = %22
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %34 = call i64 @sctp_test_T_bit(%struct.sctp_chunk* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %38 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohl(i32 %41)
  %43 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %44 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %46, i64 %47, i8* %48)
  %50 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %9, align 8
  %51 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %60 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %58, %struct.sctp_chunk* %59)
  br label %61

61:                                               ; preds = %45, %6
  %62 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  store %struct.sctp_packet* %62, %struct.sctp_packet** %7, align 8
  br label %63

63:                                               ; preds = %61, %29
  %64 = load %struct.sctp_packet*, %struct.sctp_packet** %7, align 8
  ret %struct.sctp_packet* %64
}

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net*, %struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, %struct.sctp_chunk*, i64) #1

declare dso_local i32 @sctp_ootb_pkt_free(%struct.sctp_packet*) #1

declare dso_local i64 @sctp_test_T_bit(%struct.sctp_chunk*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, i8*) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
