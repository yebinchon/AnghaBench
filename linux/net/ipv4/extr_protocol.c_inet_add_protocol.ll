; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_protocol.c_inet_add_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_protocol.c_inet_add_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_protocol = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Protocol %u is not namespace aware, cannot register.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@inet_protos = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_add_protocol(%struct.net_protocol* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_protocol*, align 8
  %5 = alloca i8, align 1
  store %struct.net_protocol* %0, %struct.net_protocol** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.net_protocol*, %struct.net_protocol** %4, align 8
  %7 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i8, i8* %5, align 1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 zeroext %11)
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32*, i32** @inet_protos, align 8
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = bitcast i32* %19 to %struct.net_protocol**
  %21 = load %struct.net_protocol*, %struct.net_protocol** %4, align 8
  %22 = call i32 @cmpxchg(%struct.net_protocol** %20, i32* null, %struct.net_protocol* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 -1
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @pr_err(i8*, i8 zeroext) #1

declare dso_local i32 @cmpxchg(%struct.net_protocol**, i32*, %struct.net_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
