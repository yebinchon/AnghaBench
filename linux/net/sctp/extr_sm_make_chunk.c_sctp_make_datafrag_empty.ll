; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_datafrag_empty.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_datafrag_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_sndrcvinfo = type { i32, i32, i32 }
%struct.sctp_datahdr = type { i32, i32 }

@SCTP_UNORDERED = common dso_local global i32 0, align 4
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_datafrag_empty(%struct.sctp_association* %0, %struct.sctp_sndrcvinfo* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_sndrcvinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_datahdr, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %struct.sctp_sndrcvinfo* %1, %struct.sctp_sndrcvinfo** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = call i32 @memset(%struct.sctp_datahdr* %13, i32 0, i32 8)
  %15 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.sctp_datahdr, %struct.sctp_datahdr* %13, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %8, align 8
  %20 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = getelementptr inbounds %struct.sctp_datahdr, %struct.sctp_datahdr* %13, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %8, align 8
  %25 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SCTP_UNORDERED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %5
  %35 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.sctp_chunk* @sctp_make_data(%struct.sctp_association* %35, i32 %36, i32 %40, i32 %41)
  store %struct.sctp_chunk* %42, %struct.sctp_chunk** %12, align 8
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %44 = icmp ne %struct.sctp_chunk* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %6, align 8
  br label %57

46:                                               ; preds = %34
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %48 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %47, i32 8, %struct.sctp_datahdr* %13)
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %50 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %53 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %52, i32 0, i32 0
  %54 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %8, align 8
  %55 = call i32 @memcpy(i32* %53, %struct.sctp_sndrcvinfo* %54, i32 12)
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  store %struct.sctp_chunk* %56, %struct.sctp_chunk** %6, align 8
  br label %57

57:                                               ; preds = %46, %45
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  ret %struct.sctp_chunk* %58
}

declare dso_local i32 @memset(%struct.sctp_datahdr*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_data(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_datahdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.sctp_sndrcvinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
