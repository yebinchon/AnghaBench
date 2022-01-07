; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_auth_free(%struct.sctp_endpoint* %0) #0 {
  %2 = alloca %struct.sctp_endpoint*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %2, align 8
  %3 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @kfree(i32* %5)
  %7 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %8 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kfree(i32* %9)
  %11 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %14 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %16 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @sctp_auth_destroy_hmacs(i32* %17)
  %19 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sctp_auth_destroy_hmacs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
