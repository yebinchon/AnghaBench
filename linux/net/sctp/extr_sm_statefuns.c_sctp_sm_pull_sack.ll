; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sm_pull_sack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sm_pull_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sackhdr = type { i32, i32 }
%struct.sctp_chunk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_sackhdr* (%struct.sctp_chunk*)* @sctp_sm_pull_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_sackhdr* @sctp_sm_pull_sack(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %struct.sctp_sackhdr*, align 8
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_sackhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %3, align 8
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.sctp_sackhdr*
  store %struct.sctp_sackhdr* %13, %struct.sctp_sackhdr** %4, align 8
  %14 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_sackhdr, %struct.sctp_sackhdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohs(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_sackhdr, %struct.sctp_sackhdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  store i32 %21, i32* %5, align 4
  store i32 8, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %33 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ugt i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store %struct.sctp_sackhdr* null, %struct.sctp_sackhdr** %2, align 8
  br label %46

39:                                               ; preds = %1
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @skb_pull(%struct.TYPE_2__* %42, i32 %43)
  %45 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  store %struct.sctp_sackhdr* %45, %struct.sctp_sackhdr** %2, align 8
  br label %46

46:                                               ; preds = %39, %38
  %47 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %2, align 8
  ret %struct.sctp_sackhdr* %47
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
