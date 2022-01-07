; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sackhdr = type { i32, %union.sctp_sack_variable*, i32 }
%union.sctp_sack_variable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_sackhdr*, i32)* @sctp_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_acked(%struct.sctp_sackhdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_sackhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.sctp_sack_variable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_sackhdr* %0, %struct.sctp_sackhdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_sackhdr, %struct.sctp_sackhdr* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ntohl(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @TSN_lte(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  %22 = getelementptr inbounds %struct.sctp_sackhdr, %struct.sctp_sackhdr* %21, i32 0, i32 1
  %23 = load %union.sctp_sack_variable*, %union.sctp_sack_variable** %22, align 8
  store %union.sctp_sack_variable* %23, %union.sctp_sack_variable** %7, align 8
  %24 = load %struct.sctp_sackhdr*, %struct.sctp_sackhdr** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_sackhdr, %struct.sctp_sackhdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ntohs(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %59, %20
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load %union.sctp_sack_variable*, %union.sctp_sack_variable** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %union.sctp_sack_variable, %union.sctp_sack_variable* %37, i64 %39
  %41 = bitcast %union.sctp_sack_variable* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  %45 = icmp sge i32 %36, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = load %union.sctp_sack_variable*, %union.sctp_sack_variable** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %union.sctp_sack_variable, %union.sctp_sack_variable* %48, i64 %50
  %52 = bitcast %union.sctp_sack_variable* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohs(i32 %54)
  %56 = icmp sle i32 %47, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %63

58:                                               ; preds = %46, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %31

62:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %57, %19
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @TSN_lte(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
