; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_assoc_ulpevent_type_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_assoc_ulpevent_type_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_event = type { i64, i64 }
%struct.sctp_association = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, %struct.sctp_ulpevent*)* }
%struct.sctp_ulpevent = type { i32 }

@SCTP_SENDER_DRY_EVENT = common dso_local global i64 0, align 8
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_event*, %struct.sctp_association*)* @sctp_assoc_ulpevent_type_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_assoc_ulpevent_type_set(%struct.sctp_event* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_event*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sctp_event* %0, %struct.sctp_event** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  %7 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %8 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %7, i32 0, i32 3
  %9 = load %struct.sctp_event*, %struct.sctp_event** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_event, %struct.sctp_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sctp_event*, %struct.sctp_event** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_event, %struct.sctp_event* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @sctp_ulpevent_type_set(i32* %8, i64 %11, i64 %14)
  %16 = load %struct.sctp_event*, %struct.sctp_event** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_event, %struct.sctp_event* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SCTP_SENDER_DRY_EVENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %2
  %22 = load %struct.sctp_event*, %struct.sctp_event** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_event, %struct.sctp_event* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 2
  %29 = call i64 @sctp_outq_is_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %33 = load i32, i32* @GFP_USER, align 4
  %34 = load i32, i32* @__GFP_NOWARN, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_sender_dry_event(%struct.sctp_association* %32, i32 %35)
  store %struct.sctp_ulpevent* %36, %struct.sctp_ulpevent** %6, align 8
  %37 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %38 = icmp ne %struct.sctp_ulpevent* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %31
  %43 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (i32*, %struct.sctp_ulpevent*)*, i32 (i32*, %struct.sctp_ulpevent*)** %47, align 8
  %49 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 0
  %51 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %52 = call i32 %48(i32* %50, %struct.sctp_ulpevent* %51)
  br label %53

53:                                               ; preds = %42, %26
  br label %54

54:                                               ; preds = %53, %21, %2
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @sctp_ulpevent_type_set(i32*, i64, i64) #1

declare dso_local i64 @sctp_outq_is_empty(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_sender_dry_event(%struct.sctp_association*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
