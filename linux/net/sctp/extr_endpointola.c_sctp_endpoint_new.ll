; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_endpoint* @sctp_endpoint_new(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_endpoint*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_endpoint*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.sctp_endpoint* @kzalloc(i32 4, i32 %7)
  store %struct.sctp_endpoint* %8, %struct.sctp_endpoint** %6, align 8
  %9 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %10 = icmp ne %struct.sctp_endpoint* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @sctp_endpoint_init(%struct.sctp_endpoint* %13, %struct.sock* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %21 = call i32 @SCTP_DBG_OBJCNT_INC(%struct.sctp_endpoint* %20)
  %22 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  store %struct.sctp_endpoint* %22, %struct.sctp_endpoint** %3, align 8
  br label %27

23:                                               ; preds = %18
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %25 = call i32 @kfree(%struct.sctp_endpoint* %24)
  br label %26

26:                                               ; preds = %23, %11
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %3, align 8
  ret %struct.sctp_endpoint* %28
}

declare dso_local %struct.sctp_endpoint* @kzalloc(i32, i32) #1

declare dso_local i32 @sctp_endpoint_init(%struct.sctp_endpoint*, %struct.sock*, i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(%struct.sctp_endpoint*) #1

declare dso_local i32 @kfree(%struct.sctp_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
