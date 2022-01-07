; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_grant_credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pep.c_pipe_grant_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.pep_sock = type { i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@PN_PEP_IND_FLOW_CONTROL = common dso_local global i32 0, align 4
@PEP_IND_READY = common dso_local global i32 0, align 4
@CREDITS_THR = common dso_local global i32 0, align 4
@CREDITS_MAX = common dso_local global i32 0, align 4
@PN_PEP_IND_ID_MCFC_GRANT_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @pipe_grant_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_grant_credits(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pep_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.pep_sock* @pep_sk(%struct.sock* %6)
  store %struct.pep_sock* %7, %struct.pep_sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TCP_ESTABLISHED, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.pep_sock*, %struct.pep_sock** %5, align 8
  %16 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %55 [
    i32 130, label %18
    i32 128, label %19
    i32 129, label %30
  ]

18:                                               ; preds = %2
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load i32, i32* @PN_PEP_IND_FLOW_CONTROL, align 4
  %22 = load i32, i32* @PEP_IND_READY, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pipe_snd_status(%struct.sock* %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.pep_sock*, %struct.pep_sock** %5, align 8
  %28 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %19
  br label %55

30:                                               ; preds = %2
  %31 = load %struct.pep_sock*, %struct.pep_sock** %5, align 8
  %32 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CREDITS_THR, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @CREDITS_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %55

39:                                               ; preds = %30
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = load i32, i32* @PN_PEP_IND_ID_MCFC_GRANT_CREDITS, align 4
  %42 = load i32, i32* @CREDITS_MAX, align 4
  %43 = load %struct.pep_sock*, %struct.pep_sock** %5, align 8
  %44 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pipe_snd_status(%struct.sock* %40, i32 %41, i32 %46, i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @CREDITS_MAX, align 4
  %52 = load %struct.pep_sock*, %struct.pep_sock** %5, align 8
  %53 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %39
  br label %55

55:                                               ; preds = %2, %54, %38, %29, %18
  ret void
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pipe_snd_status(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
