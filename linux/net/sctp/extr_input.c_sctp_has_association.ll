; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_has_association.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_has_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_has_association(%struct.net* %0, %union.sctp_addr* %1, %union.sctp_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca %struct.sctp_transport*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %7, align 8
  %9 = load %struct.net*, %struct.net** %5, align 8
  %10 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %11 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %12 = call i64 @sctp_lookup_association(%struct.net* %9, %union.sctp_addr* %10, %union.sctp_addr* %11, %struct.sctp_transport** %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %16 = call i32 @sctp_transport_put(%struct.sctp_transport* %15)
  store i32 1, i32* %4, align 4
  br label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i64 @sctp_lookup_association(%struct.net*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
