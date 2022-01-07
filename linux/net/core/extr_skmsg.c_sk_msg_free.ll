; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_msg_free(%struct.sock* %0, %struct.sk_msg* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_msg*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %7 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %8 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @__sk_msg_free(%struct.sock* %5, %struct.sk_msg* %6, i32 %10, i32 1)
  ret i32 %11
}

declare dso_local i32 @__sk_msg_free(%struct.sock*, %struct.sk_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
