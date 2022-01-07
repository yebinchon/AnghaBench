; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_chunk_iif.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_chunk_iif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_chunk_iif(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %struct.sctp_chunk*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %2, align 8
  %4 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %4, i32 0, i32 0
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.TYPE_4__* @SCTP_INPUT_CB(%struct.sk_buff* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i32 %12(%struct.sk_buff* %13)
  ret i32 %14
}

declare dso_local %struct.TYPE_4__* @SCTP_INPUT_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
