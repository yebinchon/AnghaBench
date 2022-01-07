; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_gains.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bbr = type { i32, i64, i8*, i8*, i32 }

@bbr_high_gain = common dso_local global i8* null, align 8
@bbr_drain_gain = common dso_local global i8* null, align 8
@BBR_UNIT = common dso_local global i8* null, align 8
@bbr_pacing_gain = common dso_local global i8** null, align 8
@bbr_cwnd_gain = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"BBR bad mode: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @bbr_update_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_update_gains(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.bbr*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.bbr* @inet_csk_ca(%struct.sock* %4)
  store %struct.bbr* %5, %struct.bbr** %3, align 8
  %6 = load %struct.bbr*, %struct.bbr** %3, align 8
  %7 = getelementptr inbounds %struct.bbr, %struct.bbr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %51 [
    i32 128, label %9
    i32 131, label %16
    i32 130, label %23
    i32 129, label %44
  ]

9:                                                ; preds = %1
  %10 = load i8*, i8** @bbr_high_gain, align 8
  %11 = load %struct.bbr*, %struct.bbr** %3, align 8
  %12 = getelementptr inbounds %struct.bbr, %struct.bbr* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @bbr_high_gain, align 8
  %14 = load %struct.bbr*, %struct.bbr** %3, align 8
  %15 = getelementptr inbounds %struct.bbr, %struct.bbr* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  br label %56

16:                                               ; preds = %1
  %17 = load i8*, i8** @bbr_drain_gain, align 8
  %18 = load %struct.bbr*, %struct.bbr** %3, align 8
  %19 = getelementptr inbounds %struct.bbr, %struct.bbr* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @bbr_high_gain, align 8
  %21 = load %struct.bbr*, %struct.bbr** %3, align 8
  %22 = getelementptr inbounds %struct.bbr, %struct.bbr* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.bbr*, %struct.bbr** %3, align 8
  %25 = getelementptr inbounds %struct.bbr, %struct.bbr* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** @BBR_UNIT, align 8
  br label %37

30:                                               ; preds = %23
  %31 = load i8**, i8*** @bbr_pacing_gain, align 8
  %32 = load %struct.bbr*, %struct.bbr** %3, align 8
  %33 = getelementptr inbounds %struct.bbr, %struct.bbr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  br label %37

37:                                               ; preds = %30, %28
  %38 = phi i8* [ %29, %28 ], [ %36, %30 ]
  %39 = load %struct.bbr*, %struct.bbr** %3, align 8
  %40 = getelementptr inbounds %struct.bbr, %struct.bbr* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @bbr_cwnd_gain, align 8
  %42 = load %struct.bbr*, %struct.bbr** %3, align 8
  %43 = getelementptr inbounds %struct.bbr, %struct.bbr* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  br label %56

44:                                               ; preds = %1
  %45 = load i8*, i8** @BBR_UNIT, align 8
  %46 = load %struct.bbr*, %struct.bbr** %3, align 8
  %47 = getelementptr inbounds %struct.bbr, %struct.bbr* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @BBR_UNIT, align 8
  %49 = load %struct.bbr*, %struct.bbr** %3, align 8
  %50 = getelementptr inbounds %struct.bbr, %struct.bbr* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %56

51:                                               ; preds = %1
  %52 = load %struct.bbr*, %struct.bbr** %3, align 8
  %53 = getelementptr inbounds %struct.bbr, %struct.bbr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %44, %37, %16, %9
  ret void
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
