; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_stop_strp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_stop_strp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32* }
%struct.sk_psock = type { %struct.sk_psock_parser }
%struct.sk_psock_parser = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_psock_stop_strp(%struct.sock* %0, %struct.sk_psock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_psock*, align 8
  %5 = alloca %struct.sk_psock_parser*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_psock* %1, %struct.sk_psock** %4, align 8
  %6 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %7 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %6, i32 0, i32 0
  store %struct.sk_psock_parser* %7, %struct.sk_psock_parser** %5, align 8
  %8 = load %struct.sk_psock_parser*, %struct.sk_psock_parser** %5, align 8
  %9 = getelementptr inbounds %struct.sk_psock_parser, %struct.sk_psock_parser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.sk_psock_parser*, %struct.sk_psock_parser** %5, align 8
  %15 = getelementptr inbounds %struct.sk_psock_parser, %struct.sk_psock_parser* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.sk_psock_parser*, %struct.sk_psock_parser** %5, align 8
  %20 = getelementptr inbounds %struct.sk_psock_parser, %struct.sk_psock_parser* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.sk_psock_parser*, %struct.sk_psock_parser** %5, align 8
  %22 = getelementptr inbounds %struct.sk_psock_parser, %struct.sk_psock_parser* %21, i32 0, i32 1
  %23 = call i32 @strp_stop(i32* %22)
  %24 = load %struct.sk_psock_parser*, %struct.sk_psock_parser** %5, align 8
  %25 = getelementptr inbounds %struct.sk_psock_parser, %struct.sk_psock_parser* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @strp_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
