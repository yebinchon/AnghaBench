; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_is_any.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_is_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i16 }
%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16 }
%struct.sctp_af = type { i32 (%union.sctp_addr*)* }

@AF_UNSPEC = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_is_any(%struct.sock* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.sctp_af*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store i16 0, i16* %6, align 2
  %8 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %9 = bitcast %union.sctp_addr* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @AF_UNSPEC, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %18 = bitcast %union.sctp_addr* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 2
  store i16 %20, i16* %6, align 2
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %6, align 2
  br label %28

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i16, i16* %6, align 2
  %31 = call %struct.sctp_af* @sctp_get_af_specific(i16 zeroext %30)
  store %struct.sctp_af* %31, %struct.sctp_af** %7, align 8
  %32 = load %struct.sctp_af*, %struct.sctp_af** %7, align 8
  %33 = icmp ne %struct.sctp_af* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %41

35:                                               ; preds = %29
  %36 = load %struct.sctp_af*, %struct.sctp_af** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %36, i32 0, i32 0
  %38 = load i32 (%union.sctp_addr*)*, i32 (%union.sctp_addr*)** %37, align 8
  %39 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %40 = call i32 %38(%union.sctp_addr* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
