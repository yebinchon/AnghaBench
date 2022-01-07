; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_make_idatafrag_empty.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_make_idatafrag_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_sndrcvinfo = type { i32, i32 }
%struct.sctp_idatahdr = type { i32 }

@SCTP_UNORDERED = common dso_local global i32 0, align 4
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, %struct.sctp_sndrcvinfo*, i32, i32, i32)* @sctp_make_idatafrag_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_make_idatafrag_empty(%struct.sctp_association* %0, %struct.sctp_sndrcvinfo* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_sndrcvinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_idatahdr, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %struct.sctp_sndrcvinfo* %1, %struct.sctp_sndrcvinfo** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = call i32 @memset(%struct.sctp_idatahdr* %13, i32 0, i32 4)
  %15 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @htons(i32 %17)
  %19 = getelementptr inbounds %struct.sctp_idatahdr, %struct.sctp_idatahdr* %13, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %8, align 8
  %21 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SCTP_UNORDERED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %5
  %31 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.sctp_chunk* @sctp_make_idata(%struct.sctp_association* %31, i32 %32, i32 %36, i32 %37)
  store %struct.sctp_chunk* %38, %struct.sctp_chunk** %12, align 8
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %40 = icmp ne %struct.sctp_chunk* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %6, align 8
  br label %53

42:                                               ; preds = %30
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %44 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %43, i32 4, %struct.sctp_idatahdr* %13)
  %45 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %46 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 0
  %50 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %8, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.sctp_sndrcvinfo* %50, i32 8)
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  store %struct.sctp_chunk* %52, %struct.sctp_chunk** %6, align 8
  br label %53

53:                                               ; preds = %42, %41
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  ret %struct.sctp_chunk* %54
}

declare dso_local i32 @memset(%struct.sctp_idatahdr*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_idata(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_idatahdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.sctp_sndrcvinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
